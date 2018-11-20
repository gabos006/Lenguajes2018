.class public Good08
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit locals 4
.limit stack  1000
ldc 0
istore 1
ldc 0
istore 2
label0:
invokestatic Runtime/readInt()I
istore 3
iload 3
ldc 0
if_icmpne label3
ldc 0
goto label4
label3:
ldc 1
label4:
ifeq label1
iload 1
iload 3
iadd
istore 1
iload 2
ldc 1
iadd
istore 2
goto label2
label1:
label2:
iload 3
ldc 0
if_icmpeq label5
ldc 0
goto label6
label5:
ldc 1
label6:
ifeq label0
iload 1
iload 2
idiv
invokestatic Runtime/writeInt(I)V
return
.end method

