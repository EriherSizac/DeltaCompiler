;; Code generated by the Delta compiler
(module
  (func
    (export "_start")
    (result i32)
    (local $x i32)
    (local $y i32)
    i32.const 5
    local.set $x
    local.get $x
    i32.const 5
    i32.sub
    if
    i32.const 1
    local.set $y
    else
    local.get $x
    i32.const 0
    i32.mul
    if
    i32.const 2
    local.set $y
    else
    local.get $x
    i32.const 1
    i32.sub
    if
    i32.const 3
    local.set $y
    else
    i32.const 4
    local.set $y
    end
    end
    end
    local.get $y
  )
)
