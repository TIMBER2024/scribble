/// This file is auto-generated by Scribble and shouldn't be edited directly.
/// Use --disarm prior to make any changes.
pragma solidity 0.6.12;

contract AddrChecker {
    function checkAddr(address addr) external {
        _original_AddrChecker_checkAddr(addr);
        if (!(addr != address(0xAaaaAaAAaaaAAaAAaAaaaaAAAAAaAaaaAaAaaAA0))) {
            emit __ScribbleUtilsLib__318.AssertionFailed("000355:0069:000 0: P1");
            assert(false);
        }
    }

    function _original_AddrChecker_checkAddr(address addr) private {
        require(addr != address(0xAaaaAaAAaaaAAaAAaAaaaaAAAAAaAaaaAaAaaAA0));
    }
}

contract MapIdx {
    mapping(string => int) internal a;

    function main(string memory arg) public {
        _original_MapIdx_main(arg);
        if (!(a[arg] == 0)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("000808:0068:000 1: F");
            assert(false);
        }
    }

    function _original_MapIdx_main(string memory arg) private {}
}

contract MemoryCast {
    uint256[] internal _nums;

    function entry() external {
        _original_MemoryCast_entry();
        if (!(_isEvenLen(_nums))) {
            emit __ScribbleUtilsLib__318.AssertionFailed("001161:0069:000 2: P1");
            assert(false);
        }
    }

    function _original_MemoryCast_entry() private {
        require(_isEvenLen(_nums));
        _nums.push();
    }

    function _isEvenLen(uint256[] memory arr) internal view returns (bool) {
        return (arr.length % 2) == 0;
    }
}

contract OldInOld {
    struct vars3 {
        uint256 oldTT;
        uint256 oldT;
        uint256 oldTTimes2;
        bool let_0;
        bool let_1;
        bool let_2;
    }

    uint internal t;

    function moo() public {
        vars3 memory _v;
        _v.oldTT = t;
        _v.oldT = _v.oldTT;
        _v.oldTTimes2 = _v.oldT * 2;
        _original_OldInOld_moo();
        _v.let_0 = _v.oldTTimes2 == t;
        _v.let_1 = _v.let_0;
        _v.let_2 = _v.let_1;
        if (!(_v.let_2)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("002028:0067:000 3: ");
            assert(false);
        }
    }

    function _original_OldInOld_moo() private {
        t = t * 2;
    }
}

contract OldInOld2 {
    struct vars4 {
        OldInOld2 t1;
        uint256 old_0;
        bool let_3;
    }

    function balanceOf() public returns (uint RET_0) {
        vars4 memory _v;
        _v.t1 = OldInOld2(address(0x00));
        _v.old_0 = _v.t1.balanceOf();
        RET_0 = _original_OldInOld2_balanceOf();
        _v.let_3 = _v.old_0 == 42;
        if (!(_v.let_3)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("002612:0067:000 4: ");
            assert(false);
        }
    }

    function _original_OldInOld2_balanceOf() private view returns (uint) {}
}

contract OldTuple {
    struct vars5 {
        uint256 oldX;
        uint256 oldY;
        bool let_4;
    }

    uint internal x;
    uint internal y;

    function dbl() internal view returns (uint, uint) {
        return (x, y);
    }

    function main(uint k) public {
        vars5 memory _v;
        (_v.oldX, _v.oldY) = dbl();
        _original_OldTuple_main(k);
        _v.let_4 = (x == (_v.oldX + k)) && (y == (_v.oldY + k));
        if (!(_v.let_4)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("003279:0067:000 5: ");
            assert(false);
        }
    }

    function _original_OldTuple_main(uint k) private {
        x += k;
        y += k;
    }
}

contract Result {
    struct vars7 {
        uint256 t2;
        bool let_5;
    }

    struct vars8 {
        uint256 a1;
        uint256 b1;
        bool let_6;
    }

    function a() public returns (uint RET_0) {
        RET_0 = _original_Result_a();
        if (!(RET_0 == 1)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("003784:0067:000 6: ");
            assert(false);
        }
    }

    function _original_Result_a() private returns (uint) {
        return 1;
    }

    function b() public returns (uint x) {
        vars7 memory _v;
        x = _original_Result_b();
        _v.t2 = x;
        _v.let_5 = _v.t2 == x;
        if (!(x == x)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("004170:0067:000 7: ");
            assert(false);
        }
        if (!(_v.let_5)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("004315:0067:000 8: ");
            assert(false);
        }
    }

    function _original_Result_b() private returns (uint x) {
        x = 2;
    }

    function d() public returns (uint RET_0, uint t) {
        vars8 memory _v;
        (RET_0, t) = _original_Result_d();
        (_v.a1, _v.b1) = (RET_0, t);
        _v.let_6 = ((_v.a1 == 1) && (_v.b1 == 2)) && (t == _v.b1);
        if (!(_v.let_6)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("004777:0067:000 9: ");
            assert(false);
        }
    }

    function _original_Result_d() private returns (uint, uint t) {
        return (1, 2);
    }
}

library Lib3 {
    function len(string memory s) public pure returns (uint) {
        return bytes(s).length;
    }
}

contract UsingForRefType {
    using Lib3 for string;

    string internal sS;

    function main(string memory mS) public {
        _original_UsingForRefType_main(mS);
        if (!(sS.len() == mS.len())) {
            emit __ScribbleUtilsLib__318.AssertionFailed("005328:0069:000 10: F");
            assert(false);
        }
    }

    function _original_UsingForRefType_main(string memory mS) private {}
}

contract ExternalCall {
    function process(bytes calldata _bytes) external returns (bool result) {
        result = _original_ExternalCall_process(_bytes);
        if (!(this.checkBytes(_bytes) == result)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("005741:0078:000 11: wrong byte");
            assert(false);
        }
    }

    function _original_ExternalCall_process(bytes calldata _bytes) private returns (bool result) {
        return this.checkBytes(_bytes);
    }

    function checkBytes(bytes calldata _bytes) external pure returns (bool result) {
        return _bytes.length > 0;
    }
}

/// define some stuff
///  define some(other stuff
contract IgnoreNonFunDefines {}

contract CallinInstrumentedFun {
    uint internal x = 1;

    function getX() public returns (uint res) {
        res = _original_CallinInstrumentedFun_getX();
        if (!(res > 0)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("006422:0068:000 12: ");
            assert(false);
        }
    }

    function _original_CallinInstrumentedFun_getX() private view returns (uint res) {
        return x;
    }

    function inc(uint x) public returns (uint res) {
        res = _original_CallinInstrumentedFun_inc(x);
        if (!(res == (x + _original_CallinInstrumentedFun_getX()))) {
            emit __ScribbleUtilsLib__318.AssertionFailed("006836:0068:000 13: ");
            assert(false);
        }
    }

    function _original_CallinInstrumentedFun_inc(uint x) private returns (uint res) {
        return x + getX();
    }
}

contract IndexAccessOnResult {
    function foo() public returns (uint[] memory RET_0) {
        RET_0 = _original_IndexAccessOnResult_foo();
        if (!(RET_0[0] > 1)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("007257:0068:000 14: ");
            assert(false);
        }
    }

    function _original_IndexAccessOnResult_foo() private pure returns (uint[] memory) {
        uint[] memory x = new uint[](1);
        x[1] = 2;
        return x;
    }
}

contract SemicolonInString {
    function foo(uint256 x) public returns (uint256 y) {
        y = _original_SemicolonInString_foo(x);
        if (!(keccak256("ab;") != bytes32(0x00))) {
            emit __ScribbleUtilsLib__318.AssertionFailed("007743:0070:000 15: P0");
            assert(false);
        }
        if (!(y == (x + 1))) {
            emit __ScribbleUtilsLib__318.AssertionFailed("007895:0070:000 16: P1");
            assert(false);
        }
    }

    function _original_SemicolonInString_foo(uint256 x) private returns (uint256 y) {
        return x + 1;
    }
}

contract Target {
    function foo(uint x) public pure {}

    function foo(uint x, uint y) public payable {}
}

/// #invariant true;
contract Caller {
    struct vars16 {
        bool __scribble_check_invs_at_end;
    }

    function main(Target t) public {
        vars16 memory _v;
        _v.__scribble_check_invs_at_end = !__ScribbleUtilsLib__318.isInContract();
        __ScribbleUtilsLib__318.setInContract(true);
        _original_Caller_main(t);
        if (_v.__scribble_check_invs_at_end) __scribble_check_state_invariants();
        __ScribbleUtilsLib__318.setInContract(!_v.__scribble_check_invs_at_end);
    }

    function _original_Caller_main(Target t) private {
        t.foo(1);
        _callsite_313(t, 2, 3);
    }

    /// Check only the current contract's state invariants
    function __scribble_Caller_check_state_invariants_internal() internal {
        if (!(true)) {
            emit __ScribbleUtilsLib__318.AssertionFailed("009035:0068:000 17: ");
            assert(false);
        }
    }

    /// Check the state invariant for the current contract and all its bases
    function __scribble_check_state_invariants() virtual internal {
        __scribble_Caller_check_state_invariants_internal();
    }

    constructor() public {
        __ScribbleUtilsLib__318.setInContract(true);
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__318.setInContract(false);
    }

    function _callsite_313(Target receiver, uint256 arg0, uint256 arg1) private {
        __scribble_check_state_invariants();
        __ScribbleUtilsLib__318.setInContract(false);
        receiver.foo(arg0, arg1);
        __ScribbleUtilsLib__318.setInContract(true);
    }
}

library __ScribbleUtilsLib__318 {
    event AssertionFailed(string message);

    event AssertionFailedData(int eventId, bytes encodingData);

    function assertionFailed(string memory arg_0) internal {
        emit AssertionFailed(arg_0);
    }

    function assertionFailedData(int arg_0, bytes memory arg_1) internal {
        emit AssertionFailedData(arg_0, arg_1);
    }

    function isInContract() internal returns (bool res) {
        assembly {
            res := sload(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c)
        }
    }

    function setInContract(bool v) internal {
        assembly {
            sstore(0x5f0b92cf9616afdee4f4136f66393f1343b027f01be893fa569eb2e2b667a40c, v)
        }
    }
}
