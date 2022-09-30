include emu8086.inc
org 100h
.data
addition dw ?
subt dw ?
mult dw ?
divi dw ?
num1 dw 1
num2 dw 2
num3 dw 3
num4 dw 4
num5 dw 5 
num6 dw 6
num7 dw 7 
num8 dw 8
num9 dw 9
f dw ? 
sum dw ?
mod dw ?
f1 dw ?
ff dw 3
num10 dw 10
num11 dw ?
num22 dw ?
MSG DB 0AH, 0DH, "***** >>Welcome to my calculator<< *****$"  
MSG2 DB 0AH, 0DH, "what operations you want to perform:$" 
MSG3 DB 0AH, 0DH, "Invalid option:$"
MSG4 DB 0AH, 0DH, "press 1 for ADDITION$"  
MSG5 DB 0AH, 0DH, "press 2 for MULTIPLICATION:$" 
MSG6 DB 0AH, 0DH, "press 3 for DIVISION:$" 
MSG7 DB 0AH, 0DH, "press 4 for SUBTRACTION$"  
MSG8 DB 0AH, 0DH, "press 5 for SQUARE ROOT:$" 
MSG9 DB 0AH, 0DH, "press 6 for CUBE ROOT:$" 
MSG10 DB 0AH, 0DH, "press 7 for MOD$"  
MSG11 DB 0AH, 0DH, "press 8 for FACTORIAL:$" 
MSG12 DB 0AH, 0DH, "press 9 for COMPLEX NUMBER:$"
MSG16 DB 0AH, 0DH, "PRESS 10 TO SOLEVE A+B+C/3$" 
MSG13 DB 0AH, 0DH, "PRESS ANY NUMBER FROM ABOVE MENU TO JUMP OR ANY OTHER KEY TO EXIT::$"  



.CODE

MOV AH, 06h    
    XOR AL, AL    
    XOR CX, CX     
    MOV DX, 184FH  
    MOV BH, 9Ah   
    INT 10H

call new      
MOV AX, @DATA 
MOV DS, AX
MOV DX, OFFSET MSG 
MOV AH, 09H 
INT 21H
call new   
MOV DX, OFFSET MSG4 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG5 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG6 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG7 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG8 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG9 
MOV AH, 09H 
INT 21H 
call new 
MOV DX, OFFSET MSG10 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG11 
MOV AH, 09H 
INT 21H
call new  
MOV DX, OFFSET MSG12 
MOV AH, 09H 
INT 21H
call new 
MOV DX, OFFSET MSG16 
MOV AH, 09H 
INT 21H
call new
call scan_num 
call new
mov ax,cx
cmp ax,num1
je p1

cmp ax,num2
je p2

cmp ax,num3
je p3

cmp ax,num4
je p4 
cmp cx,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9 
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h




p1:
call new
print '********EXECUTING ADDITION***********' 
call new
print 'Enter two numbers'
call new
print 'ENTER FIRST NUMBER::'
call scan_num
mov ax,cx 
call new
print 'ENTER SECOND NUMBER::'
call scan_num
call new
print 'RESULT:'
add ax,cx
call print_num
call new
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
call new
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp cx,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h

p2:
call new
print '**********EXECUTING MULTIPLICATION************'
call new
print 'Enter FIRST number::'
call scan_num
call new
mov ax,cx
print 'Enter second number::'
call scan_num
call new
mov bx,cx
mov cx,ax
mul bx
print 'RESULT:'
call print_num
print 10
print 13
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp ax,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9 
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h

p3: 
call new
print '*******EXECUTING DIVISION***************'
call new
print 'ENTER 1ST NUMBER ='
call scan_num
mov NUM11,cx
call new
print 'ENTER 2nd NUMBER ='
call scan_num
mov NUM22,cx
mov dx,0
mov ax,NUM11
DIV NUM22   
call new
print 'RESULT:'
call print_num 
call new
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp ax,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9 
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h

p4:
call new
print '************EXECUTING SUBTRACTION***********'
call new
print 'ENTER 1ST NUMBER = '
call scan_num
mov NUM11,cx
call new   
print 'ENTER 2nd NUMBER = '
call scan_num
mov NUM22,cx
mov ax,NUM11
mov bx,NUM22
SUB ax,bx      
call new    
print 'SUBTRACTION OF TWO NUMBER ='
call print_num
call new
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
call new
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp cx,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h


p5:
call new
print '**********EXECUTING SQUARE************'
call new 
print 'ENTER NUMBER TO TAKE SQUARE '
call new
CALL SCAN_NUM
call new
print 'RESULT::'
MOV AX,CX
MUL CX 
CALL PRINT_NUM
call new
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
call new
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp cx,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h


p6:
call new
print '***************EXECUTING CUBE**************' 
call new
print 'ENTER NUMBER TO TAKE CUBE '
call new
CALL SCAN_NUM
call new
print 'RESULT:'
MOV AX,CX
MUL CX
MUL CX 
CALL PRINT_NUM
call new
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp cx,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
call new
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h

p7:
call new
print '****************EXECUTING MOD******************'
call new
print 'ENTER 1ST NUMBER ='
call scan_num
mov NUM1,cx
call new  
print 'ENTER 2nd NUMBER ='
call scan_num
mov NUM22,cx   
mov dx,0
mov ax,NUM11    
DIV NUM2           
call new   
print 'MOD OF NUMBERS IS= '  
mov ax,dx
call print_num     

MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H

call scan_num
call new
cmp cx,num1
je p1

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp cx,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h

P8:
call new
print '****************EXECUTING FACTORIAL*****************'
call new 
print 'ENTER NUMBER BETWEEN 0 TO 7!' 
call new 
print 'ENTER NUMBER ='
call scan_num 
cmp cx,num1
je k1

cmp cx,num2
je k1

cmp cx,num3
je k1

cmp cx,num4
je k1
cmp cx,num5
je k1
cmp cx,num6
je k1
cmp cx,num7
je k1
call new
print 'INVALID OPTION...SYSTEM EXITING'
call new
jmp f6
k1:
mov NUM1,cx
mov ax, NUM1
mov bx,ax  
L:
dec bx
mul bx
cmp bx,1
jne L
mov cx,ax  
call new
print 'FACTORIAL OF GIVEN NUMBER IS= '      
call print_num 
f6:
call new
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call scan_num
call new
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp ax,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h


p9:
call new
print '***************EXECUTING COMPLEX NUMBERS*****************'
call new
print 'ENTER 1ST NUMBER ='
call scan_num
mov NUM1 , cx   
call new  
print 'ENTER 2ND NUMBER ='
call scan_num           
mov NUM2 , cx   
call new
print 'ENTER 3RD NUMBER ='             
call scan_num
mov NUM3 ,cx
call new               
print 'ENTER 4TH NUMBER='
call scan_num
mov NUM4 ,cx       
mov ax,NUM1
mov bx,NUM3
add ax,bx
call new   
call print_num
print '+'
mov ax,NUM2
mov bx,NUM4
add ax,bx
call print_num
print 'i'
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call new
call scan_num
call new
 
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp ax,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'invalid option'
mov ah,04h
int 21h
 
p10:
call new
print '**************EXECUTING EQUATION*******************'
call new
print 'ENTER VALUE OF A:'
call scan_num
mov ax,cx
call new
print 'ENTER VALUE OF B:'
call scan_num
call new
mov bx,cx
add ax,bx 
print 'ENTER VALUE OF C:'
call scan_num
call new
mov bx,cx
add ax,bx
mov dx,0
mov bx,ax
div ff
print 'RESULT:'
call print_num
MOV DX, OFFSET MSG13 
MOV AH, 09H 
INT 21H
call new
call scan_num
call new
 
cmp cx,num1
je p1

cmp cx,num2
je p2

cmp cx,num3
je p3

cmp cx,num4
je p4
cmp ax,num5
je p5
cmp cx,num6
je p6
cmp cx,num7
je p7
cmp cx,num8
je p8
cmp cx,num9
je p9
cmp cx,num10
je p10
print 'INVALID OPTION...SYSTEM EXITING'
call new
print 'THANK YOU FOR USING MY CALCULATOR'
mov ah,04h
int 21h 

     
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM

new:
print 10
print 13

ret