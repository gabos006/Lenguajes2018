.class public Good04
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit locals 1
.limit stack  1000
ldc2_w 2.23
ldc2_w 1.4
iflt label2
ldc 0
goto label3
label2:
ldc 1
label3:
ifeq label0
ldc 1
invokestatic Runtime/writeInt(I)V
goto label1
label0:
ldc 0
invokestatic Runtime/writeInt(I)V
label1:
return
.end method

