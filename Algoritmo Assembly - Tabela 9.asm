li $t0, 8  #A
li $t1, 1  #B
li $t2, 0  #C

xori $t3, $t0, 1 #!A
xori $t4, $t1, 1 #!B
xori $t5, $t2, 1 #!C

and $t6, $t3, $t4  #(!A*!B)
and $s0, $t5, $t6  #(!A*!B*!C)
and $t7, $t3, $t1  #(!A*B)
and $s1, $t7, $t5  #(!A*B*!C)
and $t8, $t0, $t4  #(A*!B)
and $s2, $t8, $t5  #(A*!B*!C)
and $t9, $t0, $t1  #(A*B)
and $s3, $t9, $t5  #(A*B*!C)

or $s4, $s0, $s1   #(!A*!B*!C) + (!A*B*!C)
or $s5, $s2, $s3   #(A*!B*!C) + (A*B*!C)
or $s7, $s4, $s5   #(!A*!B*!C) + (!A*B*!C)+ (A*!B*!C) + (A*B*!C)
