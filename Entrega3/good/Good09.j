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
label4:
iload 3
iload 3
imul
iload 2
if_icmple label9
ldc 0
goto label10
label9:
ldc 1
label10:
ifeq label6
iload 4
ifeq label7
ldc 1
goto label8
label6:
ldc 0
label7:
ldc 0
label8:
ifeq label5
iload 2
iload 3
idiv
iload 3
imul
iload 2
if_icmpeq label13
ldc 0
goto label14
label13:
ldc 1
label14:
ifeq label11
ldc 0
istore 4
goto label12
label11:
iload 3
ldc 1
iadd
istore 3
label12:
goto label4
label5:
iload 4
ifeq label17
iload 1
iload 2
idiv
iload 2
imul
iload 1
if_icmpeq label20
ldc 0
goto label21
label20:
ldc 1
label21:
ifeq label18
ldc 1
goto label19
label17:
ldc 0
label18:
ldc 0
label19:
ifeq label15
iload 2
invokestatic Runtime/writeInt(I)V
iload 1
iload 2
idiv
istore 1
goto label16
label15:
iload 2
ldc 1
iadd
istore 2
label16:
goto label0
label1:
return
.end method

