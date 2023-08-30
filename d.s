.data
soma2:  .double 0.0        
newline: .asciiz "\n"     

.text
.globl main
main:
    # Initialize variables
    li $t0, 0             
    l.d $f0, soma2        

loop:
    
    li $t1, 30            
    bge $t0, $t1, end     

    
    li.s $f1, 1.0         
    li.s $f2, 3.0         
    div.s $f1, $f1, $f2   
    add.s $f0, $f0, $f1   

    
    addi $t0, $t0, 1

    j loop                

end:
    li $v0, 2             
    mov.d $a0, $f0        
    syscall

    li $v0, 4             
    la $a0, newline       
    syscall

    li $v0, 10            
    syscall