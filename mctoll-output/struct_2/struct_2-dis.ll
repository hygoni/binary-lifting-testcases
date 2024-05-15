; ModuleID = 'struct_2'
source_filename = "struct_2"

@rodata_16 = private unnamed_addr constant [88 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\ED\95\99\EC\83\9D ID: %d, \EC\A0\90\EC\88\98: %.1f\0A\00\00\00\00\00\00\00\00\00\A0U@\00\00\00\00\00\A0V@\00\00\00\00\00\A0T@\00\00\00\00\00 V@\00\00\00\00\00 W@", align 8, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

define dso_local i64 @createStudent(i32 %arg1, double %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.20, align 1
  store double %arg2, ptr %stktop_8, align 1
  %3 = zext i32 16 to i64
  %4 = call ptr @malloc(i64 %3)
  %RAX = ptrtoint ptr %4 to i64
  store i64 %RAX, ptr %RBP_N.8, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i32, ptr %RBP_N.20, align 1
  %5 = inttoptr i64 %memload to ptr
  store i32 %memload1, ptr %5, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memload3 = load double, ptr %stktop_8, align 1
  %memref-disp = add i64 %memload2, 8
  %6 = inttoptr i64 %memref-disp to ptr
  store double %memload3, ptr %6, align 1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload4
}

declare dso_local i32 @printf(ptr, ...)

declare dso_local void @free(ptr)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %memload = load i64, ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 48), align 1, !ROData_Content !1
  %XMM0 = bitcast i64 %memload to double
  %RAX = call i64 @createStudent(i32 101, double %XMM0)
  store i64 %RAX, ptr %stktop_8, align 1
  %memload1 = load i64, ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 56), align 1, !ROData_Content !2
  %XMM02 = bitcast i64 %memload1 to double
  %RAX3 = call i64 @createStudent(i32 102, double %XMM02)
  store i64 %RAX3, ptr %RBP_N.40, align 1
  %memload4 = load i64, ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 64), align 1, !ROData_Content !3
  %XMM05 = bitcast i64 %memload4 to double
  %RAX6 = call i64 @createStudent(i32 103, double %XMM05)
  store i64 %RAX6, ptr %RBP_N.32, align 1
  %memload7 = load i64, ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 72), align 1, !ROData_Content !4
  %XMM08 = bitcast i64 %memload7 to double
  %RAX9 = call i64 @createStudent(i32 104, double %XMM08)
  store i64 %RAX9, ptr %RBP_N.24, align 1
  %memload10 = load i64, ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 80), align 1, !ROData_Content !5
  %XMM011 = bitcast i64 %memload10 to double
  %RAX12 = call i64 @createStudent(i32 105, double %XMM011)
  store i64 %RAX12, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %6 = load i32, ptr %RBP_N.4, align 1
  %7 = zext i32 %6 to i64
  %8 = zext i32 4 to i64
  %9 = sub i64 %7, %8
  %10 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %8)
  %CF = extractvalue { i64, i1 } %10, 1
  %ZF = icmp eq i64 %9, 0
  %highbit = and i64 -9223372036854775808, %9
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %7, i64 %8)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = and i64 %9, 255
  %13 = call i64 @llvm.ctpop.i64(i64 %12)
  %14 = and i64 %13, 1
  %PF = icmp eq i64 %14, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  ret i32 0

bb.1:                                             ; preds = %bb.2
  %memload13 = load i32, ptr %RBP_N.4, align 1
  %RAX14 = sext i32 %memload13 to i64
  %15 = ptrtoint ptr %stktop_8 to i64
  %sc-m = mul i64 8, %RAX14
  %idx-a = add i64 %15, %sc-m
  %16 = inttoptr i64 %idx-a to ptr
  %memload15 = load i64, ptr %16, align 1
  %memref-disp = add i64 %memload15, 8
  %17 = inttoptr i64 %memref-disp to ptr
  %memload16 = load i64, ptr %17, align 1
  %memload17 = load i32, ptr %RBP_N.4, align 1
  %RAX18 = sext i32 %memload17 to i64
  %18 = ptrtoint ptr %stktop_8 to i64
  %sc-m19 = mul i64 8, %RAX18
  %idx-a20 = add i64 %18, %sc-m19
  %19 = inttoptr i64 %idx-a20 to ptr
  %memload21 = load i64, ptr %19, align 1
  %20 = inttoptr i64 %memload21 to ptr
  %memload22 = load i32, ptr %20, align 1
  %XMM023 = bitcast i64 %memload16 to double
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload22, i64 %memload16, double %XMM023)
  %memload24 = load i32, ptr %RBP_N.4, align 1
  %RAX25 = sext i32 %memload24 to i64
  %21 = ptrtoint ptr %stktop_8 to i64
  %sc-m26 = mul i64 8, %RAX25
  %idx-a27 = add i64 %21, %sc-m26
  %22 = inttoptr i64 %idx-a27 to ptr
  %memload28 = load i64, ptr %22, align 1
  %23 = inttoptr i64 %memload28 to ptr
  call void @free(ptr %23)
  %24 = zext i8 1 to i32
  %25 = load i32, ptr %RBP_N.4, align 1
  %26 = add i32 %25, %24
  %27 = and i32 %26, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF29 = icmp eq i32 %29, 0
  store i32 %26, ptr %RBP_N.4, align 1
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
!1 = !{ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 48)}
!2 = !{ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 56)}
!3 = !{ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 64)}
!4 = !{ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 72)}
!5 = !{ptr getelementptr inbounds ([88 x i8], ptr @rodata_16, i32 0, i32 80)}
