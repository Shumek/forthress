: collatz
	dup 1 < if ." Must be a positive number" drop -1 exit endif
	repeat
	dup 2 % not if 2 / else 3 * 1 + then
	dup . ."  "
	dup 1 = until
;

: collatz_test
	8 -2 do
		r@ . ." : " r@ collatz cr
	loop
;