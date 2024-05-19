; ModuleID = 'integer_average'
source_filename = "integer_average"

@rodata_16 = private unnamed_addr constant [108 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00The numbers: \00%d \00\00\00\00\00\00\00Sum of the entered numbers: %d\0A\00Average of the entered numbers: %d\0A\00", align 8, !ROData_SecInfo !0

declare dso_local i32 @printf(ptr, ...)

declare dso_local i32 @putchar(i32)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 44
  %RBP_N.28 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 68
  %RBP_N.4 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %11 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 1, ptr %stktop_8, align 1
  %12 = ptrtoint ptr %stktop_8 to i64
  %13 = add i64 %12, 4
  %14 = inttoptr i64 %13 to ptr
  store i32 4, ptr %14, align 1
  store i32 5, ptr %RBP_N.56, align 1
  store i32 9, ptr %RBP_N.52, align 1
  store i32 8, ptr %RBP_N.48, align 1
  store i32 1, ptr %RBP_N.44, align 1
  store i32 2, ptr %RBP_N.40, align 1
  store i32 3, ptr %RBP_N.36, align 1
  store i32 4, ptr %RBP_N.32, align 1
  store i32 8, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.4, align 1
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([108 x i8], ptr @rodata_16, i32 0, i32 16))
  store i32 0, ptr %RBP_N.8, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %15 = load i32, ptr %RBP_N.8, align 1
  %16 = zext i32 %15 to i64
  %17 = zext i32 9 to i64
  %18 = sub i64 %16, %17
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %16, i64 %17)
  %CF = extractvalue { i64, i1 } %19, 1
  %ZF = icmp eq i64 %18, 0
  %highbit = and i64 -9223372036854775808, %18
  %SF = icmp ne i64 %highbit, 0
  %20 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %16, i64 %17)
  %OF = extractvalue { i64, i1 } %20, 1
  %21 = and i64 %18, 255
  %22 = call i64 @llvm.ctpop.i64(i64 %21)
  %23 = and i64 %22, 1
  %PF = icmp eq i64 %23, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  %EAX1 = call i32 @putchar(i32 10)
  %memload = load i32, ptr %RBP_N.4, align 1
  %RDX = sext i32 %memload to i64
  %RDX3 = mul i64 %RDX, 1717986919
  %24 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %RDX, i64 1717986919)
  %OF2 = extractvalue { i64, i1 } %24, 1
  %RDX7 = lshr i64 %RDX3, 32
  %ZF4 = icmp eq i64 %RDX7, 0
  %highbit5 = and i64 -9223372036854775808, %RDX7
  %SF6 = icmp ne i64 %highbit5, 0
  %25 = trunc i64 %RDX7 to i32
  %EDX = lshr i32 %25, 2
  %ZF8 = icmp eq i32 %EDX, 0
  %highbit9 = and i32 -2147483648, %EDX
  %SF10 = icmp ne i32 %highbit9, 0
  %EAX14 = lshr i32 %memload, 31
  %ZF11 = icmp eq i32 %EAX14, 0
  %highbit12 = and i32 -2147483648, %EAX14
  %SF13 = icmp ne i32 %highbit12, 0
  %EAX15 = sub i32 %EDX, %EAX14
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX, i32 %EAX14)
  %CF16 = extractvalue { i32, i1 } %26, 1
  %ZF17 = icmp eq i32 %EAX15, 0
  %highbit18 = and i32 -2147483648, %EAX15
  %SF19 = icmp ne i32 %highbit18, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX, i32 %EAX14)
  %OF20 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EAX15, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF21 = icmp eq i32 %30, 0
  store i32 %EAX15, ptr %RBP_N.12, align 1
  %memload22 = load i32, ptr %RBP_N.4, align 1
  %EAX23 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([108 x i8], ptr @rodata_16, i32 0, i32 40), i32 %memload22, i32 %EDX, i32 %EAX14)
  %memload24 = load i32, ptr %RBP_N.12, align 1
  %EAX25 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([108 x i8], ptr @rodata_16, i32 0, i32 72), i32 %memload24)
  ret i32 0

bb.1:                                             ; preds = %bb.2
  %memload26 = load i32, ptr %RBP_N.8, align 1
  %RAX = sext i32 %memload26 to i64
  %31 = ptrtoint ptr %stktop_8 to i64
  %sc-m = mul i64 4, %RAX
  %idx-a = add i64 %31, %sc-m
  %32 = inttoptr i64 %idx-a to ptr
  %memload27 = load i32, ptr %32, align 1
  %EAX28 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([108 x i8], ptr @rodata_16, i32 0, i32 30), i32 %memload27)
  %memload29 = load i32, ptr %RBP_N.8, align 1
  %RAX30 = sext i32 %memload29 to i64
  %33 = ptrtoint ptr %stktop_8 to i64
  %sc-m31 = mul i64 4, %RAX30
  %idx-a32 = add i64 %33, %sc-m31
  %34 = inttoptr i64 %idx-a32 to ptr
  %memload33 = load i32, ptr %34, align 1
  %35 = load i32, ptr %RBP_N.4, align 1
  %36 = add i32 %35, %memload33
  %37 = and i32 %36, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF34 = icmp eq i32 %39, 0
  store i32 %36, ptr %RBP_N.4, align 1
  %40 = zext i8 1 to i32
  %41 = load i32, ptr %RBP_N.8, align 1
  %42 = add i32 %41, %40
  %43 = and i32 %42, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF35 = icmp eq i32 %45, 0
  store i32 %42, ptr %RBP_N.8, align 1
  br label %bb.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
