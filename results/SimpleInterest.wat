;; Code generated by the Delta compiler
(module
  (func
    (export "_start")
    (result i32)
    (local $p i32)
    (local $t i32)
    (local $r i32)
    (local $si i32)
    i32.const 8
    local.set $p
    i32.const 6
    local.set $t
    i32.const 8
    local.set $r
    local.get $p
    local.get $t
    i32.mul
    local.get $r
    i32.mul
    i32.const 100
    i32.div_s
    local.set $si
    local.get $si
  )
)
