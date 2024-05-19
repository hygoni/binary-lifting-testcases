source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402033 = constant [4 x i8] c"%d \00"
@0 = internal constant [35 x i8] c"\ED\96\89\EB\A0\AC\EC\9D\84 \EA\B3\B1\ED\95\A0 \EC\88\98 \EC\97\86\EC\8A\B5\EB\8B\88\EB\8B\A4.\00"
@global_var_402010 = constant i8* getelementptr inbounds ([35 x i8], [35 x i8]* @0, i64 0, i64 0)

define void @matrixMultiply(i32 %rowsA, i32 %colsA, i32 %rowsB, i32 %colsB, [1 x i32]* %A, [1 x i32]* %B, [1 x i32]* %C) local_unnamed_addr {
dec_label_pc_401146:
  %indvars.iv18.reg2mem = alloca i64, !insn.addr !0
  %indvars.iv.reg2mem = alloca i64, !insn.addr !0
  %.reg2mem = alloca i32, !insn.addr !0
  %indvars.iv14.reg2mem = alloca i64, !insn.addr !0
  %0 = icmp eq i32 %colsA, %rowsB, !insn.addr !1
  br i1 %0, label %dec_label_pc_4012e0.preheader, label %dec_label_pc_4011c0, !insn.addr !2

dec_label_pc_4012e0.preheader:                    ; preds = %dec_label_pc_401146
  %1 = icmp sgt i32 %rowsA, 0, !insn.addr !3
  br i1 %1, label %dec_label_pc_4012d0.preheader.lr.ph, label %dec_label_pc_4012ec, !insn.addr !3

dec_label_pc_4012d0.preheader.lr.ph:              ; preds = %dec_label_pc_4012e0.preheader
  %2 = icmp sgt i32 %colsB, 0, !insn.addr !4
  %3 = sext i32 %colsB to i64
  %4 = mul i64 %3, 4
  %5 = ptrtoint [1 x i32]* %C to i64
  %6 = icmp sgt i32 %colsA, 0
  %7 = sext i32 %colsA to i64
  %8 = ptrtoint [1 x i32]* %A to i64
  %9 = ptrtoint [1 x i32]* %B to i64
  %wide.trip.count = zext i32 %colsA to i64
  %wide.trip.count16 = zext i32 %colsB to i64
  %wide.trip.count20 = zext i32 %rowsA to i64
  store i64 0, i64* %indvars.iv18.reg2mem
  br label %dec_label_pc_4012d0.preheader

dec_label_pc_4011c0:                              ; preds = %dec_label_pc_401146
  %10 = call i32 @puts(i8* bitcast (i8** @global_var_402010 to i8*)), !insn.addr !5
  br label %dec_label_pc_4012ec, !insn.addr !6

dec_label_pc_4011e7:                              ; preds = %dec_label_pc_4012cc, %dec_label_pc_4011e7.lr.ph
  %indvars.iv14.reload = load i64, i64* %indvars.iv14.reg2mem
  %11 = mul i64 %indvars.iv14.reload, 4, !insn.addr !7
  %12 = add i64 %25, %11, !insn.addr !7
  %13 = inttoptr i64 %12 to i32*, !insn.addr !7
  store i32 0, i32* %13, align 4, !insn.addr !7
  br i1 %6, label %dec_label_pc_40121c.lr.ph, label %dec_label_pc_4012cc, !insn.addr !8

dec_label_pc_40121c.lr.ph:                        ; preds = %dec_label_pc_4011e7
  %14 = add i64 %11, %9, !insn.addr !9
  store i32 0, i32* %.reg2mem
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_40121c

dec_label_pc_40121c:                              ; preds = %dec_label_pc_40121c, %dec_label_pc_40121c.lr.ph
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %.reload = load i32, i32* %.reg2mem, !insn.addr !10
  %reass.add = add nsw i64 %indvars.iv.reload, %26
  %reass.mul = mul i64 %reass.add, 4
  %15 = add i64 %reass.mul, %8, !insn.addr !11
  %16 = inttoptr i64 %15 to i32*, !insn.addr !11
  %17 = load i32, i32* %16, align 4, !insn.addr !11
  %18 = mul i64 %indvars.iv.reload, %4, !insn.addr !12
  %19 = add i64 %14, %18, !insn.addr !13
  %20 = inttoptr i64 %19 to i32*, !insn.addr !13
  %21 = load i32, i32* %20, align 4, !insn.addr !13
  %22 = mul i32 %21, %17, !insn.addr !14
  %23 = add i32 %22, %.reload, !insn.addr !15
  store i32 %23, i32* %13, align 4, !insn.addr !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  store i32 %23, i32* %.reg2mem, !insn.addr !8
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !8
  br i1 %exitcond, label %dec_label_pc_4012cc, label %dec_label_pc_40121c, !insn.addr !8

dec_label_pc_4012cc:                              ; preds = %dec_label_pc_40121c, %dec_label_pc_4011e7
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next15, %wide.trip.count16
  store i64 %indvars.iv.next15, i64* %indvars.iv14.reg2mem, !insn.addr !4
  br i1 %exitcond17, label %dec_label_pc_4012dc, label %dec_label_pc_4011e7, !insn.addr !4

dec_label_pc_4012dc:                              ; preds = %dec_label_pc_4012cc, %dec_label_pc_4012d0.preheader
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18.reload, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next19, %wide.trip.count20
  store i64 %indvars.iv.next19, i64* %indvars.iv18.reg2mem, !insn.addr !3
  br i1 %exitcond21, label %dec_label_pc_4012ec, label %dec_label_pc_4012d0.preheader, !insn.addr !3

dec_label_pc_4012d0.preheader:                    ; preds = %dec_label_pc_4012dc, %dec_label_pc_4012d0.preheader.lr.ph
  %indvars.iv18.reload = load i64, i64* %indvars.iv18.reg2mem
  br i1 %2, label %dec_label_pc_4011e7.lr.ph, label %dec_label_pc_4012dc, !insn.addr !4

dec_label_pc_4011e7.lr.ph:                        ; preds = %dec_label_pc_4012d0.preheader
  %24 = mul i64 %indvars.iv18.reload, %4, !insn.addr !17
  %25 = add i64 %24, %5, !insn.addr !18
  %26 = mul nsw i64 %indvars.iv18.reload, %7
  store i64 0, i64* %indvars.iv14.reg2mem
  br label %dec_label_pc_4011e7

dec_label_pc_4012ec:                              ; preds = %dec_label_pc_4012dc, %dec_label_pc_4012e0.preheader, %dec_label_pc_4011c0
  ret void, !insn.addr !19

; uselistorder directives
  uselistorder i64 %indvars.iv18.reload, { 2, 1, 0 }
  uselistorder i64 %indvars.iv.reload, { 0, 2, 1 }
  uselistorder i64 %11, { 1, 0 }
  uselistorder i64* %indvars.iv14.reg2mem, { 2, 1, 0 }
  uselistorder i32* %.reg2mem, { 1, 0, 2 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i32 %colsB, { 0, 2, 1 }
  uselistorder i32 %colsA, { 0, 2, 1, 3 }
  uselistorder label %dec_label_pc_4012ec, { 0, 2, 1 }
  uselistorder label %dec_label_pc_4012dc, { 1, 0 }
  uselistorder label %dec_label_pc_4011e7, { 1, 0 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_4012fa:
  %indvars.iv5.reg2mem = alloca i64, !insn.addr !20
  %indvars.iv.reg2mem = alloca i64, !insn.addr !20
  %stack_var_-72 = alloca i32, align 4
  %stack_var_-40 = alloca i32, align 4
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !21
  store i32 1, i32* %stack_var_-40, align 4, !insn.addr !22
  store i32 7, i32* %stack_var_-72, align 4, !insn.addr !23
  store i64 0, i64* %stack_var_-88, align 8, !insn.addr !24
  %1 = bitcast i64* %stack_var_-88 to [1 x i32]*
  %2 = bitcast i32* %stack_var_-40 to [1 x i32]*, !insn.addr !25
  %3 = bitcast i32* %stack_var_-72 to [1 x i32]*, !insn.addr !25
  call void @matrixMultiply(i32 2, i32 3, i32 3, i32 2, [1 x i32]* nonnull %2, [1 x i32]* nonnull %3, [1 x i32]* nonnull %1), !insn.addr !25
  %4 = add i64 %0, -80, !insn.addr !26
  store i64 0, i64* %indvars.iv5.reg2mem
  br label %dec_label_pc_4013d6.preheader

dec_label_pc_4013ac:                              ; preds = %dec_label_pc_4013ac, %dec_label_pc_4013d6.preheader
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %5 = add nuw nsw i64 %indvars.iv.reload, %13, !insn.addr !27
  %6 = mul i64 %5, 4, !insn.addr !26
  %7 = add i64 %4, %6, !insn.addr !26
  %8 = inttoptr i64 %7 to i32*, !insn.addr !26
  %9 = load i32, i32* %8, align 4, !insn.addr !26
  %10 = zext i32 %9 to i64, !insn.addr !28
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402033, i64 0, i64 0), i64 %10), !insn.addr !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !30
  br i1 %exitcond, label %dec_label_pc_4013dc, label %dec_label_pc_4013ac, !insn.addr !30

dec_label_pc_4013dc:                              ; preds = %dec_label_pc_4013ac
  %12 = call i32 @putchar(i32 10), !insn.addr !31
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 2
  store i64 %indvars.iv.next6, i64* %indvars.iv5.reg2mem, !insn.addr !32
  br i1 %exitcond7, label %dec_label_pc_4013f0, label %dec_label_pc_4013d6.preheader, !insn.addr !32

dec_label_pc_4013d6.preheader:                    ; preds = %dec_label_pc_4013dc, %dec_label_pc_4012fa
  %indvars.iv5.reload = load i64, i64* %indvars.iv5.reg2mem
  %13 = mul i64 %indvars.iv5.reload, 2, !insn.addr !33
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_4013ac

dec_label_pc_4013f0:                              ; preds = %dec_label_pc_4013dc
  ret i32 0, !insn.addr !34

; uselistorder directives
  uselistorder i64 %indvars.iv5.reload, { 1, 0 }
  uselistorder i64* %indvars.iv.reg2mem, { 2, 1, 0 }
  uselistorder i32 0, { 1, 0, 5, 2, 3, 4 }
  uselistorder i64 0, { 1, 7, 8, 0, 10, 4, 3, 2, 5, 6, 9 }
  uselistorder i32 1, { 7, 10, 9, 8, 6, 1, 0, 5, 4, 3, 2 }
  uselistorder label %dec_label_pc_4013ac, { 1, 0 }
}

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198726}
!1 = !{i64 4198843}
!2 = !{i64 4198846}
!3 = !{i64 4199142}
!4 = !{i64 4199126}
!5 = !{i64 4198853}
!6 = !{i64 4198858}
!7 = !{i64 4198921}
!8 = !{i64 4199110}
!9 = !{i64 4199002}
!10 = !{i64 4199055}
!11 = !{i64 4198974}
!12 = !{i64 4198990}
!13 = !{i64 4199011}
!14 = !{i64 4199015}
!15 = !{i64 4199087}
!16 = !{i64 4199096}
!17 = !{i64 4198900}
!18 = !{i64 4198912}
!19 = !{i64 4199161}
!20 = !{i64 4199162}
!21 = !{i64 4199163}
!22 = !{i64 4199170}
!23 = !{i64 4199212}
!24 = !{i64 4199254}
!25 = !{i64 4199313}
!26 = !{i64 4199357}
!27 = !{i64 4199354}
!28 = !{i64 4199361}
!29 = !{i64 4199373}
!30 = !{i64 4199386}
!31 = !{i64 4199393}
!32 = !{i64 4199406}
!33 = !{i64 4199351}
!34 = !{i64 4199414}
