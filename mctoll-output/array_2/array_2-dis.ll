; ModuleID = 'array_2'
source_filename = "array_2"

@rodata_16 = private unnamed_addr constant [55 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\ED\96\89\EB\A0\AC\EC\9D\84 \EA\B3\B1\ED\95\A0 \EC\88\98 \EC\97\86\EC\8A\B5\EB\8B\88\EB\8B\A4.\00%d \00", align 8, !ROData_SecInfo !0

declare dso_local i32 @puts(ptr)

define dso_local i32 @matrixMultiply(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i64 %arg5, i64 %arg6) {
entry:
  %EAX-SKT-LOC = alloca i32, align 4
  %stktop_8 = alloca i8, i32 136, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 32
  %RBP_N.104 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 40
  %RBP_N.96 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 44
  %RBP_N.92 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 48
  %RBP_N.88 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 52
  %RBP_N.84 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 56
  %RSPAdj_N.80 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 64
  %RBP_N.72 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 72
  %RBP_N.64 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 80
  %RBP_N.56 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 92
  %RBP_N.44 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 96
  %RBP_N.40 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 100
  %RBP_N.36 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 16
  %RBP_P.16 = inttoptr i64 %13 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 3735928559, ptr %RSP_P.0, align 8
  store i64 3735928559, ptr %RSP_P.0, align 8
  store i64 3735928559, ptr %RSP_P.0, align 8
  store i64 3735928559, ptr %RSP_P.0, align 8
  store i32 %arg1, ptr %RBP_N.84, align 1
  store i32 %arg2, ptr %RBP_N.88, align 1
  store i32 %arg3, ptr %RBP_N.92, align 1
  store i32 %arg4, ptr %RBP_N.96, align 1
  store i64 %arg5, ptr %RBP_N.104, align 1
  store i64 %arg6, ptr %stktop_8, align 1
  %memload = load i32, ptr %RBP_N.88, align 1
  %RAX = sext i32 %memload to i64
  %RAX1 = sub i64 %RAX, 1
  %14 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX, i64 1)
  %CF = extractvalue { i64, i1 } %14, 1
  %15 = and i64 %RAX1, 255
  %16 = call i64 @llvm.ctpop.i64(i64 %15)
  %17 = and i64 %16, 1
  %PF = icmp eq i64 %17, 0
  %ZF = icmp eq i64 %RAX1, 0
  %highbit = and i64 -9223372036854775808, %RAX1
  %SF = icmp ne i64 %highbit, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX, i64 1)
  %OF = extractvalue { i64, i1 } %18, 1
  store i64 %RAX1, ptr %RBP_N.56, align 1
  %RAX2 = sext i32 %memload to i64
  %memload3 = load i32, ptr %RBP_N.96, align 1
  %RAX4 = sext i32 %memload3 to i64
  %RAX11 = sub i64 %RAX4, 1
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX4, i64 1)
  %CF5 = extractvalue { i64, i1 } %19, 1
  %20 = and i64 %RAX11, 255
  %21 = call i64 @llvm.ctpop.i64(i64 %20)
  %22 = and i64 %21, 1
  %PF6 = icmp eq i64 %22, 0
  %ZF7 = icmp eq i64 %RAX11, 0
  %highbit8 = and i64 -9223372036854775808, %RAX11
  %SF9 = icmp ne i64 %highbit8, 0
  %23 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX4, i64 1)
  %OF10 = extractvalue { i64, i1 } %23, 1
  store i64 %RAX11, ptr %RBP_N.64, align 1
  %RAX12 = sext i32 %memload3 to i64
  %memload13 = load i32, ptr %RBP_N.96, align 1
  %RSI = sext i32 %memload13 to i64
  %RSI20 = sub i64 %RSI, 1
  %24 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RSI, i64 1)
  %CF14 = extractvalue { i64, i1 } %24, 1
  %25 = and i64 %RSI20, 255
  %26 = call i64 @llvm.ctpop.i64(i64 %25)
  %27 = and i64 %26, 1
  %PF15 = icmp eq i64 %27, 0
  %ZF16 = icmp eq i64 %RSI20, 0
  %highbit17 = and i64 -9223372036854775808, %RSI20
  %SF18 = icmp ne i64 %highbit17, 0
  %28 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RSI, i64 1)
  %OF19 = extractvalue { i64, i1 } %28, 1
  store i64 %RSI20, ptr %RBP_N.72, align 1
  %RSI21 = sext i32 %memload13 to i64
  %memload22 = load i32, ptr %RBP_N.88, align 1
  %29 = load i32, ptr %RBP_N.92, align 1
  %30 = sub i32 %memload22, %29
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload22, i32 %29)
  %CF23 = extractvalue { i32, i1 } %31, 1
  %ZF24 = icmp eq i32 %30, 0
  %highbit25 = and i32 -2147483648, %30
  %SF26 = icmp ne i32 %highbit25, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload22, i32 %29)
  %OF27 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF28 = icmp eq i32 %35, 0
  store i32 %memload13, ptr %EAX-SKT-LOC, align 1
  %CmpZF_JE = icmp eq i1 %ZF24, true
  br i1 %CmpZF_JE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %EAX = call i32 @puts(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 16))
  store i32 %EAX, ptr %EAX-SKT-LOC, align 1
  br label %bb.11

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.2
  %memload29 = load i32, ptr %RBP_N.36, align 1
  %36 = load i32, ptr %RBP_N.84, align 1
  %37 = sub i32 %memload29, %36
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload29, i32 %36)
  %CF30 = extractvalue { i32, i1 } %38, 1
  %ZF31 = icmp eq i32 %37, 0
  %highbit32 = and i32 -2147483648, %37
  %SF33 = icmp ne i32 %highbit32, 0
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload29, i32 %36)
  %OF34 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %37, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF35 = icmp eq i32 %42, 0
  %SFAndOF_JL = icmp ne i1 %SF33, %OF34
  br i1 %SFAndOF_JL, label %bb.3, label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.1
  %EAX36 = load i32, ptr %EAX-SKT-LOC, align 1
  ret i32 %EAX36

bb.3:                                             ; preds = %bb.10
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.3
  %memload37 = load i32, ptr %RBP_N.40, align 1
  %43 = load i32, ptr %RBP_N.96, align 1
  %44 = sub i32 %memload37, %43
  %45 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload37, i32 %43)
  %CF38 = extractvalue { i32, i1 } %45, 1
  %ZF39 = icmp eq i32 %44, 0
  %highbit40 = and i32 -2147483648, %44
  %SF41 = icmp ne i32 %highbit40, 0
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload37, i32 %43)
  %OF42 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %44, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF43 = icmp eq i32 %49, 0
  %SFAndOF_JL126 = icmp ne i1 %SF41, %OF42
  br i1 %SFAndOF_JL126, label %bb.4, label %bb.9

bb.9:                                             ; preds = %bb.8
  %50 = zext i8 1 to i32
  %51 = load i32, ptr %RBP_N.36, align 1
  %52 = add i32 %51, %50
  %53 = and i32 %52, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF44 = icmp eq i32 %55, 0
  store i32 %52, ptr %RBP_N.36, align 1
  br label %bb.10

bb.4:                                             ; preds = %bb.8
  %memload45 = load i32, ptr %RBP_N.36, align 1
  %RDI = sext i32 %memload45 to i64
  %RSI46 = sext i32 %memload13 to i64
  %RSI47 = mul nsw i64 %RSI46, %RDI
  %memref-idxreg = mul i64 4, %RSI47
  %memload48 = load i64, ptr %RBP_P.16, align 1
  %RDI52 = add nsw i64 %memref-idxreg, %memload48
  %highbit49 = and i64 -9223372036854775808, %RDI52
  %SF50 = icmp ne i64 %highbit49, 0
  %ZF51 = icmp eq i64 %RDI52, 0
  %memload53 = load i32, ptr %RBP_N.40, align 1
  %RSI54 = sext i32 %memload53 to i64
  %memref-idxreg55 = mul i64 4, %RSI54
  %memref-basereg = add i64 %RDI52, %memref-idxreg55
  %56 = inttoptr i64 %memref-basereg to ptr
  store i32 0, ptr %56, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %memload56 = load i32, ptr %RBP_N.44, align 1
  %57 = load i32, ptr %RBP_N.88, align 1
  %58 = sub i32 %memload56, %57
  %59 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload56, i32 %57)
  %CF57 = extractvalue { i32, i1 } %59, 1
  %ZF58 = icmp eq i32 %58, 0
  %highbit59 = and i32 -2147483648, %58
  %SF60 = icmp ne i32 %highbit59, 0
  %60 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload56, i32 %57)
  %OF61 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %58, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF62 = icmp eq i32 %63, 0
  %SFAndOF_JL127 = icmp ne i1 %SF60, %OF61
  br i1 %SFAndOF_JL127, label %bb.5, label %bb.7

bb.7:                                             ; preds = %bb.6
  %64 = zext i8 1 to i32
  %65 = load i32, ptr %RBP_N.40, align 1
  %66 = add i32 %65, %64
  %67 = and i32 %66, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF63 = icmp eq i32 %69, 0
  store i32 %66, ptr %RBP_N.40, align 1
  br label %bb.8

bb.5:                                             ; preds = %bb.6
  %memload64 = load i32, ptr %RBP_N.36, align 1
  %RDI65 = sext i32 %memload64 to i64
  %RSI66 = sext i32 %memload to i64
  %RSI67 = mul nsw i64 %RSI66, %RDI65
  %memref-idxreg68 = mul i64 4, %RSI67
  %memload69 = load i64, ptr %RBP_N.104, align 1
  %RDI73 = add nsw i64 %memref-idxreg68, %memload69
  %highbit70 = and i64 -9223372036854775808, %RDI73
  %SF71 = icmp ne i64 %highbit70, 0
  %ZF72 = icmp eq i64 %RDI73, 0
  %memload74 = load i32, ptr %RBP_N.44, align 1
  %RSI75 = sext i32 %memload74 to i64
  %memref-idxreg76 = mul i64 4, %RSI75
  %memref-basereg77 = add i64 %RDI73, %memref-idxreg76
  %70 = inttoptr i64 %memref-basereg77 to ptr
  %memload78 = load i32, ptr %70, align 1
  %memload79 = load i32, ptr %RBP_N.44, align 1
  %R8 = sext i32 %memload79 to i64
  %RSI80 = sext i32 %memload3 to i64
  %RSI81 = mul nsw i64 %RSI80, %R8
  %memref-idxreg82 = mul i64 4, %RSI81
  %memload83 = load i64, ptr %stktop_8, align 1
  %R887 = add nsw i64 %memref-idxreg82, %memload83
  %highbit84 = and i64 -9223372036854775808, %R887
  %SF85 = icmp ne i64 %highbit84, 0
  %ZF86 = icmp eq i64 %R887, 0
  %memload88 = load i32, ptr %RBP_N.40, align 1
  %RSI89 = sext i32 %memload88 to i64
  %memref-idxreg90 = mul i64 4, %RSI89
  %memref-basereg91 = add i64 %R887, %memref-idxreg90
  %71 = inttoptr i64 %memref-basereg91 to ptr
  %memload92 = load i32, ptr %71, align 1
  %EDI = mul nsw i32 %memload78, %memload92
  %memload93 = load i32, ptr %RBP_N.36, align 1
  %RDI94 = sext i32 %memload93 to i64
  %RSI95 = sext i32 %memload13 to i64
  %RSI96 = mul nsw i64 %RSI95, %RDI94
  %memref-idxreg97 = mul i64 4, %RSI96
  %memload98 = load i64, ptr %RBP_P.16, align 1
  %RDI102 = add nsw i64 %memref-idxreg97, %memload98
  %highbit99 = and i64 -9223372036854775808, %RDI102
  %SF100 = icmp ne i64 %highbit99, 0
  %ZF101 = icmp eq i64 %RDI102, 0
  %memload103 = load i32, ptr %RBP_N.40, align 1
  %RSI104 = sext i32 %memload103 to i64
  %memref-idxreg105 = mul i64 4, %RSI104
  %memref-basereg106 = add i64 %RDI102, %memref-idxreg105
  %72 = inttoptr i64 %memref-basereg106 to ptr
  %memload107 = load i32, ptr %72, align 1
  %memload108 = load i32, ptr %RBP_N.36, align 1
  %RDI109 = sext i32 %memload108 to i64
  %RSI110 = sext i32 %memload13 to i64
  %RSI111 = mul nsw i64 %RSI110, %RDI109
  %memref-idxreg112 = mul i64 4, %RSI111
  %memload113 = load i64, ptr %RBP_P.16, align 1
  %RDI117 = add nsw i64 %memref-idxreg112, %memload113
  %highbit114 = and i64 -9223372036854775808, %RDI117
  %SF115 = icmp ne i64 %highbit114, 0
  %ZF116 = icmp eq i64 %RDI117, 0
  %R8D = add nsw i32 %memload107, %EDI
  %highbit118 = and i32 -2147483648, %R8D
  %SF119 = icmp ne i32 %highbit118, 0
  %ZF120 = icmp eq i32 %R8D, 0
  %memload121 = load i32, ptr %RBP_N.40, align 1
  %RSI122 = sext i32 %memload121 to i64
  %memref-idxreg123 = mul i64 4, %RSI122
  %memref-basereg124 = add i64 %RDI117, %memref-idxreg123
  %73 = inttoptr i64 %memref-basereg124 to ptr
  store i32 %R8D, ptr %73, align 1
  %74 = zext i8 1 to i32
  %75 = load i32, ptr %RBP_N.44, align 1
  %76 = add i32 %75, %74
  %77 = and i32 %76, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF125 = icmp eq i32 %79, 0
  store i32 %76, ptr %RBP_N.44, align 1
  br label %bb.6
}

declare dso_local i32 @putchar(i32)

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.60 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.56 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.44 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 56
  %RBP_N.32 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 60
  %RBP_N.28 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 68
  %RBP_N.20 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 72
  %RBP_N.16 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 76
  %RBP_N.12 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 80
  %RSPAdj_N.8 = inttoptr i64 %13 to ptr
  %14 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %14 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 1, ptr %RBP_N.32, align 1
  store i32 2, ptr %RBP_N.28, align 1
  store i32 3, ptr %RBP_N.24, align 1
  store i32 4, ptr %RBP_N.20, align 1
  store i32 5, ptr %RBP_N.16, align 1
  store i32 6, ptr %RBP_N.12, align 1
  store i32 7, ptr %RBP_N.64, align 1
  store i32 8, ptr %RBP_N.60, align 1
  store i32 9, ptr %RBP_N.56, align 1
  store i32 10, ptr %RBP_N.52, align 1
  store i32 11, ptr %RBP_N.48, align 1
  store i32 12, ptr %RBP_N.44, align 1
  %15 = sext i32 0 to i64
  store i64 %15, ptr %stktop_8, align 1
  %16 = sext i32 0 to i64
  store i64 %16, ptr %RBP_N.72, align 1
  %RCX = ptrtoint ptr %RBP_N.64 to i64
  %RDX = ptrtoint ptr %RBP_N.32 to i64
  %RAX = ptrtoint ptr %stktop_8 to i64
  store i64 %RAX, ptr %RSPAdj_N.8, align 8
  %EAX = call i32 @matrixMultiply(i32 2, i32 3, i32 3, i32 2, i64 %RDX, i64 %RCX)
  %17 = getelementptr i8, ptr %RSPAdj_N.8, i64 4
  store i32 0, ptr %17, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %entry
  %18 = getelementptr i8, ptr %RSPAdj_N.8, i64 4
  %19 = load i32, ptr %18, align 1
  %20 = zext i32 %19 to i64
  %21 = zext i32 1 to i64
  %22 = sub i64 %20, %21
  %23 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %21)
  %CF = extractvalue { i64, i1 } %23, 1
  %ZF = icmp eq i64 %22, 0
  %highbit = and i64 -9223372036854775808, %22
  %SF = icmp ne i64 %highbit, 0
  %24 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %20, i64 %21)
  %OF = extractvalue { i64, i1 } %24, 1
  %25 = and i64 %22, 255
  %26 = call i64 @llvm.ctpop.i64(i64 %25)
  %27 = and i64 %26, 1
  %PF = icmp eq i64 %27, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.6

bb.6:                                             ; preds = %bb.5
  ret i32 0

bb.1:                                             ; preds = %bb.5
  store i32 0, ptr %RSPAdj_N.8, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %28 = load i32, ptr %RSPAdj_N.8, align 1
  %29 = zext i32 %28 to i64
  %30 = zext i32 1 to i64
  %31 = sub i64 %29, %30
  %32 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %29, i64 %30)
  %CF1 = extractvalue { i64, i1 } %32, 1
  %ZF2 = icmp eq i64 %31, 0
  %highbit3 = and i64 -9223372036854775808, %31
  %SF4 = icmp ne i64 %highbit3, 0
  %33 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %29, i64 %30)
  %OF5 = extractvalue { i64, i1 } %33, 1
  %34 = and i64 %31, 255
  %35 = call i64 @llvm.ctpop.i64(i64 %34)
  %36 = and i64 %35, 1
  %PF6 = icmp eq i64 %36, 0
  %CmpZF_JLE23 = icmp eq i1 %ZF2, true
  %CmpOF_JLE24 = icmp ne i1 %SF4, %OF5
  %ZFOrSF_JLE25 = or i1 %CmpZF_JLE23, %CmpOF_JLE24
  br i1 %ZFOrSF_JLE25, label %bb.2, label %bb.4

bb.4:                                             ; preds = %bb.3
  %EAX7 = call i32 @putchar(i32 10)
  %37 = getelementptr i8, ptr %RSPAdj_N.8, i64 4
  %38 = zext i8 1 to i32
  %39 = load i32, ptr %37, align 1
  %40 = add i32 %39, %38
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF8 = icmp eq i32 %43, 0
  store i32 %40, ptr %37, align 1
  br label %bb.5

bb.2:                                             ; preds = %bb.3
  %memload = load i32, ptr %RSPAdj_N.8, align 1
  %RDX9 = sext i32 %memload to i64
  %44 = getelementptr i8, ptr %RSPAdj_N.8, i64 4
  %memload10 = load i32, ptr %44, align 1
  %RAX11 = sext i32 %memload10 to i64
  %RAX15 = add nsw i64 %RAX11, %RAX11
  %highbit12 = and i64 -9223372036854775808, %RAX15
  %SF13 = icmp ne i64 %highbit12, 0
  %ZF14 = icmp eq i64 %RAX15, 0
  %RAX19 = add nsw i64 %RAX15, %RDX9
  %highbit16 = and i64 -9223372036854775808, %RAX19
  %SF17 = icmp ne i64 %highbit16, 0
  %ZF18 = icmp eq i64 %RAX19, 0
  %45 = ptrtoint ptr %stktop_8 to i64
  %sc-m = mul i64 4, %RAX19
  %idx-a = add i64 %45, %sc-m
  %46 = inttoptr i64 %idx-a to ptr
  %memload20 = load i32, ptr %46, align 1
  %EAX21 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 51), i32 %memload20, i64 %RDX9)
  %47 = zext i8 1 to i32
  %48 = load i32, ptr %RSPAdj_N.8, align 1
  %49 = add i32 %48, %47
  %50 = and i32 %49, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF22 = icmp eq i32 %52, 0
  store i32 %49, ptr %RSPAdj_N.8, align 1
  br label %bb.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
