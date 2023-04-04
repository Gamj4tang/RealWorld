// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.4.1
///
/// @notice           This contract was decompiled using the heimdall-rs decompiler.
///                     It was generated directly by tracing the EVM opcodes from this contract.
///                     As a result, it may not compile or even be valid solidity code.
///                     Despite this, it should be obvious what each function does. Overall
///                     logic should have been preserved throughout decompiling.
///
/// @custom:github    You can find the open-source decompiler here:
///                       https://github.com/Jon-Becker/heimdall-rs

contract DecompiledContract {
    
    /// @custom:selector    0x10d1e85c
    /// @custom:name        uniswapV2Call
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function uniswapV2Call(address arg0, uint256 arg1, uint256 arg2, bytes memory arg3) public {
        if (!(msg.data.length - 0x04) < 0x80) {
            if (arg3 > 0x0100000000) { revert(); } else {
                if (!(0x04 + arg3 + 0x20) > (0x04 + (msg.data.length - 0x04))) {
                    if (!(arg3 > 0x0100000000) | (0x20 + (0x04 + arg3) + (arg3 * 0x01) > (0x04 + (msg.data.length - 0x04)))) {
                        if (!(arg3) == 0x01) {
                            var_a = 0x45d01e4a00000000000000000000000000000000000000000000000000000000;
                            if (!address(0x1c47343ea7135c2ba3b2d24202ad960adafaa81c).code.length) { revert(); } else {
                                (bool success, bytes memory ret0) = address(0x1c47343ea7135c2ba3b2d24202ad960adafaa81c).staticcall(var_a);
                                if (!ret0) { revert(); } else {
                                    if (!ret0.length < 0x20) {
                                        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                        var_b = 0x1c47343ea7135c2ba3b2d24202ad960adafaa81c;
                                        if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                            (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a);
                                            if (!ret0) { revert(); } else {
                                                if (!ret0.length < 0x20) {
                                                    var_a = 0x77c7b8fc00000000000000000000000000000000000000000000000000000000;
                                                    if (!address(0x83f798e925bcd4017eb265844fddabb448f1707d).code.length) { revert(); } else {
                                                        (bool success, bytes memory ret0) = address(0x83f798e925bcd4017eb265844fddabb448f1707d).staticcall(var_a);
                                                        if (!ret0) { revert(); } else {
                                                            if (!ret0.length < 0x20) {
                                                                var_a = 0x065a80d800000000000000000000000000000000000000000000000000000000;
                                                                var_b = 0x02;
                                                                if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                    (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).staticcall(var_a);
                                                                    if (!ret0) { revert(); } else {
                                                                        if (!ret0.length < 0x20) {
                                                                            if (0x0de0b6b3a7640000) {
                                                                                if (0x03e8) {
                                                                                    var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                    address var_b = this;
                                                                                    if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                                                                        (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a);
                                                                                        if (!ret0) { revert(); } else {
                                                                                            if (!ret0.length < 0x20) {
                                                                                                var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                var_b = 0x01;
                                                                                                var_c = 0x02;
                                                                                                var_d = (((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8;
                                                                                                var_f = 0;
                                                                                                if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                    (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a);
                                                                                                    if (!ret0) { revert(); } else {
                                                                                                        if (0x03e8) {
                                                                                                            var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                            address var_b = this;
                                                                                                            if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                                                                                                (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a);
                                                                                                                if (!ret0) { revert(); } else {
                                                                                                                    if (!ret0.length < 0x20) {
                                                                                                                        var_a = 0xb6b55f2500000000000000000000000000000000000000000000000000000000;
                                                                                                                        var_b = var_e.length - ((0x03e9 * ((((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8)) / 0x03e8);
                                                                                                                        if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                            (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).call{ value: 0 }(var_a);
                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                                                var_b = var_c;
                                                                                                                                var_c = 0x01;
                                                                                                                                address var_d = (0x03e9 * ((((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_b]) / 0x03e8)) / 0x03e8;
                                                                                                                                var_f = 0;
                                                                                                                                if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                                                    (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a);
                                                                                                                                    if (!ret0) { revert(); } else {
                                                                                                                                        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                        address var_b = this;
                                                                                                                                        if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                            (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).staticcall(var_a);
                                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                                if (!ret0.length < 0x20) {
                                                                                                                                                    var_a = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                                                                                                                                                    var_b = var_e.length;
                                                                                                                                                    if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                        (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).call{ value: 0 }(var_a);
                                                                                                                                                        if (!ret0) { revert(); } else {
                                                                                                                                                            var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            var_b = var_c;
                                                                                                                                                            var_c = 0x02;
                                                                                                                                                            var_d = (((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8;
                                                                                                                                                            var_f = 0;
                                                                                                                                                            if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                                                                                (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a);
                                                                                                                                                                if (!ret0) { revert(); } else {
                                                                                                                                                                    if (0x03e8) {
                                                                                                                                                                        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                        address var_b = this;
                                                                                                                                                                        if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                                                                                                                                                            (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a);
                                                                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                                                                if (!ret0.length < 0x20) {
                                                                                                                                                                                    var_a = 0xb6b55f2500000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                    var_b = var_e.length - ((0x03e9 * ((((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8)) / 0x03e8);
                                                                                                                                                                                    if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                                                        (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).call{ value: 0 }(var_a);
                                                                                                                                                                                        if (!ret0) { revert(); } else {
                                                                                                                                                                                            var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                            var_b = var_c;
                                                                                                                                                                                            var_c = 0x01;
                                                                                                                                                                                            var_d = (0x03e9 * ((((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_b]) / 0x03e8)) / 0x03e8;
                                                                                                                                                                                            var_f = 0;
                                                                                                                                                                                            if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                                                                                                                (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a);
                                                                                                                                                                                                if (!ret0) { revert(); } else {
                                                                                                                                                                                                    var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                    address var_b = this;
                                                                                                                                                                                                    if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                                                                        (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).staticcall(var_a);
                                                                                                                                                                                                        if (!ret0) { revert(); } else {
                                                                                                                                                                                                            if (!ret0.length < 0x20) {
                                                                                                                                                                                                                var_a = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                var_b = var_e.length;
                                                                                                                                                                                                                if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                                                                                    (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).call{ value: 0 }(var_a);
                                                                                                                                                                                                                    if (!ret0) { revert(); } else {
                                                                                                                                                                                                                        var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                        var_b = var_c;
                                                                                                                                                                                                                        var_c = 0x02;
                                                                                                                                                                                                                        var_d = (((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8;
                                                                                                                                                                                                                        var_f = 0;
                                                                                                                                                                                                                        if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                                                                                                                                            (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a);
                                                                                                                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                if (0x03e8) {
                                                                                                                                                                                                                                    var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                    address var_b = this;
                                                                                                                                                                                                                                    if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                                                                                                                                                                                                                        (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a);
                                                                                                                                                                                                                                        if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                            if (!ret0.length < 0x20) {
                                                                                                                                                                                                                                                var_a = 0xb6b55f2500000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                var_b = var_e.length - ((0x03e9 * ((((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8)) / 0x03e8);
                                                                                                                                                                                                                                                if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                                                                                                                    (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).call{ value: 0 }(var_a);
                                                                                                                                                                                                                                                    if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                                        var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                        var_b = var_c;
                                                                                                                                                                                                                                                        var_c = 0x01;
                                                                                                                                                                                                                                                        var_d = (0x03e9 * ((((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_b]) / 0x03e8)) / 0x03e8;
                                                                                                                                                                                                                                                        var_f = 0;
                                                                                                                                                                                                                                                        if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                                                                                                                                                                            (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a);
                                                                                                                                                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                                                var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                                address var_b = this;
                                                                                                                                                                                                                                                                if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                                                                                                                                    (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).staticcall(var_a);
                                                                                                                                                                                                                                                                    if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                                                        if (!ret0.length < 0x20) {
                                                                                                                                                                                                                                                                            var_a = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                                            var_b = var_e.length;
                                                                                                                                                                                                                                                                            if (!address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).code.length) { revert(); } else {
                                                                                                                                                                                                                                                                                (bool success, bytes memory ret0) = address(0x053c80ea73dc6941f518a68e2fc52ac45bde7c9c).call{ value: 0 }(var_a);
                                                                                                                                                                                                                                                                                if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                                                                    var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                                                    address var_b = this;
                                                                                                                                                                                                                                                                                    if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                                                                                                                                                                                                                                                                        (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a);
                                                                                                                                                                                                                                                                                        if (!ret0) { revert(); } else {
                                                                                                                                                                                                                                                                                            if (!ret0.length < 0x20) {
                                                                                                                                                                                                                                                                                                if (var_e.length > (var_e.length + 0x26885c05fc)) {
                                                                                                                                                                                                                                                                                                    var_c = 0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852;
                                                                                                                                                                                                                                                                                                    var_d = 0x2da0109925fc;
                                                                                                                                                                                                                                                                                                    var_a = 0x44 + (var_e - var_e);
                                                                                                                                                                                                                                                                                                    var_e = var_e + 0x64;
                                                                                                                                                                                                                                                                                                    var_e = 0x40 + var_e;
                                                                                                                                                                                                                                                                                                    var_f = 0x20;
                                                                                                                                                                                                                                                                                                    var_h = 0x5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564;
                                                                                                                                                                                                                                                                                                    if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert("Address: call to non-contract"); } else {
                                                                                                                                                                                                                                                                                                        var_i = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                                                                        var_j = var_f;
                                                                                                                                                                                                                                                                                                        var_l = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
                                                                                                                                                                                                                                                                                                        if (var_e.length < var_f) {
                                                                                                                                                                                                                                                                                                            var_i = (var_m[0x40] & (~((0x0100 ** (var_f - var_e.length)) - 0x01))) | (var_e.length & ((0x0100 ** (var_f - var_e.length)) - 0x01));
                                                                                                                                                                                                                                                                                                            (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).call{ value: 0 }(var_m[0x40] & (~((0x0100 ** (var_f - var_e.length)) - 0x01)) | (var_e.length & ((0x0100 ** (var_f - var_e.length)) - 0x01)));
                                                                                                                                                                                                                                                                                                            if (ret0.length == 0) {
                                                                                                                                                                                                                                                                                                                var_e = var_e + (uint248(ret0.length + 0x3f));
                                                                                                                                                                                                                                                                                                                var_i = ret0.length;
                                                                                                                                                                                                                                                                                                                if (!ret0) {
                                                                                                                                                                                                                                                                                                                    if (var_e.length) { revert(); } else {
                                                                                                                                                                                                                                                                                                                        var_n = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                                                                                        var_l = var_e.length;
                                                                                                                                                                                                                                                                                                                        if (!var_l) {
                                                                                                                                                                                                                                                                                                                            if (!var_l) { revert("                                "); } else {
                                                                                                                                                                                                                                                                                                                                var_o = (~((0x0100 ** (var_f - (bytes1(var_l)))) - 0x01)) & (var_p[(0x44]);
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                            if (!var_f < var_l) {
                                                                                                                                                                                                                                                                                                                                var_o = var_s[(0x40];
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                    if (!var_l) {
                                                                                                                                                                                                                                                                                                                        if (!var_l < var_f) {
                                                                                                                                                                                                                                                                                                                            if (!var_m[0x40]) { revert(); } else {
                                                                                                                                                                                                                                                                                                                                var_n = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                                                                                                                                var_l = 0x2a;
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            var_i = var_m[0x40];
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                    var_a = var_n;
                                                                                                                                                                                                                                                                                                    var_b = var_f;
                                                                                                                                                                                                                                                                                                    var_c = 0x0f;
                                                                                                                                                                                                                                                                                                    var_d = 0x444546454e534520454e41424c45440000000000000000000000000000000000;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (!(arg3) == 0x02) {
                                var_a = 0x022c0d9f00000000000000000000000000000000000000000000000000000000;
                                var_b = 0x2d79883d2000;
                                var_c = 0;
                                address var_d = this;
                                var_f = 0x80;
                                var_h = 0x03;
                                var_i = 0x3333330000000000000000000000000000000000000000000000000000000000;
                                if (!address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).code.length) { revert(); } else {
                                    (bool success, bytes memory ret0) = address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).call{ value: 0 }(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_j])));
                                    if (!ret0) { revert(); } else {
                                        var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                        var_b = var_d;
                                        if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert(); } else {
                                            (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).staticcall(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_j])));
                                            if (!ret0) { revert(); } else {
                                                if (!ret0.length < var_j) {
                                                    if (!var_e.length < ((0x2713 * storage[0]) / 0x26f2)) {
                                                        var_c = 0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852;
                                                        var_d = var_e.length;
                                                        var_a = 0x44 + (var_e - var_e);
                                                        var_e = var_e + 0x64;
                                                        var_e = 0x40 + var_e;
                                                        var_f = var_j;
                                                        var_h = 0x5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564;
                                                        if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert("Address: call to non-contract"); } else {
                                                            var_i = var_n;
                                                            var_l = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
                                                            if (var_d < var_f) {
                                                                address var_i = (var_m[0x40] & (~((0x0100 ** (var_f - var_d)) - 0x01))) | (var_d & ((0x0100 ** (var_f - var_d)) - 0x01));
                                                                (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).call{ value: 0 }(var_m[0x40] & (~((0x0100 ** (var_f - var_d)) - 0x01)) | (var_d & ((0x0100 ** (var_f - var_d)) - 0x01)) + var_n);
                                                                if (ret0.length == 0) {
                                                                    var_e = var_e + (uint248(ret0.length + 0x3f));
                                                                    var_i = ret0.length;
                                                                    if (!ret0) {
                                                                        if (var_d) { revert(); } else {
                                                                            var_n = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                            address var_l = var_d;
                                                                            if (!var_d) {
                                                                                if (!var_d) { revert("                                "); } else {
                                                                                    address var_o = (~((0x0100 ** (var_f - (bytes1(var_d)))) - 0x01)) & (var_p[(0x44]);
                                                                                }
                                                                                if (!var_f < var_d) {
                                                                                    var_o = var_s[(0x40];
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!var_d) {
                                                                            if (!var_d < var_f) {
                                                                                if (var_m[0x40]) {
                                                                                    if (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) {
                                                                                        if (0x03e5) {
                                                                                            var_n = 0x0902f1ac00000000000000000000000000000000000000000000000000000000;
                                                                                            if (!address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).code.length) { revert(); } else {
                                                                                                (bool success, bytes memory ret0) = address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).staticcall(var_n);
                                                                                                if (!ret0) { revert(); } else {
                                                                                                    if (!var_i < 0x60) {
                                                                                                        if (!(0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5)) > 0) { revert("                                            "); } else {
                                                                                                            var_n = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                            var_l = 0x2c;
                                                                                                            if (!(uint112(var_d)) > 0) {
                                                                                                                if (uint112(var_e[var_f]) > 0) {
                                                                                                                    if (uint112(var_d)) {
                                                                                                                        if (uint112(var_d)) {
                                                                                                                            if (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d)) / (uint112(var_d)) == (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5))) {
                                                                                                                                if (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d))) {
                                                                                                                                    if (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d))) {
                                                                                                                                        if ((0x03e8 * (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d)))) / (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d))) == 0x03e8) {
                                                                                                                                            var_e = 0x40 + var_e;
                                                                                                                                            var_n = 0x1e;
                                                                                                                                            var_t = 0x536166654d6174683a207375627472616374696f6e206f766572666c6f770000;
                                                                                                                                            if (!(0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5)) > (uint112(var_e[var_f]))) {
                                                                                                                                                if (uint112(var_e[var_f]) - (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5))) {
                                                                                                                                                    if (0) {
                                                                                                                                                        if (0x01 + ((0x03e8 * (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d)))) / 0) < ((0x03e8 * (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d)))) / 0)) { revert("SafeMath: addition overflow"); } else {
                                                                                                                                                            var_u = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            var_o = 0x1b;
                                                                                                                                                            var_u = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                                                                                                                                            var_o = 0x01 + ((0x03e8 * (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5) * (uint112(var_d)))) / 0);
                                                                                                                                                            if (!address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert(); } else {
                                                                                                                                                                (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).call{ value: 0 }(var_u);
                                                                                                                                                                if (!ret0) { revert(); } else {
                                                                                                                                                                    if (!var_i < var_f) {
                                                                                                                                                                        var_u = 0x022c0d9f00000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                        var_o = 0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5);
                                                                                                                                                                        var_w = 0x80;
                                                                                                                                                                        var_x = 0;
                                                                                                                                                                        if (!address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).code.length) { revert(); } else {
                                                                                                                                                                            (bool success, bytes memory ret0) = address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).call{ value: 0 }(var_u);
                                                                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                                                                if (!var_d < ((0x2713 * storage[0]) / 0x26f2)) {
                                                                                                                                                                                    var_o = var_c;
                                                                                                                                                                                    var_e = var_e + 0x64;
                                                                                                                                                                                    var_e = 0x40 + var_e;
                                                                                                                                                                                    var_w = var_f;
                                                                                                                                                                                    var_x = var_h;
                                                                                                                                                                                    if (!address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).code.length) { revert("Address: call to non-contract"); } else {
                                                                                                                                                                                        var_z = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                        var_ac = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
                                                                                                                                                                                        if (var_d < var_f) {
                                                                                                                                                                                            address var_z = (var_m[0x40] & (~((0x0100 ** (var_f - var_d)) - 0x01))) | (var_d & ((0x0100 ** (var_f - var_d)) - 0x01));
                                                                                                                                                                                            (bool success, bytes memory ret0) = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call{ value: 0 }(var_m[0x40] & (~((0x0100 ** (var_f - var_d)) - 0x01)) | (var_d & ((0x0100 ** (var_f - var_d)) - 0x01)));
                                                                                                                                                                                            if (var_i == 0) {
                                                                                                                                                                                                address var_e = var_e + (uint248(var_i + 0x3f));
                                                                                                                                                                                                var_z = var_i;
                                                                                                                                                                                                if (!ret0) {
                                                                                                                                                                                                    if (var_d) { revert(); } else {
                                                                                                                                                                                                        var_ad = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                        address var_ac = var_d;
                                                                                                                                                                                                        if (!var_ac) {
                                                                                                                                                                                                            if (!var_ac) { revert("                                "); } else {
                                                                                                                                                                                                                address var_ae = (~((0x0100 ** (var_f - (bytes1(var_ac)))) - 0x01)) & (var_p[(0x44]);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            var_af = var_r[(0x40];
                                                                                                                                                                                                            if (!var_f < var_ac) {
                                                                                                                                                                                                                var_ae = var_s[(0x40];
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                    if (!var_ac) {
                                                                                                                                                                                                        if (!var_ac < var_f) {
                                                                                                                                                                                                            if (!var_m[0x40]) { revert(); } else {
                                                                                                                                                                                                                var_ad = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                                                                                                                                                var_ac = 0x2a;
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                            var_z = var_m[0x40];
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    if (uint112(var_e[var_f]) - (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5))) {
                                                                                                                                                        if (!((0x03e5 * (uint112(var_e[var_f]) - (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5)))) / (uint112(var_e[var_f]) - (0x01158e460913d00000 + ((0x03e9 * (storage[0x03] * (storage[0] - ((var_d * 0x03e5) / 0x03e8)))) / (storage[0x04] + ((var_d * 0x03e5) / 0x03e8) - storage[0]) / 0x03e5)))) == 0x03e5) { revert("                                 "); } else {
                                                                                                                                                            var_o = 0x21;
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                var_o = var_d;
                                                                                                                                                if (!0 < var_d) {
                                                                                                                                                    if (!var_d) { revert(); } else {
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            var_n = var_ad;
                                                                                                                                            var_l = 0x21;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    var_e = 0x40 + var_e;
                                                                                                                                    var_n = 0x1e;
                                                                                                                                    var_t = 0x536166654d6174683a207375627472616374696f6e206f766572666c6f770000;
                                                                                                                                }
                                                                                                                                var_n = var_ad;
                                                                                                                                var_l = 0x21;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    var_n = var_ad;
                                                                                                                    var_l = 0x28;
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    var_n = var_ad;
                                                                                    var_l = var_ac;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        var_c = 0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852;
                                                        var_d = (0x2713 * storage[0]) / 0x26f2;
                                                        address var_a = 0x44 + (var_e - var_e);
                                                        var_e = var_e + 0x64;
                                                        var_e = 0x40 + var_e;
                                                        var_f = var_w;
                                                        if (!address(0xdac17f958d2ee523a2206206994597c13d831ec7).code.length) { revert("Address: call to non-contract"); } else {
                                                            var_l = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
                                                            if (var_o < var_f) {
                                                                (bool success, bytes memory ret0) = address(0xdac17f958d2ee523a2206206994597c13d831ec7).call{ value: 0 }(var_z & (~((0x0100 ** (var_f - var_o)) - 0x01)) | (var_o & ((0x0100 ** (var_f - var_o)) - 0x01)) + var_n + var_t);
                                                                if (ret0.length == 0) {
                                                                    var_e = var_e + (uint248(ret0.length + 0x3f));
                                                                    if (!ret0) {
                                                                        if (var_o) { revert(); } else {
                                                                            address var_n = var_ad;
                                                                            var_l = var_o;
                                                                            if (!var_o) {
                                                                                if (!var_o) { revert("                                "); } else {
                                                                                }
                                                                                if (!var_f < var_l) {
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!var_l) {
                                                                            if (!var_l < var_f) {
                                                                                if (var_z) {
                                                                                    var_n = 0x0902f1ac00000000000000000000000000000000000000000000000000000000;
                                                                                    if (address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).code.length) { revert(); } else {
                                                                                        (bool success, bytes memory ret0) = address(0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc).staticcall(var_n);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (!(arg3) == 0x03) {
                                    var_a = 0x45d01e4a00000000000000000000000000000000000000000000000000000000;
                                    if (!address(0xd55ada00494d96ce1029c201425249f9dfd216cc).code.length) { revert(); } else {
                                        (bool success, bytes memory ret0) = address(0xd55ada00494d96ce1029c201425249f9dfd216cc).staticcall(var_a);
                                        if (!ret0) { revert(); } else {
                                            if (!ret0.length < var_f) {
                                                var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                var_b = 0xd55ada00494d96ce1029c201425249f9dfd216cc;
                                                if (!address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert(); } else {
                                                    (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).staticcall(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_f])));
                                                    if (!ret0) { revert(); } else {
                                                        if (!ret0.length < var_f) {
                                                            var_a = 0x77c7b8fc00000000000000000000000000000000000000000000000000000000;
                                                            if (!address(0xd6ad7a6750a7593e092a9b218d66c0a814a3436e).code.length) { revert(); } else {
                                                                (bool success, bytes memory ret0) = address(0xd6ad7a6750a7593e092a9b218d66c0a814a3436e).staticcall(var_a);
                                                                if (!ret0) { revert(); } else {
                                                                    if (!ret0.length < var_f) {
                                                                        var_a = 0x065a80d800000000000000000000000000000000000000000000000000000000;
                                                                        var_b = 0x01;
                                                                        if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                            (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).staticcall(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_f])));
                                                                            if (!ret0) { revert(); } else {
                                                                                if (!ret0.length < var_f) {
                                                                                    if (0x0de0b6b3a7640000) {
                                                                                        if (0x03e8) {
                                                                                            var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                            address var_b = this;
                                                                                            if (!address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert(); } else {
                                                                                                (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).staticcall(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_f])));
                                                                                                if (!ret0) { revert(); } else {
                                                                                                    if (!ret0.length < var_f) {
                                                                                                        var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                        var_b = 0x02;
                                                                                                        var_c = 0x01;
                                                                                                        var_d = (((var_e.length * var_e.length) / 0x0de0b6b3a7640000) + var_e.length - var_e.length * storage[var_c]) / 0x03e8;
                                                                                                        if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                            (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_w])));
                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                if (0x03e8) {
                                                                                                                    var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                    address var_b = this;
                                                                                                                    if (!address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert(); } else {
                                                                                                                        (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).staticcall(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_w])));
                                                                                                                        if (!ret0) { revert(); } else {
                                                                                                                            if (!ret0.length < var_w) {
                                                                                                                                var_a = 0xb6b55f2500000000000000000000000000000000000000000000000000000000;
                                                                                                                                var_b = var_e.length - ((0x03e9 * (var_d)) / 0x03e8);
                                                                                                                                if (!address(0xf0358e8c3cd5fa238a29301d0bea3d63a17bedbe).code.length) { revert(); } else {
                                                                                                                                    (bool success, bytes memory ret0) = address(0xf0358e8c3cd5fa238a29301d0bea3d63a17bedbe).call{ value: 0 }(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_w])));
                                                                                                                                    if (!ret0) { revert(); } else {
                                                                                                                                        var_a = 0xa6417ed600000000000000000000000000000000000000000000000000000000;
                                                                                                                                        var_b = var_c;
                                                                                                                                        if (!address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).code.length) { revert(); } else {
                                                                                                                                            (bool success, bytes memory ret0) = address(0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51).call{ value: 0 }(var_a + 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_e[var_w])));
                                                                                                                                            if (!ret0) { revert(); } else {
                                                                                                                                                var_a = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                                                                                                                                if (address(0xf0358e8c3cd5fa238a29301d0bea3d63a17bedbe).code.length) { revert(); } else {
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x1dd19cb4
    /// @custom:name        skim
    function skim() public {
        if (msg.sender == (address(storage[0x05]))) {
            address var_a = storage[0x06];
            var_c = 0x44 + (var_d - var_d);
            var_d = var_d + 0x64;
            var_e = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | (uint224(var_d[0x20]));
            var_d = 0x40 + var_d;
            var_f = 0x20;
            var_g = 0x5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564;
            if (!address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert("Address: call to non-contract"); } else {
                var_i = var_f;
                var_j = 0x1d;
                var_k = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
                if (var_d.length < var_f) {
                    (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).call{ value: 0 }(var_l[0x40] & (~((0x0100 ** (var_f - var_d.length)) - 0x01)) | (var_d.length & ((0x0100 ** (var_f - var_d.length)) - 0x01)));
                    if (ret0.length == 0) {
                        var_d = var_d + (uint248(ret0.length + 0x3f));
                        if (!ret0) {
                            if (var_d.length) { revert(); } else {
                                var_j = var_f;
                                var_k = var_d.length;
                                if (!var_k) {
                                    if (!var_k) { revert("                                "); } else {
                                    }
                                    if (!var_j < var_k) {
                                    }
                                }
                            }
                            if (!var_k) {
                                if (!var_k < var_j) {
                                    if (!var_l[0x40]) { revert("Ownable: caller is not the owner"); } else {
                                        var_d = var_d + 0x64;
                                        var_d = 0x40 + var_d;
                                    }
                                }
                                var_d = var_d + 0x64;
                                var_d = 0x40 + var_d;
                            }
                        }
                    }
                }
            }
            var_u = var_i;
        }
    }
    
    /// @custom:selector    0xe1c7392a
    /// @custom:name        init
    function init() public {
        if (msg.sender == (address(storage[0x05]))) {
            if (!0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                if (!0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                    var_b = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                    var_c = 0x44 + (var_d - var_d);
                    var_d = var_d + 0x64;
                    var_e = 0x095ea7b300000000000000000000000000000000000000000000000000000000 | (uint224(var_d[0x20]));
                    var_d = 0x40 + var_d;
                    var_f = 0x20;
                    var_g = 0x5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564;
                    if (!address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert("Address: call to non-contract"); } else {
                        var_i = var_f;
                        var_k = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
                        if (var_d.length < var_f) {
                            (bool success, bytes memory ret0) = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).call{ value: 0 }(var_l[0x40] & (~((0x0100 ** (var_f - var_d.length)) - 0x01)) | (var_d.length & ((0x0100 ** (var_f - var_d.length)) - 0x01)));
                            if (ret0.length == 0) {
                                var_d = var_d + (uint248(ret0.length + 0x3f));
                                if (!ret0) {
                                    if (var_d.length) { revert(); } else {
                                        var_m = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                        var_k = var_d.length;
                                        if (!var_k) {
                                            if (!var_k) { revert("                                "); } else {
                                            }
                                            if (!var_i < var_k) {
                                            }
                                        }
                                    }
                                    if (!var_k) {
                                        if (!var_k < var_i) {
                                            if (var_l[0x40]) {
                                                if (!var_b) {
                                                    if (!var_b) {
                                                        var_m = var_c;
                                                        var_d = var_d + 0x64;
                                                        var_d = 0x40 + var_d;
                                                        if (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert("                                                      "); } else {
                                                            var_u = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                        }
                                                        var_m = var_u;
                                                    }
                                                    var_m = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                                                    if (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert("                                                      "); } else {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    var_c = var_u;
                }
                var_c = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
                if (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).code.length) { revert("Ownable: caller is not the owner"); } else {
                }
            }
        }
    }
}