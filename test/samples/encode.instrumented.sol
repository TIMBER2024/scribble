/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.8.7;

contract Foo {
    event AssertionFailed(string message);

    function foo(uint v) public {
        _original_Foo_foo(v);
        unchecked {
            if (!(abi.encode(v).length > 0)) {
                emit AssertionFailed("0: ");
                assert(false);
            }
        }
    }

    function _original_Foo_foo(uint v) private {}

    function foo1(uint v) public {
        _original_Foo_foo1(v);
        unchecked {
            if (!(abi.encodePacked(v).length > 0)) {
                emit AssertionFailed("1: ");
                assert(false);
            }
        }
    }

    function _original_Foo_foo1(uint v) private {}

    function foo2(uint v) public {
        _original_Foo_foo2(v);
        unchecked {
            if (!(abi.encodeWithSelector(bytes4(hex"01020304"), v).length > 0)) {
                emit AssertionFailed("2: ");
                assert(false);
            }
        }
    }

    function _original_Foo_foo2(uint v) private {}

    function foo3(uint v) public {
        _original_Foo_foo3(v);
        unchecked {
            if (!(abi.encodeWithSignature("dummy", v).length > 0)) {
                emit AssertionFailed("3: ");
                assert(false);
            }
        }
    }

    function _original_Foo_foo3(uint v) private {}
}

/// Utility contract holding a stack counter
contract __scribble_ReentrancyUtils {
    bool __scribble_out_of_contract = true;
}
