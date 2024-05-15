; ModuleID = 'factorial'
source_filename = "factorial"

@rodata_16 = private unnamed_addr constant [63 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00All test cases passed!\00Some test cases failed.\00", align 8, !ROData_SecInfo !0

define dso_local i32 @factorial(i32 %arg1) {
entry:
  %EAX-SKT-LOC = alloca i32, align 4
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %2 = load i32, ptr %RBP_N.4, align 1
  %3 = zext i32 %2 to i64
  %4 = zext i32 0 to i64
  %5 = sub i64 %3, %4
  %6 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %3, i64 %4)
  %CF = extractvalue { i64, i1 } %6, 1
  %ZF = icmp eq i64 %5, 0
  %highbit = and i64 -9223372036854775808, %5
  %SF = icmp ne i64 %highbit, 0
  %7 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 %4)
  %OF = extractvalue { i64, i1 } %7, 1
  %8 = and i64 %5, 255
  %9 = call i64 @llvm.ctpop.i64(i64 %8)
  %10 = and i64 %9, 1
  %PF = icmp eq i64 %10, 0
  %CmpSF_JNS = icmp eq i1 %SF, false
  br i1 %CmpSF_JNS, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %EAX-SKT-LOC, align 1
  br label %bb.5

bb.2:                                             ; preds = %entry
  %11 = load i32, ptr %RBP_N.4, align 1
  %12 = zext i32 %11 to i64
  %13 = zext i32 0 to i64
  %14 = sub i64 %12, %13
  %15 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %13)
  %CF1 = extractvalue { i64, i1 } %15, 1
  %ZF2 = icmp eq i64 %14, 0
  %highbit3 = and i64 -9223372036854775808, %14
  %SF4 = icmp ne i64 %highbit3, 0
  %16 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %12, i64 %13)
  %OF5 = extractvalue { i64, i1 } %16, 1
  %17 = and i64 %14, 255
  %18 = call i64 @llvm.ctpop.i64(i64 %17)
  %19 = and i64 %18, 1
  %PF6 = icmp eq i64 %19, 0
  %CmpZF_JNE = icmp eq i1 %ZF2, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %EAX-SKT-LOC, align 1
  br label %bb.5

bb.4:                                             ; preds = %bb.2
  %memload = load i32, ptr %RBP_N.4, align 1
  %EAX = sub i32 %memload, 1
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 1)
  %CF7 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF8 = icmp eq i32 %23, 0
  %ZF9 = icmp eq i32 %EAX, 0
  %highbit10 = and i32 -2147483648, %EAX
  %SF11 = icmp ne i32 %highbit10, 0
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 1)
  %OF12 = extractvalue { i32, i1 } %24, 1
  %EAX13 = call i32 @factorial(i32 %EAX)
  %memload14 = load i32, ptr %RBP_N.4, align 1
  %EAX15 = mul i32 %EAX13, %memload14
  store i32 %EAX15, ptr %EAX-SKT-LOC, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.1
  %EAX16 = load i32, ptr %EAX-SKT-LOC, align 1
  ret i32 %EAX16
}

define dso_local i32 @run_tests() {
entry:
  %EAX-SKT-LOC = alloca i32, align 4
  %stktop_8 = alloca i8, i32 8, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  store i64 3735928559, ptr %stktop_8, align 8
  %RBP = ptrtoint ptr %stktop_8 to i64
  %EAX = call i32 @factorial(i32 0)
  %0 = sub i32 %EAX, 1
  %1 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 1)
  %CF = extractvalue { i32, i1 } %1, 1
  %ZF = icmp eq i32 %0, 0
  %highbit = and i32 -2147483648, %0
  %SF = icmp ne i32 %highbit, 0
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 1)
  %OF = extractvalue { i32, i1 } %2, 1
  %3 = and i32 %0, 255
  %4 = call i32 @llvm.ctpop.i32(i32 %3)
  %5 = and i32 %4, 1
  %PF = icmp eq i32 %5, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %EAX-SKT-LOC, align 1
  br label %bb.9

bb.2:                                             ; preds = %entry
  %EAX1 = call i32 @factorial(i32 5)
  %6 = sub i32 %EAX1, 120
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX1, i32 120)
  %CF2 = extractvalue { i32, i1 } %7, 1
  %ZF3 = icmp eq i32 %6, 0
  %highbit4 = and i32 -2147483648, %6
  %SF5 = icmp ne i32 %highbit4, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX1, i32 120)
  %OF6 = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF7 = icmp eq i32 %11, 0
  %CmpZF_JNE = icmp eq i1 %ZF3, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %EAX8 = call i32 @factorial(i32 6)
  %12 = sub i32 %EAX8, 720
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX8, i32 720)
  %CF9 = extractvalue { i32, i1 } %13, 1
  %ZF10 = icmp eq i32 %12, 0
  %highbit11 = and i32 -2147483648, %12
  %SF12 = icmp ne i32 %highbit11, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX8, i32 720)
  %OF13 = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF14 = icmp eq i32 %17, 0
  %CmpZF_JNE28 = icmp eq i1 %ZF10, false
  br i1 %CmpZF_JNE28, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %EAX15 = call i32 @factorial(i32 10)
  %18 = sub i32 %EAX15, 3628800
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX15, i32 3628800)
  %CF16 = extractvalue { i32, i1 } %19, 1
  %ZF17 = icmp eq i32 %18, 0
  %highbit18 = and i32 -2147483648, %18
  %SF19 = icmp ne i32 %highbit18, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX15, i32 3628800)
  %OF20 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF21 = icmp eq i32 %23, 0
  %CmpZF_JE29 = icmp eq i1 %ZF17, true
  br i1 %CmpZF_JE29, label %bb.6, label %bb.5

bb.6:                                             ; preds = %bb.4
  %EAX22 = call i32 @factorial(i32 -5)
  %24 = and i32 %EAX22, %EAX22
  %highbit23 = and i32 -2147483648, %24
  %SF24 = icmp ne i32 %highbit23, 0
  %ZF25 = icmp eq i32 %24, 0
  %25 = and i32 %24, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF26 = icmp eq i32 %27, 0
  %CmpZF_JE30 = icmp eq i1 %ZF25, true
  br i1 %CmpZF_JE30, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 0, ptr %EAX-SKT-LOC, align 1
  br label %bb.9

bb.8:                                             ; preds = %bb.6
  store i32 1, ptr %EAX-SKT-LOC, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.2
  store i32 0, ptr %EAX-SKT-LOC, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.5, %bb.7, %bb.1
  %EAX27 = load i32, ptr %EAX-SKT-LOC, align 1
  ret i32 %EAX27
}

declare dso_local i32 @puts(ptr)

define dso_local i32 @main() {
entry:
  %RSP_P.0 = alloca i64, align 1
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %EAX = call i32 @run_tests()
  %0 = trunc i32 %EAX to i8
  %1 = trunc i32 %EAX to i8
  %2 = and i8 %0, %1
  %highbit = and i8 -128, %2
  %SF = icmp ne i8 %highbit, 0
  %ZF = icmp eq i8 %2, 0
  %3 = call i8 @llvm.ctpop.i8(i8 %2)
  %4 = and i8 %3, 1
  %PF = icmp eq i8 %4, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %EAX1 = call i32 @puts(ptr getelementptr inbounds ([63 x i8], ptr @rodata_16, i32 0, i32 16))
  br label %bb.3

bb.2:                                             ; preds = %entry
  %EAX2 = call i32 @puts(ptr getelementptr inbounds ([63 x i8], ptr @rodata_16, i32 0, i32 39))
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
