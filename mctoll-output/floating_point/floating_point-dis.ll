; ModuleID = 'floating_point'
source_filename = "floating_point"

@rodata_16 = private unnamed_addr constant [129 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00x = %.2f, y = %.2f\0A\0A\00Addition: %.2f\0A\00Subtraction: %.2f\0A\00Multiplication: %.2f\0A\00Division: \00%.2f\0A\00Division by zero!\00", align 8, !ROData_SecInfo !0

declare dso_local i64 @time(ptr)

declare dso_local void @srand(i32)

declare dso_local i32 @rand()

declare dso_local i32 @printf(ptr, ...)

declare dso_local i32 @puts(ptr)

define dso_local i32 @main(double %arg1, double %arg2, double %arg3, double %arg4, double %arg5, double %arg6, double %arg7) {
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
  %ECX15 = mul i32 %EDX9, 100
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %EDX9, i32 100)
  %OF14 = extractvalue { i32, i1 } %11, 1
  %EAX16 = sub i32 %EAX, %ECX15
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %ECX15)
  %CF17 = extractvalue { i32, i1 } %12, 1
  %ZF18 = icmp eq i32 %EAX16, 0
  %highbit19 = and i32 -2147483648, %EAX16
  %SF20 = icmp ne i32 %highbit19, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %ECX15)
  %OF21 = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %EAX16, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF22 = icmp eq i32 %16, 0
  %cvt = sitofp i32 %EAX16 to float
  store float %cvt, ptr %RBP_N.4, align 1
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
  %ECX47 = mul i32 %EDX39, 100
  %24 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %EDX39, i32 100)
  %OF46 = extractvalue { i32, i1 } %24, 1
  %EAX48 = sub i32 %EAX23, %ECX47
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX23, i32 %ECX47)
  %CF49 = extractvalue { i32, i1 } %25, 1
  %ZF50 = icmp eq i32 %EAX48, 0
  %highbit51 = and i32 -2147483648, %EAX48
  %SF52 = icmp ne i32 %highbit51, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX23, i32 %ECX47)
  %OF53 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %EAX48, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF54 = icmp eq i32 %29, 0
  %cvt55 = sitofp i32 %EAX48 to float
  store float %cvt55, ptr %RBP_N.8, align 1
  %memload = load float, ptr %RBP_N.8, align 1
  %cvt56 = fpext float %memload to double
  %memload57 = load float, ptr %RBP_N.4, align 1
  %cvt58 = fpext float %memload57 to double
  %RAX59 = bitcast double %cvt58 to i64
  %XMM0 = bitcast i64 %RAX59 to double
  %EAX60 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 16), double %XMM0, double %cvt56)
  %memload61 = load float, ptr %RBP_N.8, align 1
  %memload62 = load i32, ptr %RBP_N.4, align 1
  %XMM063 = bitcast i32 %memload62 to float
  %30 = insertelement <2 x float> zeroinitializer, float %XMM063, i64 0
  %31 = bitcast <2 x float> %30 to double
  %32 = insertelement <2 x float> zeroinitializer, float %memload61, i64 0
  %33 = bitcast <2 x float> %32 to double
  %XMM064 = call float @add(double %31, double %33)
  %cvt65 = fpext float %XMM064 to double
  %RAX66 = bitcast double %cvt65 to i64
  %XMM067 = bitcast i64 %RAX66 to double
  %EAX68 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 37), double %XMM067)
  %memload69 = load float, ptr %RBP_N.8, align 1
  %memload70 = load i32, ptr %RBP_N.4, align 1
  %XMM071 = bitcast i32 %memload70 to float
  %34 = insertelement <2 x float> zeroinitializer, float %XMM071, i64 0
  %35 = bitcast <2 x float> %34 to double
  %36 = insertelement <2 x float> zeroinitializer, float %memload69, i64 0
  %37 = bitcast <2 x float> %36 to double
  %XMM072 = call float @subtract(double %35, double %37)
  %cvt73 = fpext float %XMM072 to double
  %RAX74 = bitcast double %cvt73 to i64
  %XMM075 = bitcast i64 %RAX74 to double
  %EAX76 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 53), double %XMM075)
  %memload77 = load float, ptr %RBP_N.8, align 1
  %memload78 = load i32, ptr %RBP_N.4, align 1
  %XMM079 = bitcast i32 %memload78 to float
  %38 = insertelement <2 x float> zeroinitializer, float %XMM079, i64 0
  %39 = bitcast <2 x float> %38 to double
  %40 = insertelement <2 x float> zeroinitializer, float %memload77, i64 0
  %41 = bitcast <2 x float> %40 to double
  %XMM080 = call float @multiply(double %39, double %41)
  %cvt81 = fpext float %XMM080 to double
  %RAX82 = bitcast double %cvt81 to i64
  %XMM083 = bitcast i64 %RAX82 to double
  %EAX84 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 72), double %XMM083)
  %EAX85 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 94))
  %42 = bitcast <4 x i32> zeroinitializer to <4 x float>
  %memload86 = load <4 x float>, ptr %RBP_N.8, align 1
  %cmp_operand_1 = extractelement <4 x float> %42, i64 0
  %cmp_operand_2 = extractelement <4 x float> %memload86, i64 0
  %CF87 = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF88 = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF89 = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CmpPF_JP = icmp eq i1 %PF89, true
  br i1 %CmpPF_JP, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %43 = bitcast <4 x i32> zeroinitializer to <4 x float>
  %memload90 = load <4 x float>, ptr %RBP_N.8, align 1
  %cmp_operand_191 = extractelement <4 x float> %43, i64 0
  %cmp_operand_292 = extractelement <4 x float> %memload90, i64 0
  %CF93 = fcmp ult float %cmp_operand_191, %cmp_operand_292
  %ZF94 = fcmp ueq float %cmp_operand_191, %cmp_operand_292
  %PF95 = fcmp uno float %cmp_operand_191, %cmp_operand_292
  %CmpZF_JE = icmp eq i1 %ZF94, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.3:                                             ; preds = %bb.1
  %EAX96 = call i32 @puts(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 111))
  br label %bb.4

bb.2:                                             ; preds = %bb.1, %entry
  %memload97 = load float, ptr %RBP_N.8, align 1
  %memload98 = load i32, ptr %RBP_N.4, align 1
  %XMM099 = bitcast i32 %memload98 to float
  %44 = insertelement <2 x float> zeroinitializer, float %XMM099, i64 0
  %45 = bitcast <2 x float> %44 to double
  %46 = insertelement <2 x float> zeroinitializer, float %memload97, i64 0
  %47 = bitcast <2 x float> %46 to double
  %XMM0100 = call float @divide(double %45, double %47)
  %cvt101 = fpext float %XMM0100 to double
  %RAX102 = bitcast double %cvt101 to i64
  %XMM0103 = bitcast i64 %RAX102 to double
  %EAX104 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([129 x i8], ptr @rodata_16, i32 0, i32 105), double %XMM0103)
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  ret i32 0
}

define dso_local float @add(double %arg1, double %arg2) {
entry:
  %stktop_4 = alloca i8, i32 16, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %2 = bitcast double %arg1 to <2 x float>
  %3 = extractelement <2 x float> %2, i64 0
  store float %3, ptr %RBP_N.4, align 1
  %4 = bitcast double %arg2 to <2 x float>
  %5 = extractelement <2 x float> %4, i64 0
  store float %5, ptr %stktop_4, align 1
  %memload = load float, ptr %RBP_N.4, align 1
  %memload1 = load float, ptr %stktop_4, align 1
  %XMM0 = fadd float %memload, %memload1
  ret float %XMM0
}

define dso_local float @subtract(double %arg1, double %arg2) {
entry:
  %stktop_4 = alloca i8, i32 16, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %2 = bitcast double %arg1 to <2 x float>
  %3 = extractelement <2 x float> %2, i64 0
  store float %3, ptr %RBP_N.4, align 1
  %4 = bitcast double %arg2 to <2 x float>
  %5 = extractelement <2 x float> %4, i64 0
  store float %5, ptr %stktop_4, align 1
  %memload = load float, ptr %RBP_N.4, align 1
  %memload1 = load float, ptr %stktop_4, align 1
  %XMM0 = fsub float %memload, %memload1
  ret float %XMM0
}

define dso_local float @multiply(double %arg1, double %arg2) {
entry:
  %stktop_4 = alloca i8, i32 16, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %2 = bitcast double %arg1 to <2 x float>
  %3 = extractelement <2 x float> %2, i64 0
  store float %3, ptr %RBP_N.4, align 1
  %4 = bitcast double %arg2 to <2 x float>
  %5 = extractelement <2 x float> %4, i64 0
  store float %5, ptr %stktop_4, align 1
  %memload = load float, ptr %RBP_N.4, align 1
  %memload1 = load float, ptr %stktop_4, align 1
  %XMM0 = fmul float %memload, %memload1
  ret float %XMM0
}

define dso_local float @divide(double %arg1, double %arg2) {
entry:
  %XMM0-SKT-LOC = alloca <4 x i32>, align 16
  %stktop_4 = alloca i8, i32 16, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %2 = bitcast double %arg1 to <2 x float>
  %3 = extractelement <2 x float> %2, i64 0
  store float %3, ptr %RBP_N.4, align 1
  %4 = bitcast double %arg2 to <2 x float>
  %5 = extractelement <2 x float> %4, i64 0
  store float %5, ptr %stktop_4, align 1
  %6 = bitcast <4 x i32> zeroinitializer to <4 x float>
  %memload = load <4 x float>, ptr %stktop_4, align 1
  %cmp_operand_1 = extractelement <4 x float> %6, i64 0
  %cmp_operand_2 = extractelement <4 x float> %memload, i64 0
  %CF = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CmpPF_JP = icmp eq i1 %PF, true
  br i1 %CmpPF_JP, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %7 = bitcast <4 x i32> zeroinitializer to <4 x float>
  %memload1 = load <4 x float>, ptr %stktop_4, align 1
  %cmp_operand_12 = extractelement <4 x float> %7, i64 0
  %cmp_operand_23 = extractelement <4 x float> %memload1, i64 0
  %CF4 = fcmp ult float %cmp_operand_12, %cmp_operand_23
  %ZF5 = fcmp ueq float %cmp_operand_12, %cmp_operand_23
  %PF6 = fcmp uno float %cmp_operand_12, %cmp_operand_23
  %CmpZF_JE = icmp eq i1 %ZF5, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.3:                                             ; preds = %bb.1
  store <4 x i32> zeroinitializer, ptr %XMM0-SKT-LOC, align 1
  br label %bb.4

bb.2:                                             ; preds = %bb.1, %entry
  %memload7 = load float, ptr %RBP_N.4, align 1
  %memload8 = load float, ptr %stktop_4, align 1
  %XMM0 = fdiv float %memload7, %memload8
  %8 = insertelement <4 x float> zeroinitializer, float %XMM0, i64 0
  %9 = bitcast <4 x float> %8 to <4 x i32>
  store <4 x i32> %9, ptr %XMM0-SKT-LOC, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %XMM09 = load <4 x i32>, ptr %XMM0-SKT-LOC, align 1
  %10 = bitcast <4 x i32> %XMM09 to <4 x float>
  %11 = extractelement <4 x float> %10, i64 0
  ret float %11
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
