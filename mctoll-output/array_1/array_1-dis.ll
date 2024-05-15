; ModuleID = 'array_1'
source_filename = "array_1"

@rodata_16 = private unnamed_addr constant [20 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00%d \00", align 8, !ROData_SecInfo !0

declare dso_local i32 @putchar(i32)

declare dso_local i32 @printf(ptr, ...)

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
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 1, ptr %stktop_8, align 1
  %6 = ptrtoint ptr %stktop_8 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 1
  store i32 3, ptr %RBP_N.24, align 1
  store i32 4, ptr %RBP_N.20, align 1
  store i32 5, ptr %RBP_N.16, align 1
  %RAX = ptrtoint ptr %stktop_8 to i64
  %RAX1 = add i64 %RAX, 16
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RAX, i64 16)
  %CF = extractvalue { i64, i1 } %9, 1
  %10 = and i64 %RAX1, 255
  %11 = call i64 @llvm.ctpop.i64(i64 %10)
  %12 = and i64 %11, 1
  %PF = icmp eq i64 %12, 0
  %ZF = icmp eq i64 %RAX1, 0
  %highbit = and i64 -9223372036854775808, %RAX1
  %SF = icmp ne i64 %highbit, 0
  %13 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %RAX, i64 16)
  %OF = extractvalue { i64, i1 } %13, 1
  store i64 %RAX1, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %memload = load i32, ptr %RBP_N.12, align 1
  %14 = sub i32 %memload, 4
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 4)
  %CF2 = extractvalue { i32, i1 } %15, 1
  %ZF3 = icmp eq i32 %14, 0
  %highbit4 = and i32 -2147483648, %14
  %SF5 = icmp ne i32 %highbit4, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 4)
  %OF6 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF7 = icmp eq i32 %19, 0
  %CFCmp_JBE = icmp eq i1 %CF2, true
  %ZFCmp_JBE = icmp eq i1 %ZF3, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  %EAX = call i32 @putchar(i32 10)
  ret i32 0

bb.1:                                             ; preds = %bb.2
  %memload8 = load i64, ptr %RBP_N.8, align 1
  %memref-disp = add i64 %memload8, -4
  store i64 %memref-disp, ptr %RBP_N.8, align 1
  %20 = inttoptr i64 %memload8 to ptr
  %memload9 = load i32, ptr %20, align 1
  %EAX10 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([20 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload9, i64 %memref-disp)
  %21 = zext i8 1 to i32
  %22 = load i32, ptr %RBP_N.12, align 1
  %23 = add i32 %22, %21
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF11 = icmp eq i32 %26, 0
  store i32 %23, ptr %RBP_N.12, align 1
  br label %bb.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
