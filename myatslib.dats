#include "share/atspre_staload.hats"

#define ATS_DYNLOADFLAG 0

extern
fun callme(int): int = "ext#"

implement callme(x: int) = x + 10
