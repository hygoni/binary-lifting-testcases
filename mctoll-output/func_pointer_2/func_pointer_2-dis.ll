; ModuleID = 'func_pointer_2'
source_filename = "func_pointer_2"

@rodata_16 = private unnamed_addr constant [45 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00Ascending: \00%d \00Descending: \00", align 8, !ROData_SecInfo !0

define dso_local i32 @compareAscending(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %stktop_8, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %2 = inttoptr i64 %memload to ptr
  %memload1 = load i32, ptr %2, align 1
  %memload2 = load i64, ptr %stktop_8, align 1
  %3 = inttoptr i64 %memload2 to ptr
  %memload3 = load i32, ptr %3, align 1
  %EAX = sub i32 %memload1, %memload3
  %4 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %memload3)
  %CF = extractvalue { i32, i1 } %4, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %memload3)
  %OF = extractvalue { i32, i1 } %5, 1
  %6 = and i32 %EAX, 255
  %7 = call i32 @llvm.ctpop.i32(i32 %6)
  %8 = and i32 %7, 1
  %PF = icmp eq i32 %8, 0
  ret i32 %EAX
}

define dso_local i32 @compareDescending(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %stktop_8, align 1
  %memload = load i64, ptr %stktop_8, align 1
  %2 = inttoptr i64 %memload to ptr
  %memload1 = load i32, ptr %2, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %3 = inttoptr i64 %memload2 to ptr
  %memload3 = load i32, ptr %3, align 1
  %EAX = sub i32 %memload1, %memload3
  %4 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %memload3)
  %CF = extractvalue { i32, i1 } %4, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %memload3)
  %OF = extractvalue { i32, i1 } %5, 1
  %6 = and i32 %EAX, 255
  %7 = call i32 @llvm.ctpop.i32(i32 %6)
  %8 = and i32 %7, 1
  %PF = icmp eq i32 %8, 0
  ret i32 %EAX
}

declare dso_local void @qsort(ptr, i64, i64, ptr)

define dso_local void @sort(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %RSI = sext i32 %memload to i64
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %4 = inttoptr i64 %memload2 to ptr
  %5 = zext i32 4 to i64
  %6 = inttoptr i64 %memload1 to ptr
  call void @qsort(ptr %4, i64 %RSI, i64 %5, ptr %6)
  ret void
}

declare dso_local i32 @printf(ptr, ...)

declare dso_local i32 @putchar(i32)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 5, ptr %stktop_8, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 1
  store i32 9, ptr %RBP_N.24, align 1
  store i32 1, ptr %RBP_N.20, align 1
  store i32 5, ptr %RBP_N.16, align 1
  store i32 6, ptr %RBP_N.12, align 1
  %RAX = ptrtoint ptr %stktop_8 to i64
  %10 = ptrtoint ptr @compareAscending to i64
  call void @sort(i64 %RAX, i32 6, i64 %10)
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([45 x i8], ptr @rodata_16, i32 0, i32 16))
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %11 = load i32, ptr %RBP_N.4, align 1
  %12 = zext i32 %11 to i64
  %13 = zext i32 5 to i64
  %14 = sub i64 %12, %13
  %15 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %13)
  %CF = extractvalue { i64, i1 } %15, 1
  %ZF = icmp eq i64 %14, 0
  %highbit = and i64 -9223372036854775808, %14
  %SF = icmp ne i64 %highbit, 0
  %16 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %12, i64 %13)
  %OF = extractvalue { i64, i1 } %16, 1
  %17 = and i64 %14, 255
  %18 = call i64 @llvm.ctpop.i64(i64 %17)
  %19 = and i64 %18, 1
  %PF = icmp eq i64 %19, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  %EAX1 = call i32 @putchar(i32 10)
  %RAX2 = ptrtoint ptr %stktop_8 to i64
  %20 = ptrtoint ptr @compareDescending to i64
  call void @sort(i64 %RAX2, i32 6, i64 %20)
  %EAX3 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([45 x i8], ptr @rodata_16, i32 0, i32 32))
  store i32 0, ptr %RBP_N.8, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %21 = load i32, ptr %RBP_N.8, align 1
  %22 = zext i32 %21 to i64
  %23 = zext i32 5 to i64
  %24 = sub i64 %22, %23
  %25 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %22, i64 %23)
  %CF4 = extractvalue { i64, i1 } %25, 1
  %ZF5 = icmp eq i64 %24, 0
  %highbit6 = and i64 -9223372036854775808, %24
  %SF7 = icmp ne i64 %highbit6, 0
  %26 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %22, i64 %23)
  %OF8 = extractvalue { i64, i1 } %26, 1
  %27 = and i64 %24, 255
  %28 = call i64 @llvm.ctpop.i64(i64 %27)
  %29 = and i64 %28, 1
  %PF9 = icmp eq i64 %29, 0
  %CmpZF_JLE22 = icmp eq i1 %ZF5, true
  %CmpOF_JLE23 = icmp ne i1 %SF7, %OF8
  %ZFOrSF_JLE24 = or i1 %CmpZF_JLE22, %CmpOF_JLE23
  br i1 %ZFOrSF_JLE24, label %bb.4, label %bb.6

bb.6:                                             ; preds = %bb.5
  %EAX10 = call i32 @putchar(i32 10)
  ret i32 0

bb.4:                                             ; preds = %bb.5
  %memload = load i32, ptr %RBP_N.8, align 1
  %RAX11 = sext i32 %memload to i64
  %30 = ptrtoint ptr %stktop_8 to i64
  %sc-m = mul i64 4, %RAX11
  %idx-a = add i64 %30, %sc-m
  %31 = inttoptr i64 %idx-a to ptr
  %memload12 = load i32, ptr %31, align 1
  %EAX13 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([45 x i8], ptr @rodata_16, i32 0, i32 28), i32 %memload12)
  %32 = zext i8 1 to i32
  %33 = load i32, ptr %RBP_N.8, align 1
  %34 = add i32 %33, %32
  %35 = and i32 %34, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF14 = icmp eq i32 %37, 0
  store i32 %34, ptr %RBP_N.8, align 1
  br label %bb.5

bb.1:                                             ; preds = %bb.2
  %memload15 = load i32, ptr %RBP_N.4, align 1
  %RAX16 = sext i32 %memload15 to i64
  %38 = ptrtoint ptr %stktop_8 to i64
  %sc-m17 = mul i64 4, %RAX16
  %idx-a18 = add i64 %38, %sc-m17
  %39 = inttoptr i64 %idx-a18 to ptr
  %memload19 = load i32, ptr %39, align 1
  %EAX20 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([45 x i8], ptr @rodata_16, i32 0, i32 28), i32 %memload19)
  %40 = zext i8 1 to i32
  %41 = load i32, ptr %RBP_N.4, align 1
  %42 = add i32 %41, %40
  %43 = and i32 %42, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF21 = icmp eq i32 %45, 0
  store i32 %42, ptr %RBP_N.4, align 1
  br label %bb.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
