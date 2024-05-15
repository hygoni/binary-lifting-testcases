; ModuleID = 'function_pointer'
source_filename = "function_pointer"

@rodata_16 = private unnamed_addr constant [55 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00x = %d, y = %d\0A\0A\00%d\0A\00Division by zero!\00", align 8, !ROData_SecInfo !0
@ops = dso_local global [4 x i64] [i64 4198943, i64 4198985, i64 4199025, i64 4199066], align 4

declare dso_local i64 @time(ptr)

declare dso_local void @srand(i32)

declare dso_local i32 @rand()

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %3 = inttoptr i32 0 to ptr
  %RAX = call i64 @time(ptr %3)
  %EDI = trunc i64 %RAX to i32
  call void @srand(i32 %EDI)
  %EAX = call i32 @rand()
  %RDX = sext i32 %EAX to i64
  %RDX1 = mul i64 %RDX, 1374389535
  %4 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %RDX, i64 1374389535)
  %OF = extractvalue { i64, i1 } %4, 1
  %RDX2 = lshr i64 %RDX1, 32
  %ZF = icmp eq i64 %RDX2, 0
  %highbit = and i64 -9223372036854775808, %RDX2
  %SF = icmp ne i64 %highbit, 0
  %5 = trunc i64 %RDX2 to i32
  %EDX = lshr i32 %5, 5
  %ZF3 = icmp eq i32 %EDX, 0
  %highbit4 = and i32 -2147483648, %EDX
  %SF5 = icmp ne i32 %highbit4, 0
  %ECX = lshr i32 %EAX, 31
  %ZF6 = icmp eq i32 %ECX, 0
  %highbit7 = and i32 -2147483648, %ECX
  %SF8 = icmp ne i32 %highbit7, 0
  %EDX9 = sub i32 %EDX, %ECX
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX, i32 %ECX)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF10 = icmp eq i32 %EDX9, 0
  %highbit11 = and i32 -2147483648, %EDX9
  %SF12 = icmp ne i32 %highbit11, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX, i32 %ECX)
  %OF13 = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %EDX9, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  store i32 %EDX9, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.8, align 1
  %EDX15 = mul i32 %memload, 100
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %memload, i32 100)
  %OF14 = extractvalue { i32, i1 } %11, 1
  %EAX16 = sub i32 %EAX, %EDX15
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %EDX15)
  %CF17 = extractvalue { i32, i1 } %12, 1
  %ZF18 = icmp eq i32 %EAX16, 0
  %highbit19 = and i32 -2147483648, %EAX16
  %SF20 = icmp ne i32 %highbit19, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %EDX15)
  %OF21 = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %EAX16, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF22 = icmp eq i32 %16, 0
  store i32 %EAX16, ptr %RBP_N.8, align 1
  %EAX23 = call i32 @rand()
  %RDX24 = sext i32 %EAX23 to i64
  %RDX26 = mul i64 %RDX24, 1374389535
  %17 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %RDX24, i64 1374389535)
  %OF25 = extractvalue { i64, i1 } %17, 1
  %RDX30 = lshr i64 %RDX26, 32
  %ZF27 = icmp eq i64 %RDX30, 0
  %highbit28 = and i64 -9223372036854775808, %RDX30
  %SF29 = icmp ne i64 %highbit28, 0
  %18 = trunc i64 %RDX30 to i32
  %EDX34 = lshr i32 %18, 5
  %ZF31 = icmp eq i32 %EDX34, 0
  %highbit32 = and i32 -2147483648, %EDX34
  %SF33 = icmp ne i32 %highbit32, 0
  %ECX38 = lshr i32 %EAX23, 31
  %ZF35 = icmp eq i32 %ECX38, 0
  %highbit36 = and i32 -2147483648, %ECX38
  %SF37 = icmp ne i32 %highbit36, 0
  %EDX39 = sub i32 %EDX34, %ECX38
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX34, i32 %ECX38)
  %CF40 = extractvalue { i32, i1 } %19, 1
  %ZF41 = icmp eq i32 %EDX39, 0
  %highbit42 = and i32 -2147483648, %EDX39
  %SF43 = icmp ne i32 %highbit42, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX34, i32 %ECX38)
  %OF44 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EDX39, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF45 = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %stktop_8 to i64
  %25 = add i64 %24, 4
  %26 = inttoptr i64 %25 to ptr
  store i32 %EDX39, ptr %26, align 1
  %27 = ptrtoint ptr %stktop_8 to i64
  %28 = add i64 %27, 4
  %29 = inttoptr i64 %28 to ptr
  %memload46 = load i32, ptr %29, align 1
  %EDX48 = mul i32 %memload46, 100
  %30 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %memload46, i32 100)
  %OF47 = extractvalue { i32, i1 } %30, 1
  %EAX49 = sub i32 %EAX23, %EDX48
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX23, i32 %EDX48)
  %CF50 = extractvalue { i32, i1 } %31, 1
  %ZF51 = icmp eq i32 %EAX49, 0
  %highbit52 = and i32 -2147483648, %EAX49
  %SF53 = icmp ne i32 %highbit52, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX23, i32 %EDX48)
  %OF54 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %EAX49, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF55 = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %stktop_8 to i64
  %37 = add i64 %36, 4
  %38 = inttoptr i64 %37 to ptr
  store i32 %EAX49, ptr %38, align 1
  %39 = ptrtoint ptr %stktop_8 to i64
  %40 = add i64 %39, 4
  %41 = inttoptr i64 %40 to ptr
  %memload56 = load i32, ptr %41, align 1
  %memload57 = load i32, ptr %RBP_N.8, align 1
  %EAX58 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload57, i32 %memload56, i32 %ECX38)
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %42 = load i32, ptr %RBP_N.4, align 1
  %43 = zext i32 %42 to i64
  %44 = zext i32 3 to i64
  %45 = sub i64 %43, %44
  %46 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44)
  %CF59 = extractvalue { i64, i1 } %46, 1
  %ZF60 = icmp eq i64 %45, 0
  %highbit61 = and i64 -9223372036854775808, %45
  %SF62 = icmp ne i64 %highbit61, 0
  %47 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %43, i64 %44)
  %OF63 = extractvalue { i64, i1 } %47, 1
  %48 = and i64 %45, 255
  %49 = call i64 @llvm.ctpop.i64(i64 %48)
  %50 = and i64 %49, 1
  %PF64 = icmp eq i64 %50, 0
  %CmpZF_JLE = icmp eq i1 %ZF60, true
  %CmpOF_JLE = icmp ne i1 %SF62, %OF63
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  ret i32 0

bb.1:                                             ; preds = %bb.2
  %memload65 = load i32, ptr %RBP_N.4, align 1
  %RAX66 = sext i32 %memload65 to i64
  %memref-idxreg = mul i64 8, %RAX66
  %51 = getelementptr inbounds [4 x i64], ptr @ops, i32 0, i32 0
  %52 = bitcast ptr @ops to ptr
  %53 = getelementptr inbounds [32 x i8], ptr %52, i32 0, i32 0
  %54 = ptrtoint ptr %53 to i64
  %memref-disp = add i64 %memref-idxreg, %54
  %55 = inttoptr i64 %memref-disp to ptr
  %memload67 = load i64, ptr %55, align 1
  %56 = ptrtoint ptr %stktop_8 to i64
  %57 = add i64 %56, 4
  %58 = inttoptr i64 %57 to ptr
  %memload68 = load i32, ptr %58, align 1
  %memload69 = load i32, ptr %RBP_N.8, align 1
  %59 = inttoptr i64 %memload67 to ptr
  call void %59(i32 %memload69, i32 %memload68, i32 %memload68, i64 %memload67)
  %60 = zext i8 1 to i32
  %61 = load i32, ptr %RBP_N.4, align 1
  %62 = add i32 %61, %60
  %63 = and i32 %62, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF70 = icmp eq i32 %65, 0
  store i32 %62, ptr %RBP_N.4, align 1
  br label %bb.2
}

define dso_local i32 @add(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %EAX = add nsw i32 %memload1, %memload
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %ZF = icmp eq i32 %EAX, 0
  %EAX2 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 33), i32 %EAX, i32 %memload)
  ret i32 %EAX2
}

define dso_local i32 @subtract(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %3 = load i32, ptr %RBP_N.8, align 1
  %EAX = sub i32 %memload, %3
  %4 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %3)
  %CF = extractvalue { i32, i1 } %4, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %3)
  %OF = extractvalue { i32, i1 } %5, 1
  %6 = and i32 %EAX, 255
  %7 = call i32 @llvm.ctpop.i32(i32 %6)
  %8 = and i32 %7, 1
  %PF = icmp eq i32 %8, 0
  %EAX1 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 33), i32 %EAX)
  ret i32 %EAX1
}

define dso_local i32 @multiply(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %EAX = mul i32 %memload, %memload1
  %EAX2 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 33), i32 %EAX)
  ret i32 %EAX2
}

declare dso_local i32 @puts(ptr)

define dso_local i32 @divide(i32 %arg1, i32 %arg2) {
entry:
  %EAX-SKT-LOC = alloca i32, align 4
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  %3 = load i32, ptr %RBP_N.8, align 1
  %4 = zext i32 %3 to i64
  %5 = zext i32 0 to i64
  %6 = sub i64 %4, %5
  %7 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 %5)
  %CF = extractvalue { i64, i1 } %7, 1
  %ZF = icmp eq i64 %6, 0
  %highbit = and i64 -9223372036854775808, %6
  %SF = icmp ne i64 %highbit, 0
  %8 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %4, i64 %5)
  %OF = extractvalue { i64, i1 } %8, 1
  %9 = and i64 %6, 255
  %10 = call i64 @llvm.ctpop.i64(i64 %9)
  %11 = and i64 %10, 1
  %PF = icmp eq i64 %11, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload = load i32, ptr %RBP_N.4, align 1
  %12 = sext i32 %memload to i64
  %13 = lshr i64 %12, 32
  %EDX = trunc i64 %13 to i32
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %14 = sext i32 %memload to i64
  %15 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %15, 32
  %dividend = or i64 %div_hb_ls, %14
  %16 = sext i32 %memload1 to i64
  %div_q = sdiv i64 %dividend, %16
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %16
  %EDX2 = trunc i64 %div_r to i32
  %EAX3 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 33), i32 %EAX, i32 %EDX2)
  store i32 %EAX3, ptr %EAX-SKT-LOC, align 1
  br label %bb.3

bb.2:                                             ; preds = %entry
  %EAX4 = call i32 @puts(ptr getelementptr inbounds ([55 x i8], ptr @rodata_16, i32 0, i32 37))
  store i32 %EAX4, ptr %EAX-SKT-LOC, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %EAX5 = load i32, ptr %EAX-SKT-LOC, align 1
  ret i32 %EAX5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
