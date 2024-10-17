// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;
    string private svg = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text x='10' y='20'>Hello, World!</text></svg>";
    string private svgBase64;
    string private svgBase64v502 = "PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZpZXdCb3g9JzAgMCAxMDAgMTAwJz48dGV4dCB4PScxMCcgeT0nMjAnPkhlbGxvLCBXb3JsZCE8L3RleHQ+PC9zdmc+";
    string private svgBase64v510 = "PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZpZXdCb3g9JzAgMCAxMDAgMTAwJz48dGV4dCB4PScxMCcgeT0nMjAnPkhlbGxvLCBXb3JsZCE8L3RleHQ+PC9zdmc+";
    string private svgBase64v490 = "PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZpZXdCb3g9JzAgMCAxMDAgMTAwJz48dGV4dCB4PScxMCcgeT0nMjAnPkhlbGxvLCBXb3JsZCE8L3RleHQ+PC9zdmc+";
    string private svgBase64v480 = "PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZpZXdCb3g9JzAgMCAxMDAgMTAwJz48dGV4dCB4PScxMCcgeT0nMjAnPkhlbGxvLCBXb3JsZCE8L3RleHQ+PC9zdmc+";
    string private svgBase64v450 = "PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZpZXdCb3g9JzAgMCAxMDAgMTAwJz48dGV4dCB4PScxMCcgeT0nMjAnPkhlbGxvLCBXb3JsZCE8L3RleHQ+PC9zdmc+";
    
    function setUp() public {
        counter = new Counter();
    }

    function testBase64() public {
        svgBase64 = counter.convertSVGToBase64(svg);
        console.log(svgBase64);
    }
}
