.class public Good09
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit locals 5
.limit stack  1000
invokestatic Runtime/readInt()I
istore 1
ldc 2
istore 2
label0:
iload 2
iload 1
if_icmple label2
ldc 0
goto label3
label2:
ldc 1
label3:
ifeq label1
ldc 1
istore 4
ldc 2
istore 3
label5:
iload 3
iload 3
imul
iload 2
if_icmple label10
ldc 0
goto label11
label10:
ldc 1
label11:
ifeq label7
iload 4
ifeq label8
ldc 1
goto label9
label7:
ldc 0
label8:
ldc 0
label9:
ifeq label6
iload 2
iload 3
idiv
iload 3
imul
iload 2
if_icmpeq label15
ldc 0
goto label16
label15:
ldc 1
label16:
ifeq label13
ldc 0
istore 4
goto label14
label13:
iload 3
ldc 1
iadd
istore 3
label14:
goto label5
label6:
iload 4
ifeq label20
iload 1
iload 2
idiv
iload 2
imul
iload 1
if_icmpeq label23
ldc 0
goto label24
label23:
ldc 1
label24:
ifeq label21
ldc 1
goto label22
label20:
ldc 0
label21:
ldc 0
label22:
ifeq label18
iload 2
invokestatic Runtime/writeInt(I)V
iload 1
iload 2
idiv
istore 1
goto label19
label18:
iload 2
ldc 1
iadd
istore 2
label19:
goto label0
label1:
return
.end method

