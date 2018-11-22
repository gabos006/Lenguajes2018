.class public Good06
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit locals 3
.limit stack  1000
invokestatic Runtime/readInt()I
istore 1
iload 1
ldc 2
idiv
istore 2
label0:
iload 2
ldc 1
if_icmpgt label2
ldc 0
goto label3
label2:
ldc 1
label3:
ifeq label1
iload 2
iload 1
iload 2
idiv
imul
iload 1
if_icmpeq label7
ldc 0
goto label8
label7:
ldc 1
label8:
ifeq label5
iload 2
invokestatic Runtime/writeInt(I)V
goto label6
label5:
label6:
iload 2
ldc 1
isub
istore 2
goto label0
label1:
return
.end method

