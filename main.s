
.data
  msg1:   .asciz "Function1: Name:\n"
  msg2:   .asciz "\nFunction2: ID:\n"
  msg3:   .asciz "Main Function:\n"
  msg4:   .asciz "*****Print All******\n"
  msg5:   .asciz "ID Summation = %d\n"
  msg6:   .asciz "*****End Print*****\n"
  Blank:  .asciz "%d  %s"

.text
  .global main    @ Function
  .global id1     @ Int
  .global id2     @ Int
  .global id3     @ Int
  .global idSum   @ Int
  .global teamNo  @ String
  .global name1   @ String
  .global name2   @ String
  .global name3   @ String

  main:
    stmfd sp!, {lr}

    ldr   r0, =msg1    @ r0 = "Function1: Name:\n"
    bl    printf
    bl    name
@-------------------------------------
    ldr   r0, =msg2    @ r0 = "\nFunction2: ID:\n"
    bl    printf
    bl    id
@---------------------
    ldr   r0, =msg3    @ r0 = "Main Function:\n"
    bl    printf
    ldr   r0, =msg4    @ r0 = "*****Print All******\n"
    bl    printf
@----------------------------
    ldr   r0, =Blank   @ r0 = "%d  %s"
    ldr   r1, =id1
    ldr   r1, [r1]
    ldr   r2, =name1
    bl    printf
@---------------------------
    ldr   r0, =Blank   @ r0 = "%d  %s"
    ldr   r1, =id2
    ldr   r1, [r1]
    ldr   r2, =name2
    bl    printf
@------------------------------
    ldr   r0, =Blank   @ r0 = "%d  %s"
    ldr   r1, =id3
    ldr   r1, [r1]
    ldr   r2, =name3
    bl    printf
@------------------------------
    ldr   r0, =msg5    @ r0 = "ID Summation = %d\n"
    ldr   r1, =idSum
    ldr   r1, [r1]
    bl    printf
@----------------------------
    ldr   r0, =msg6    @ r0 = "*****End Print*****\n"
    bl    printf

    ldmfd sp!,{lr}
    mov   pc, lr
