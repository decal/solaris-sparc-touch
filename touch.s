file:   .asciz "/tmp/exploited"
.align 4
.global main
main:
        save %sp,-108&-8,%sp    ! save stack pointer
        set file,%o0
        mov 0640, %o1
        mov 8,%g1               ! 8 == creat()
        ta 0
        nop
done:   mov 1,%g1               ! exit
        ta 0                    ! ...
