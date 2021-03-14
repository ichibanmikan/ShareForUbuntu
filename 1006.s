 .section .text    
   
 .global _start   
 _start:  
     nop    
     movl $4, %eax  
     movw $1, %bx  
     movb $5, %dh
     movl $13, %edx  
    
   
     movl $1, %eax  
     movl $0, %ebx  
     int $0x80  
