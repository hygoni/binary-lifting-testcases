source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402040 = local_unnamed_addr constant i64 4532020583610935537
@global_var_402048 = local_unnamed_addr constant i64 4611686018427387904
@global_var_402050 = local_unnamed_addr constant i64 4607182418800017408
@global_var_402060 = local_unnamed_addr constant i64 9223372036854775807
@global_var_402070 = local_unnamed_addr constant i64 4648594424748572672
@global_var_402010 = constant [47 x i8] c"The square root of %.2f is approximately %.5f\0A\00"

define double @sqrtNewtonRaphson(double %number) local_unnamed_addr {
dec_label_pc_401126:
  %0 = alloca i1
  %stack_var_-16.01.reg2mem = alloca i64, !insn.addr !0
  %1 = load i1, i1* %0
  %2 = load i1, i1* %0
  %3 = fptrunc double %number to float
  %4 = bitcast float %3 to i32
  %5 = sext i32 %4 to i128
  %6 = call i64 @__asm_movsd(i128 %5), !insn.addr !1
  %7 = call i128 @__asm_movsd.1(i64 4532020583610935537), !insn.addr !2
  %8 = call i64 @__asm_movsd(i128 %7), !insn.addr !3
  %9 = bitcast i64 %8 to double, !insn.addr !3
  %10 = call i128 @__asm_movsd.1(i64 %6), !insn.addr !4
  %11 = call i128 @__asm_movsd.1(i64 4611686018427387904), !insn.addr !5
  %12 = call i128 @__asm_divsd(i128 %10, i128 %11), !insn.addr !6
  %13 = call i64 @__asm_movsd(i128 %12), !insn.addr !7
  %14 = call i128 @__asm_movsd.1(i64 4607182418800017408), !insn.addr !8
  %15 = call i64 @__asm_movsd(i128 %14), !insn.addr !9
  %16 = call i128 @__asm_movsd.1(i64 %15), !insn.addr !10
  %17 = fptrunc double %9 to float, !insn.addr !11
  %18 = bitcast float %17 to i32, !insn.addr !11
  %19 = sext i32 %18 to i128, !insn.addr !11
  call void @__asm_comisd(i128 %16, i128 %19), !insn.addr !11
  %20 = or i1 %1, %2, !insn.addr !12
  store i64 %13, i64* %stack_var_-16.01.reg2mem, !insn.addr !12
  br i1 %20, label %dec_label_pc_4011b2, label %dec_label_pc_401161, !insn.addr !12

dec_label_pc_401161:                              ; preds = %dec_label_pc_401126, %dec_label_pc_401161
  %stack_var_-16.01.reload = load i64, i64* %stack_var_-16.01.reg2mem
  %21 = call i128 @__asm_movsd.1(i64 %6), !insn.addr !13
  %22 = call i128 @__asm_divsd.3(i128 %21, i64 %stack_var_-16.01.reload), !insn.addr !14
  %23 = call i128 @__asm_addsd(i128 %22, i64 %stack_var_-16.01.reload), !insn.addr !15
  %24 = call i128 @__asm_movsd.1(i64 4611686018427387904), !insn.addr !16
  %25 = call i128 @__asm_divsd(i128 %23, i128 %24), !insn.addr !17
  %26 = call i64 @__asm_movsd(i128 %25), !insn.addr !18
  %27 = call i128 @__asm_movsd.1(i64 %26), !insn.addr !19
  %28 = call i128 @__asm_subsd(i128 %27, i64 %stack_var_-16.01.reload), !insn.addr !20
  %29 = call i128 @__asm_movq.2(i64 9223372036854775807), !insn.addr !21
  %30 = call i128 @__asm_andpd(i128 %28, i128 %29), !insn.addr !22
  %31 = call i64 @__asm_movsd(i128 %30), !insn.addr !23
  %32 = call i128 @__asm_movsd.1(i64 %26), !insn.addr !24
  %33 = call i64 @__asm_movsd(i128 %32), !insn.addr !25
  %34 = call i128 @__asm_movsd.1(i64 %31), !insn.addr !10
  call void @__asm_comisd(i128 %34, i128 %19), !insn.addr !11
  store i64 %33, i64* %stack_var_-16.01.reg2mem
  br label %dec_label_pc_401161

dec_label_pc_4011b2:                              ; preds = %dec_label_pc_401126
  %35 = call i128 @__asm_movsd.1(i64 %13), !insn.addr !26
  %36 = call i64 @__asm_movq(i128 %35), !insn.addr !27
  %37 = call i128 @__asm_movq.2(i64 %36), !insn.addr !28
  %38 = trunc i128 %37 to i64, !insn.addr !29
  %39 = bitcast i64 %38 to double, !insn.addr !29
  ret double %39, !insn.addr !29

; uselistorder directives
  uselistorder i64 %stack_var_-16.01.reload, { 0, 2, 1 }
  uselistorder i128 %19, { 1, 0 }
  uselistorder i64 %13, { 1, 0 }
  uselistorder i64* %stack_var_-16.01.reg2mem, { 2, 0, 1 }
  uselistorder i1* %0, { 1, 0 }
  uselistorder void (i128, i128)* @__asm_comisd, { 1, 0 }
  uselistorder i32 1, { 1, 0 }
  uselistorder label %dec_label_pc_401161, { 1, 0 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_4011c3:
  %0 = call i128 @__asm_movsd.1(i64 4648594424748572672), !insn.addr !30
  %1 = call i64 @__asm_movsd(i128 %0), !insn.addr !31
  %2 = call i128 @__asm_movq.2(i64 %1), !insn.addr !32
  %3 = trunc i128 %2 to i64, !insn.addr !33
  %4 = bitcast i64 %3 to double, !insn.addr !33
  %5 = call double @sqrtNewtonRaphson(double %4), !insn.addr !33
  %6 = fptrunc double %5 to float, !insn.addr !33
  %7 = bitcast float %6 to i32, !insn.addr !33
  %8 = sext i32 %7 to i128, !insn.addr !33
  %9 = call i64 @__asm_movq(i128 %8), !insn.addr !34
  %10 = call i128 @__asm_movq.2(i64 %9), !insn.addr !35
  %11 = call i128 @__asm_movq.2(i64 %1), !insn.addr !36
  %12 = trunc i128 %11 to i64, !insn.addr !37
  %13 = bitcast i64 %12 to double, !insn.addr !37
  %14 = trunc i128 %10 to i64, !insn.addr !37
  %15 = bitcast i64 %14 to double, !insn.addr !37
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @global_var_402010, i64 0, i64 0), double %13, double %15), !insn.addr !37
  ret i32 0, !insn.addr !38

; uselistorder directives
  uselistorder i128 (i64)* @__asm_movq.2, { 0, 1, 2, 4, 3 }
  uselistorder i128 (i64)* @__asm_movsd.1, { 1, 6, 7, 2, 3, 4, 5, 0, 8, 9, 10, 11 }
}

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64 @__asm_movsd(i128) local_unnamed_addr

declare i128 @__asm_movsd.1(i64) local_unnamed_addr

declare i128 @__asm_divsd(i128, i128) local_unnamed_addr

declare void @__asm_comisd(i128, i128) local_unnamed_addr

declare i64 @__asm_movq(i128) local_unnamed_addr

declare i128 @__asm_movq.2(i64) local_unnamed_addr

declare i128 @__asm_divsd.3(i128, i64) local_unnamed_addr

declare i128 @__asm_addsd(i128, i64) local_unnamed_addr

declare i128 @__asm_subsd(i128, i64) local_unnamed_addr

declare i128 @__asm_andpd(i128, i128) local_unnamed_addr

!0 = !{i64 4198694}
!1 = !{i64 4198698}
!2 = !{i64 4198703}
!3 = !{i64 4198711}
!4 = !{i64 4198716}
!5 = !{i64 4198721}
!6 = !{i64 4198729}
!7 = !{i64 4198733}
!8 = !{i64 4198738}
!9 = !{i64 4198746}
!10 = !{i64 4198822}
!11 = !{i64 4198827}
!12 = !{i64 4198832}
!13 = !{i64 4198753}
!14 = !{i64 4198758}
!15 = !{i64 4198763}
!16 = !{i64 4198768}
!17 = !{i64 4198776}
!18 = !{i64 4198780}
!19 = !{i64 4198785}
!20 = !{i64 4198790}
!21 = !{i64 4198795}
!22 = !{i64 4198803}
!23 = !{i64 4198807}
!24 = !{i64 4198812}
!25 = !{i64 4198817}
!26 = !{i64 4198834}
!27 = !{i64 4198839}
!28 = !{i64 4198844}
!29 = !{i64 4198850}
!30 = !{i64 4198859}
!31 = !{i64 4198867}
!32 = !{i64 4198876}
!33 = !{i64 4198881}
!34 = !{i64 4198886}
!35 = !{i64 4198895}
!36 = !{i64 4198900}
!37 = !{i64 4198915}
!38 = !{i64 4198926}
