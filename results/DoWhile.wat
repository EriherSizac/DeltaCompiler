;; Code generated by the Delta compiler
(module
  (func
    (export "_start")
    (result i32)
    (local $n i32)
    (local $r i32)
    (local $i i32)
    i32.const 5
    local.set $n
    i32.const 1
    local.set $r
    i32.const 0
    local.set $i
    loop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    local.get $r
    local.get $i
    i32.mul
    local.set $r
    local.get $n
    local.get $i
    i32.sub
    br_if 0
    end
    local.get $r
  )
)
