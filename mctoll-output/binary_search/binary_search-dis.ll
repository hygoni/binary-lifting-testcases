; ModuleID = 'binary_search'
source_filename = "binary_search"

@rodata_16 = private unnamed_addr constant [91 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00Element %d is not present in the array\0A\00Element %d is present at index %d\0A\00", align 8, !ROData_SecInfo !0

define dso_local i32 @binarySearch(i64 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) {
entry:
  %EAX-SKT-LOC = alloca i32, align 4
  %stktop_4 = alloca i8, i32 44, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.32 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.4 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.24, align 1
  store i32 %arg2, ptr %RBP_N.28, align 1
  store i32 %arg3, ptr %RBP_N.32, align 1
  store i32 %arg4, ptr %stktop_4, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4, %entry
  %memload = load i32, ptr %RBP_N.28, align 1
  %5 = load i32, ptr %RBP_N.32, align 1
  %6 = sub i32 %memload, %5
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %5)
  %CF = extractvalue { i32, i1 } %7, 1
  %ZF = icmp eq i32 %6, 0
  %highbit = and i32 -2147483648, %6
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %5)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 -1, ptr %EAX-SKT-LOC, align 1
  br label %bb.8

bb.1:                                             ; preds = %bb.6
  %memload1 = load i32, ptr %RBP_N.32, align 1
  %12 = load i32, ptr %RBP_N.28, align 1
  %EAX = sub i32 %memload1, %12
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %12)
  %CF2 = extractvalue { i32, i1 } %13, 1
  %ZF3 = icmp eq i32 %EAX, 0
  %highbit4 = and i32 -2147483648, %EAX
  %SF5 = icmp ne i32 %highbit4, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %12)
  %OF6 = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %EAX, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF7 = icmp eq i32 %17, 0
  %EDX = lshr i32 %EAX, 31
  %ZF8 = icmp eq i32 %EDX, 0
  %highbit9 = and i32 -2147483648, %EDX
  %SF10 = icmp ne i32 %highbit9, 0
  %EAX14 = add nsw i32 %EAX, %EDX
  %highbit11 = and i32 -2147483648, %EAX14
  %SF12 = icmp ne i32 %highbit11, 0
  %ZF13 = icmp eq i32 %EAX14, 0
  %EAX18 = lshr i32 %EAX14, 1
  %ZF15 = icmp eq i32 %EAX18, 0
  %highbit16 = and i32 -2147483648, %EAX18
  %SF17 = icmp ne i32 %highbit16, 0
  %memload19 = load i32, ptr %RBP_N.28, align 1
  %EAX23 = add nsw i32 %memload19, %EAX18
  %highbit20 = and i32 -2147483648, %EAX23
  %SF21 = icmp ne i32 %highbit20, 0
  %ZF22 = icmp eq i32 %EAX23, 0
  store i32 %EAX23, ptr %RBP_N.4, align 1
  %memload24 = load i32, ptr %RBP_N.4, align 1
  %RAX = sext i32 %memload24 to i64
  %memref-idxreg = mul i64 4, %RAX
  %memload25 = load i64, ptr %RBP_N.24, align 1
  %RAX29 = add nsw i64 %memload25, %memref-idxreg
  %highbit26 = and i64 -9223372036854775808, %RAX29
  %SF27 = icmp ne i64 %highbit26, 0
  %ZF28 = icmp eq i64 %RAX29, 0
  %18 = inttoptr i64 %RAX29 to ptr
  %memload30 = load i32, ptr %18, align 1
  %19 = load i32, ptr %stktop_4, align 1
  %20 = zext i32 %19 to i64
  %21 = zext i32 %memload30 to i64
  %22 = sub i64 %20, %21
  %23 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %20, i64 %21)
  %CF31 = extractvalue { i64, i1 } %23, 1
  %ZF32 = icmp eq i64 %22, 0
  %highbit33 = and i64 -9223372036854775808, %22
  %SF34 = icmp ne i64 %highbit33, 0
  %24 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %20, i64 %21)
  %OF35 = extractvalue { i64, i1 } %24, 1
  %25 = and i64 %22, 255
  %26 = call i64 @llvm.ctpop.i64(i64 %25)
  %27 = and i64 %26, 1
  %PF36 = icmp eq i64 %27, 0
  %CmpZF_JNE = icmp eq i1 %ZF32, false
  br i1 %CmpZF_JNE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload37 = load i32, ptr %RBP_N.4, align 1
  store i32 %memload37, ptr %EAX-SKT-LOC, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.2
  %EAX38 = load i32, ptr %EAX-SKT-LOC, align 1
  ret i32 %EAX38

bb.3:                                             ; preds = %bb.1
  %memload39 = load i32, ptr %RBP_N.4, align 1
  %RAX40 = sext i32 %memload39 to i64
  %memref-idxreg41 = mul i64 4, %RAX40
  %memload42 = load i64, ptr %RBP_N.24, align 1
  %RAX46 = add nsw i64 %memload42, %memref-idxreg41
  %highbit43 = and i64 -9223372036854775808, %RAX46
  %SF44 = icmp ne i64 %highbit43, 0
  %ZF45 = icmp eq i64 %RAX46, 0
  %28 = inttoptr i64 %RAX46 to ptr
  %memload47 = load i32, ptr %28, align 1
  %29 = load i32, ptr %stktop_4, align 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %memload47 to i64
  %32 = sub i64 %30, %31
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %31)
  %CF48 = extractvalue { i64, i1 } %33, 1
  %ZF49 = icmp eq i64 %32, 0
  %highbit50 = and i64 -9223372036854775808, %32
  %SF51 = icmp ne i64 %highbit50, 0
  %34 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %30, i64 %31)
  %OF52 = extractvalue { i64, i1 } %34, 1
  %35 = and i64 %32, 255
  %36 = call i64 @llvm.ctpop.i64(i64 %35)
  %37 = and i64 %36, 1
  %PF53 = icmp eq i64 %37, 0
  %CmpZF_JLE70 = icmp eq i1 %ZF49, true
  %CmpOF_JLE71 = icmp ne i1 %SF51, %OF52
  %ZFOrSF_JLE72 = or i1 %CmpZF_JLE70, %CmpOF_JLE71
  br i1 %ZFOrSF_JLE72, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload54 = load i32, ptr %RBP_N.4, align 1
  %EAX61 = add i32 %memload54, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload54, i32 1)
  %CF55 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX61, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF56 = icmp eq i32 %41, 0
  %ZF57 = icmp eq i32 %EAX61, 0
  %highbit58 = and i32 -2147483648, %EAX61
  %SF59 = icmp ne i32 %highbit58, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload54, i32 1)
  %OF60 = extractvalue { i32, i1 } %42, 1
  store i32 %EAX61, ptr %RBP_N.28, align 1
  br label %bb.6

bb.5:                                             ; preds = %bb.3
  %memload62 = load i32, ptr %RBP_N.4, align 1
  %EAX69 = sub i32 %memload62, 1
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload62, i32 1)
  %CF63 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %EAX69, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF64 = icmp eq i32 %46, 0
  %ZF65 = icmp eq i32 %EAX69, 0
  %highbit66 = and i32 -2147483648, %EAX69
  %SF67 = icmp ne i32 %highbit66, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload62, i32 1)
  %OF68 = extractvalue { i32, i1 } %47, 1
  store i32 %EAX69, ptr %RBP_N.32, align 1
  br label %bb.6
}

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %9 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 2, ptr %stktop_8, align 1
  %10 = ptrtoint ptr %stktop_8 to i64
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to ptr
  store i32 4, ptr %12, align 1
  store i32 6, ptr %RBP_N.40, align 1
  store i32 8, ptr %RBP_N.36, align 1
  store i32 10, ptr %RBP_N.32, align 1
  store i32 12, ptr %RBP_N.28, align 1
  store i32 14, ptr %RBP_N.24, align 1
  store i32 16, ptr %RBP_N.20, align 1
  store i32 8, ptr %RBP_N.4, align 1
  store i32 10, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %memref-disp = add i32 %memload, -1
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %RAX = ptrtoint ptr %stktop_8 to i64
  %EAX = call i32 @binarySearch(i64 %RAX, i32 0, i32 %memref-disp, i32 %memload1)
  store i32 %EAX, ptr %RBP_N.12, align 1
  %13 = load i32, ptr %RBP_N.12, align 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 -1 to i64
  %16 = sub i64 %14, %15
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %15)
  %CF = extractvalue { i64, i1 } %17, 1
  %ZF = icmp eq i64 %16, 0
  %highbit = and i64 -9223372036854775808, %16
  %SF = icmp ne i64 %highbit, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %14, i64 %15)
  %OF = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF = icmp eq i64 %21, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload2 = load i32, ptr %RBP_N.8, align 1
  %EAX3 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([91 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload2)
  br label %bb.3

bb.2:                                             ; preds = %entry
  %memload4 = load i32, ptr %RBP_N.12, align 1
  %memload5 = load i32, ptr %RBP_N.8, align 1
  %EAX6 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([91 x i8], ptr @rodata_16, i32 0, i32 56), i32 %memload5, i32 %memload4)
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  ret i32 0
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
