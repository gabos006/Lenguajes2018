.class public Good11
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit locals 3
.limit stack  1000
ldc 1
ifeq label0
ldc 1
goto label2
label0:
ldc 1
invokestatic Runtime/writeIntBool(I)I
ifeq label1
ldc 1
goto label2
label1:
ldc 0
label2:
istore 1
ldc 0
ifeq label3
ldc 1
goto label5
label3:
ldc 2
invokestatic Runtime/writeIntBool(I)I
ifeq label4
ldc 1
goto label5
label4:
ldc 0
label5:
istore 1
ldc 1
ifeq label6
ldc 3
invokestatic Runtime/writeIntBool(I)I
ifeq label7
ldc 1
goto label8
label6:
ldc 0
label7:
ldc 0
label8:
istore 1
ldc 0
ifeq label9
ldc 4
invokestatic Runtime/writeIntBool(I)I
ifeq label10
ldc 1
goto label11
label9:
ldc 0
label10:
ldc 0
label11:
istore 1
return
.end method

