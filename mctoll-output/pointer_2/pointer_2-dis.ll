; ModuleID = 'pointer_2'
source_filename = "pointer_2"

@rodata_16 = private unnamed_addr constant [20 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00%d \00", align 8, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

define dso_local i64 @createMatrix(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 48, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.32 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 3735928559, ptr %RSP_P.0, align 8
  %5 = ptrtoint ptr %stktop_8 to i64
  %6 = add i64 %5, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 %arg1, ptr %7, align 1
  store i32 %arg2, ptr %stktop_8, align 1
  %8 = ptrtoint ptr %stktop_8 to i64
  %9 = add i64 %8, 4
  %10 = inttoptr i64 %9 to ptr
  %memload = load i32, ptr %10, align 1
  %RAX = sext i32 %memload to i64
  %RAX1 = shl i64 %RAX, 3
  %ZF = icmp eq i64 %RAX1, 0
  %highbit = and i64 -9223372036854775808, %RAX1
  %SF = icmp ne i64 %highbit, 0
  %11 = call ptr @malloc(i64 %RAX1)
  %RAX2 = ptrtoint ptr %11 to i64
  store i64 %RAX2, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %entry
  %memload3 = load i32, ptr %RBP_N.20, align 1
  %12 = ptrtoint ptr %stktop_8 to i64
  %13 = add i64 %12, 4
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 1
  %16 = sub i32 %memload3, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %15)
  %CF = extractvalue { i32, i1 } %17, 1
  %ZF4 = icmp eq i32 %16, 0
  %highbit5 = and i32 -2147483648, %16
  %SF6 = icmp ne i32 %highbit5, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %15)
  %OF = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF = icmp eq i32 %21, 0
  %SFAndOF_JL = icmp ne i1 %SF6, %OF
  br i1 %SFAndOF_JL, label %bb.1, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload7 = load i64, ptr %RBP_N.32, align 1
  %memload8 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload7

bb.1:                                             ; preds = %bb.5
  %memload9 = load i32, ptr %stktop_8, align 1
  %RAX10 = sext i32 %memload9 to i64
  %RAX14 = shl i64 %RAX10, 2
  %ZF11 = icmp eq i64 %RAX14, 0
  %highbit12 = and i64 -9223372036854775808, %RAX14
  %SF13 = icmp ne i64 %highbit12, 0
  %memload15 = load i32, ptr %RBP_N.20, align 1
  %RDX = sext i32 %memload15 to i64
  %memref-idxreg = mul i64 8, %RDX
  %memload16 = load i64, ptr %RBP_N.32, align 1
  %memref-basereg = add i64 %memref-idxreg, %memload16
  %22 = call ptr @malloc(i64 %RAX14)
  %RAX17 = ptrtoint ptr %22 to i64
  %23 = inttoptr i64 %memref-basereg to ptr
  store i64 %RAX17, ptr %23, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %memload18 = load i32, ptr %RBP_N.24, align 1
  %24 = load i32, ptr %stktop_8, align 1
  %25 = sub i32 %memload18, %24
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload18, i32 %24)
  %CF19 = extractvalue { i32, i1 } %26, 1
  %ZF20 = icmp eq i32 %25, 0
  %highbit21 = and i32 -2147483648, %25
  %SF22 = icmp ne i32 %highbit21, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload18, i32 %24)
  %OF23 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %25, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF24 = icmp eq i32 %30, 0
  %SFAndOF_JL52 = icmp ne i1 %SF22, %OF23
  br i1 %SFAndOF_JL52, label %bb.2, label %bb.4

bb.4:                                             ; preds = %bb.3
  %31 = zext i8 1 to i32
  %32 = load i32, ptr %RBP_N.20, align 1
  %33 = add i32 %32, %31
  %34 = and i32 %33, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF25 = icmp eq i32 %36, 0
  store i32 %33, ptr %RBP_N.20, align 1
  br label %bb.5

bb.2:                                             ; preds = %bb.3
  %memload26 = load i32, ptr %RBP_N.20, align 1
  %memload27 = load i32, ptr %stktop_8, align 1
  %EAX = mul i32 %memload26, %memload27
  %memload28 = load i32, ptr %RBP_N.20, align 1
  %RAX29 = sext i32 %memload28 to i64
  %memref-idxreg30 = mul i64 8, %RAX29
  %memload31 = load i64, ptr %RBP_N.32, align 1
  %RAX35 = add nsw i64 %memload31, %memref-idxreg30
  %highbit32 = and i64 -9223372036854775808, %RAX35
  %SF33 = icmp ne i64 %highbit32, 0
  %ZF34 = icmp eq i64 %RAX35, 0
  %37 = inttoptr i64 %RAX35 to ptr
  %memload36 = load i64, ptr %37, align 1
  %memload37 = load i32, ptr %RBP_N.24, align 1
  %RAX38 = sext i32 %memload37 to i64
  %RAX42 = shl i64 %RAX38, 2
  %ZF39 = icmp eq i64 %RAX42, 0
  %highbit40 = and i64 -9223372036854775808, %RAX42
  %SF41 = icmp ne i64 %highbit40, 0
  %RAX46 = add nsw i64 %RAX42, %memload36
  %highbit43 = and i64 -9223372036854775808, %RAX46
  %SF44 = icmp ne i64 %highbit43, 0
  %ZF45 = icmp eq i64 %RAX46, 0
  %memload47 = load i32, ptr %RBP_N.24, align 1
  %EDX = add nsw i32 %memload47, %EAX
  %highbit48 = and i32 -2147483648, %EDX
  %SF49 = icmp ne i32 %highbit48, 0
  %ZF50 = icmp eq i32 %EDX, 0
  %38 = inttoptr i64 %RAX46 to ptr
  store i32 %EDX, ptr %38, align 1
  %39 = zext i8 1 to i32
  %40 = load i32, ptr %RBP_N.24, align 1
  %41 = add i32 %40, %39
  %42 = and i32 %41, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF51 = icmp eq i32 %44, 0
  store i32 %41, ptr %RBP_N.24, align 1
  br label %bb.3
}

declare dso_local void @free(ptr)

define dso_local void @freeMatrix(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.24, align 1
  %3 = ptrtoint ptr %stktop_8 to i64
  %4 = add i64 %3, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 %arg2, ptr %5, align 1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %memload = load i32, ptr %RBP_N.4, align 1
  %6 = ptrtoint ptr %stktop_8 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 1
  %10 = sub i32 %memload, %9
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %9)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF = icmp eq i32 %10, 0
  %highbit = and i32 -2147483648, %10
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %9)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %SFAndOF_JL = icmp ne i1 %SF, %OF
  br i1 %SFAndOF_JL, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %16 = inttoptr i64 %memload1 to ptr
  call void @free(ptr %16)
  ret void

bb.1:                                             ; preds = %bb.2
  %memload2 = load i32, ptr %RBP_N.4, align 1
  %RAX = sext i32 %memload2 to i64
  %memref-idxreg = mul i64 8, %RAX
  %memload3 = load i64, ptr %RBP_N.24, align 1
  %RAX7 = add nsw i64 %memload3, %memref-idxreg
  %highbit4 = and i64 -9223372036854775808, %RAX7
  %SF5 = icmp ne i64 %highbit4, 0
  %ZF6 = icmp eq i64 %RAX7, 0
  %17 = inttoptr i64 %RAX7 to ptr
  %memload8 = load i64, ptr %17, align 1
  %18 = inttoptr i64 %memload8 to ptr
  call void @free(ptr %18)
  %19 = zext i8 1 to i32
  %20 = load i32, ptr %RBP_N.4, align 1
  %21 = add i32 %20, %19
  %22 = and i32 %21, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF9 = icmp eq i32 %24, 0
  store i32 %21, ptr %RBP_N.4, align 1
  br label %bb.2
}

declare dso_local i32 @putchar(i32)

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 3, ptr %RBP_N.12, align 1
  store i32 4, ptr %RBP_N.16, align 1
  %memload = load i32, ptr %RBP_N.16, align 1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %RAX = call i64 @createMatrix(i32 %memload1, i32 %memload)
  store i64 %RAX, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %entry
  %memload2 = load i32, ptr %RBP_N.4, align 1
  %6 = load i32, ptr %RBP_N.12, align 1
  %7 = sub i32 %memload2, %6
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %6)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %6)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %SFAndOF_JL = icmp ne i1 %SF, %OF
  br i1 %SFAndOF_JL, label %bb.1, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload3 = load i32, ptr %RBP_N.12, align 1
  %memload4 = load i64, ptr %RBP_N.24, align 1
  call void @freeMatrix(i64 %memload4, i32 %memload3)
  ret i32 0

bb.1:                                             ; preds = %bb.5
  store i32 0, ptr %RBP_N.8, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %memload5 = load i32, ptr %RBP_N.8, align 1
  %13 = load i32, ptr %RBP_N.16, align 1
  %14 = sub i32 %memload5, %13
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload5, i32 %13)
  %CF6 = extractvalue { i32, i1 } %15, 1
  %ZF7 = icmp eq i32 %14, 0
  %highbit8 = and i32 -2147483648, %14
  %SF9 = icmp ne i32 %highbit8, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload5, i32 %13)
  %OF10 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF11 = icmp eq i32 %19, 0
  %SFAndOF_JL34 = icmp ne i1 %SF9, %OF10
  br i1 %SFAndOF_JL34, label %bb.2, label %bb.4

bb.4:                                             ; preds = %bb.3
  %EAX = call i32 @putchar(i32 10)
  %20 = zext i8 1 to i32
  %21 = load i32, ptr %RBP_N.4, align 1
  %22 = add i32 %21, %20
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF12 = icmp eq i32 %25, 0
  store i32 %22, ptr %RBP_N.4, align 1
  br label %bb.5

bb.2:                                             ; preds = %bb.3
  %memload13 = load i32, ptr %RBP_N.4, align 1
  %RAX14 = sext i32 %memload13 to i64
  %memref-idxreg = mul i64 8, %RAX14
  %memload15 = load i64, ptr %RBP_N.24, align 1
  %RAX19 = add nsw i64 %memload15, %memref-idxreg
  %highbit16 = and i64 -9223372036854775808, %RAX19
  %SF17 = icmp ne i64 %highbit16, 0
  %ZF18 = icmp eq i64 %RAX19, 0
  %26 = inttoptr i64 %RAX19 to ptr
  %memload20 = load i64, ptr %26, align 1
  %memload21 = load i32, ptr %RBP_N.8, align 1
  %RAX22 = sext i32 %memload21 to i64
  %RAX26 = shl i64 %RAX22, 2
  %ZF23 = icmp eq i64 %RAX26, 0
  %highbit24 = and i64 -9223372036854775808, %RAX26
  %SF25 = icmp ne i64 %highbit24, 0
  %RAX30 = add nsw i64 %RAX26, %memload20
  %highbit27 = and i64 -9223372036854775808, %RAX30
  %SF28 = icmp ne i64 %highbit27, 0
  %ZF29 = icmp eq i64 %RAX30, 0
  %27 = inttoptr i64 %RAX30 to ptr
  %memload31 = load i32, ptr %27, align 1
  %EAX32 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([20 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload31, i64 %memload20)
  %28 = zext i8 1 to i32
  %29 = load i32, ptr %RBP_N.8, align 1
  %30 = add i32 %29, %28
  %31 = and i32 %30, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF33 = icmp eq i32 %33, 0
  store i32 %30, ptr %RBP_N.8, align 1
  br label %bb.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
