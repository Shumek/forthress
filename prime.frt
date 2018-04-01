: prime
	dup 2 < if drop 0 exit endif
	dup 2 = if drop 1 exit endif
	dup 2 % not if drop 0 exit endif 
	dup 2 / >r
	repeat
		dup ( dup initial value )
		r> ( restore current value )
		dup 1 - >r ( decrement current value and save in stack )
		% 
	not until ( when % resulted 0 )
		drop r> 0 = ( drop initial value, restore last value -> it should be 0 if initial value is prime )
;

: prime_allot
	prime
	cell% allot dup
	-rot
	!
;
	
: prime_test 
	50 -2 do 
		r@ prime 
			if r@ . ."  " endif
	loop
	cr
;

: prime_allot_test 
	50 -2 do
		r@ prime_allot
			@ if r@ . ."  " endif
	loop
	cr
;