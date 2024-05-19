; ModuleID = 'pointer_arithmetic'
source_filename = "pointer_arithmetic"

@rodata_16 = private unnamed_addr constant [155 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00Elements of the arrays using pointer arithmetic:\00\00\00\00\00\00\00\00Element %d: %d (from arr1), %d (from arr2)\0A\00\00\00\00\00Sum of corresponding elements: %d\0A\00", align 8, !ROData_SecInfo !0

declare dso_local i32 @puts(ptr)

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.68 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.44 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.40 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 52
  %RBP_N.36 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 56
  %RBP_N.32 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 60
  %RBP_N.28 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 72
  %RBP_N.16 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 84
  %RBP_N.4 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %12 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 1, ptr %RBP_N.48, align 1
  store i32 2, ptr %RBP_N.44, align 1
  store i32 3, ptr %RBP_N.40, align 1
  store i32 4, ptr %RBP_N.36, align 1
  store i32 5, ptr %RBP_N.32, align 1
  store i32 6, ptr %stktop_8, align 1
  %13 = ptrtoint ptr %stktop_8 to i64
  %14 = add i64 %13, 4
  %15 = inttoptr i64 %14 to ptr
  store i32 7, ptr %15, align 1
  store i32 8, ptr %RBP_N.72, align 1
  store i32 9, ptr %RBP_N.68, align 1
  store i32 10, ptr %RBP_N.64, align 1
  %RAX = ptrtoint ptr %RBP_N.48 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  %RAX1 = ptrtoint ptr %stktop_8 to i64
  store i64 %RAX1, ptr %RBP_N.24, align 1
  %EAX = call i32 @puts(ptr getelementptr inbounds ([155 x i8], ptr @rodata_16, i32 0, i32 16))
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %16 = load i32, ptr %RBP_N.4, align 1
  %17 = zext i32 %16 to i64
  %18 = zext i32 4 to i64
  %19 = sub i64 %17, %18
  %20 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %18)
  %CF = extractvalue { i64, i1 } %20, 1
  %ZF = icmp eq i64 %19, 0
  %highbit = and i64 -9223372036854775808, %19
  %SF = icmp ne i64 %highbit, 0
  %21 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %17, i64 %18)
  %OF = extractvalue { i64, i1 } %21, 1
  %22 = and i64 %19, 255
  %23 = call i64 @llvm.ctpop.i64(i64 %22)
  %24 = and i64 %23, 1
  %PF = icmp eq i64 %24, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  ret i32 0

bb.1:                                             ; preds = %bb.2
  %memload = load i32, ptr %RBP_N.4, align 1
  %RAX2 = sext i32 %memload to i64
  %memref-idxreg = mul i64 4, %RAX2
  %memload3 = load i64, ptr %RBP_N.24, align 1
  %RAX7 = add nsw i64 %memload3, %memref-idxreg
  %highbit4 = and i64 -9223372036854775808, %RAX7
  %SF5 = icmp ne i64 %highbit4, 0
  %ZF6 = icmp eq i64 %RAX7, 0
  %25 = inttoptr i64 %RAX7 to ptr
  %memload8 = load i32, ptr %25, align 1
  %memload9 = load i32, ptr %RBP_N.4, align 1
  %RAX10 = sext i32 %memload9 to i64
  %memref-idxreg11 = mul i64 4, %RAX10
  %memload12 = load i64, ptr %RBP_N.16, align 1
  %RAX16 = add nsw i64 %memload12, %memref-idxreg11
  %highbit13 = and i64 -9223372036854775808, %RAX16
  %SF14 = icmp ne i64 %highbit13, 0
  %ZF15 = icmp eq i64 %RAX16, 0
  %26 = inttoptr i64 %RAX16 to ptr
  %memload17 = load i32, ptr %26, align 1
  %memload18 = load i32, ptr %RBP_N.4, align 1
  %memref-disp = add i32 %memload18, 1
  %EAX19 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([155 x i8], ptr @rodata_16, i32 0, i32 72), i32 %memref-disp, i32 %memload17, i32 %memload8)
  %memload20 = load i32, ptr %RBP_N.4, align 1
  %RAX21 = sext i32 %memload20 to i64
  %memref-idxreg22 = mul i64 4, %RAX21
  %memload23 = load i64, ptr %RBP_N.16, align 1
  %RAX27 = add nsw i64 %memload23, %memref-idxreg22
  %highbit24 = and i64 -9223372036854775808, %RAX27
  %SF25 = icmp ne i64 %highbit24, 0
  %ZF26 = icmp eq i64 %RAX27, 0
  %27 = inttoptr i64 %RAX27 to ptr
  %memload28 = load i32, ptr %27, align 1
  %memload29 = load i32, ptr %RBP_N.4, align 1
  %RAX30 = sext i32 %memload29 to i64
  %memref-idxreg31 = mul i64 4, %RAX30
  %memload32 = load i64, ptr %RBP_N.24, align 1
  %RAX36 = add nsw i64 %memload32, %memref-idxreg31
  %highbit33 = and i64 -9223372036854775808, %RAX36
  %SF34 = icmp ne i64 %highbit33, 0
  %ZF35 = icmp eq i64 %RAX36, 0
  %28 = inttoptr i64 %RAX36 to ptr
  %memload37 = load i32, ptr %28, align 1
  %EAX41 = add nsw i32 %memload37, %memload28
  %highbit38 = and i32 -2147483648, %EAX41
  %SF39 = icmp ne i32 %highbit38, 0
  %ZF40 = icmp eq i32 %EAX41, 0
  store i32 %EAX41, ptr %RBP_N.28, align 1
  %memload42 = load i32, ptr %RBP_N.28, align 1
  %EAX43 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([155 x i8], ptr @rodata_16, i32 0, i32 120), i32 %memload42, i32 %memload28, i64 %memref-idxreg31)
  %29 = zext i8 1 to i32
  %30 = load i32, ptr %RBP_N.4, align 1
  %31 = add i32 %30, %29
  %32 = and i32 %31, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF44 = icmp eq i32 %34, 0
  store i32 %31, ptr %RBP_N.4, align 1
  br label %bb.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
