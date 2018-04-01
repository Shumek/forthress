: parity
  2 % not
;

: parity-test
  ." even numbers from 0 to 30:" cr
  30 0 do
    r@ parity if r@ . ."  " endif
  loop
  cr
  ." odd numbers from 0 to 30:" cr
  30 0 do
    r@ parity not if ."  " r@ .  endif
  loop
;