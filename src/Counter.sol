// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract Counter {
    function convertSVGToBase64(string memory svg) external pure returns (string memory) {
        return Base64.encode(bytes(svg));
    }
}
