.class public Good12
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit locals 2
.limit stack  1000
ldc 1
istore 1
label0:
iload 1
ldc 10
iload 1
isub
if_icmpgt label1
iload 1
invokestatic Runtime/writeInt(I)V
iload 1
ldc 1
iadd 
istore 1
goto label0
label1:
return
.end method

