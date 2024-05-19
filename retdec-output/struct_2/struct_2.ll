source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402030 = local_unnamed_addr constant i64 4635787313308237824
@global_var_402038 = local_unnamed_addr constant i64 4636068788284948480
@global_var_402040 = local_unnamed_addr constant i64 4635505838331527168
@global_var_402048 = local_unnamed_addr constant i64 4635928050796593152
@global_var_402050 = local_unnamed_addr constant i64 4636209525773303808
@0 = internal constant [29 x i8] c"\ED\95\99\EC\83\9D ID: %d, \EC\A0\90\EC\88\98: %.1f\0A\00"
@global_var_402010 = constant i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i64 0, i64 0)

define i32* @createStudent(i32 %id, double %score) local_unnamed_addr {
dec_label_pc_401146:
  %0 = fptrunc double %score to float
  %1 = bitcast float %0 to i32
  %2 = sext i32 %1 to i128
  %3 = call i64 @__asm_movsd(i128 %2), !insn.addr !0
  %4 = call i64* @malloc(i32 16), !insn.addr !1
  %5 = ptrtoint i64* %4 to i64, !insn.addr !1
  %6 = bitcast i64* %4 to i32*, !insn.addr !2
  store i32 %id, i32* %6, align 4, !insn.addr !2
  %7 = call i128 @__asm_movsd.1(i64 %3), !insn.addr !3
  %8 = call i64 @__asm_movsd(i128 %7), !insn.addr !4
  %9 = add i64 %5, 8, !insn.addr !4
  %10 = inttoptr i64 %9 to i64*, !insn.addr !4
  store i64 %8, i64* %10, align 8, !insn.addr !4
  ret i32* %6, !insn.addr !5
}

define i32 @main() local_unnamed_addr {
dec_label_pc_401181:
  %indvars.iv.reg2mem = alloca i64, !insn.addr !6
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !7
  %1 = call i128 @__asm_movq(i64 4635787313308237824), !insn.addr !8
  %2 = trunc i128 %1 to i64, !insn.addr !9
  %3 = bitcast i64 %2 to double, !insn.addr !9
  %4 = call i32* @createStudent(i32 101, double %3), !insn.addr !9
  %5 = call i128 @__asm_movq(i64 4636068788284948480), !insn.addr !10
  %6 = trunc i128 %5 to i64, !insn.addr !11
  %7 = bitcast i64 %6 to double, !insn.addr !11
  %8 = call i32* @createStudent(i32 102, double %7), !insn.addr !11
  %9 = call i128 @__asm_movq(i64 4635505838331527168), !insn.addr !12
  %10 = trunc i128 %9 to i64, !insn.addr !13
  %11 = bitcast i64 %10 to double, !insn.addr !13
  %12 = call i32* @createStudent(i32 103, double %11), !insn.addr !13
  %13 = call i128 @__asm_movq(i64 4635928050796593152), !insn.addr !14
  %14 = trunc i128 %13 to i64, !insn.addr !15
  %15 = bitcast i64 %14 to double, !insn.addr !15
  %16 = call i32* @createStudent(i32 104, double %15), !insn.addr !15
  %17 = call i128 @__asm_movq(i64 4636209525773303808), !insn.addr !16
  %18 = trunc i128 %17 to i64, !insn.addr !17
  %19 = bitcast i64 %18 to double, !insn.addr !17
  %20 = call i32* @createStudent(i32 105, double %19), !insn.addr !17
  %21 = add i64 %0, -48, !insn.addr !18
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401214

dec_label_pc_401214:                              ; preds = %dec_label_pc_401214, %dec_label_pc_401181
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %22 = mul i64 %indvars.iv.reload, 8, !insn.addr !18
  %23 = add i64 %21, %22, !insn.addr !18
  %24 = inttoptr i64 %23 to i64*, !insn.addr !18
  %25 = load i64, i64* %24, align 8, !insn.addr !18
  %26 = add i64 %25, 8, !insn.addr !19
  %27 = inttoptr i64 %26 to i64*, !insn.addr !19
  %28 = load i64, i64* %27, align 8, !insn.addr !19
  %29 = call i128 @__asm_movq(i64 %28), !insn.addr !20
  %30 = call i32 (i8*, ...) @printf(i8* bitcast (i8** @global_var_402010 to i8*)), !insn.addr !21
  %31 = load i64, i64* %24, align 8, !insn.addr !22
  %32 = inttoptr i64 %31 to i64*, !insn.addr !23
  call void @free(i64* %32), !insn.addr !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 5
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !24
  br i1 %exitcond, label %dec_label_pc_401260, label %dec_label_pc_401214, !insn.addr !24

dec_label_pc_401260:                              ; preds = %dec_label_pc_401214
  ret i32 0, !insn.addr !25

; uselistorder directives
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i64 8, { 1, 0, 2 }
  uselistorder i32* (i32, double)* @createStudent, { 4, 3, 2, 1, 0 }
  uselistorder i32 1, { 1, 0 }
}

declare void @free(i64*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare i64 @__asm_movsd(i128) local_unnamed_addr

declare i128 @__asm_movsd.1(i64) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

!0 = !{i64 4198737}
!1 = !{i64 4198747}
!2 = !{i64 4198763}
!3 = !{i64 4198769}
!4 = !{i64 4198774}
!5 = !{i64 4198784}
!6 = !{i64 4198785}
!7 = !{i64 4198786}
!8 = !{i64 4198800}
!9 = !{i64 4198810}
!10 = !{i64 4198826}
!11 = !{i64 4198836}
!12 = !{i64 4198852}
!13 = !{i64 4198862}
!14 = !{i64 4198878}
!15 = !{i64 4198888}
!16 = !{i64 4198904}
!17 = !{i64 4198914}
!18 = !{i64 4198937}
!19 = !{i64 4198942}
!20 = !{i64 4198958}
!21 = !{i64 4198975}
!22 = !{i64 4198985}
!23 = !{i64 4198993}
!24 = !{i64 4199006}
!25 = !{i64 4199014}
