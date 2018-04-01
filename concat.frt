( s, f )
: concat 
	dup count >r ( f count )
	swap
	dup count ( s count )
	r@ + 1 + heap-alloc dup >r ( heap alloc to stack and r stack )
	rot ( s h f )
	dup >r ( f to free )
	string-copy
	r> heap-free ( free f )
	r> r> swap dup >r + swap ( h' s )
	dup >r ( s to free ) 
	string-copy
	r> heap-free ( free s )
	r> ( h )
;

( lol it's not needed )
( source, destination, returns end of destination string )
( : string-copy 
	repeat
		swap
		dup c@ >r ( get one char from source)
		1 + ( inc source addr )
		swap ( destination )
		dup 
		r@ ( saved char is here )
		swap ( char should be first )
		c!
		1 + ( inc destination addr )
		r> not ( check what char was written )
	until ( null symbol means end of the loop )
	swap drop
; )