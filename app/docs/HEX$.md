# HEX$
`hex_repr = HEX$(x)`

Returns a string with the hexadecimal representation of `x`.

## Parameters
* `x` is a numeric expression in `[-32768—65535]`. Values for negative `x` are shown as two's-complement.

## Errors
* `x` is not in `[-32768—65535]`: `Overflow`.
* `x` has a string value: `Type mismatch`.