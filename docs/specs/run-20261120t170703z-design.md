# Toy design: Double

The toy package has one function, `Add`. This round adds a second, `Double`, so the rehearsal
has a real Go change to build, gate, review, and merge.

## The question

Should the toy package gain a `Double` function? The answer is `yes` or `no`. On `yes`, the pass
adds `func Double(a int) int` to `toy.go` and a test for it to `toy_test.go`. On `no`, nothing
changes.

## The change

- `Double` returns twice its argument, with a one-line doc comment.
- `TestDouble` checks that `Double(4)` is 8.
- No other file changes.
