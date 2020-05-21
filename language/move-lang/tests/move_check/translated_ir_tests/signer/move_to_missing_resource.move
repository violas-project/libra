module M {
    resource struct R { f: bool }
    fun t0(s: &signer) {
        move_to<R>(s)
    }
}
// check: NEGATIVE_STACK_SIZE_WITHIN_BLOCK

//! new-transaction

module N {
    resource struct R<T> { f: T }
    fun t0<T>(s: &signer) {
        () = move_to<R<bool>>(s);
    }
}
// check: NEGATIVE_STACK_SIZE_WITHIN_BLOCK
