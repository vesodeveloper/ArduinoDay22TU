.text
.global main
.func main
main:
mov r0, #7
mov r1, #5
cmp r0,r1
beq pass
bge grt
bne fail
fail:
mov r0,#2
b end
grt:
mov r0,#6
b end
pass:
mov r0,#1
b end
end:
bx lr
