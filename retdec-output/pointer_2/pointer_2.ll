source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [4 x i8] c"%d \00"

define i32** @createMatrix(i32 %rows, i32 %cols) local_unnamed_addr {
dec_label_pc_401156:
  %indvars.iv.next12.reg2mem = alloca i64, !insn.addr !0
  %indvars.iv7.reg2mem = alloca i64, !insn.addr !0
  %0 = mul i32 %rows, 8, !insn.addr !1
  %1 = call i64* @malloc(i32 %0), !insn.addr !2
  %2 = icmp sgt i32 %rows, 0, !insn.addr !3
  br i1 %2, label %dec_label_pc_401183.lr.ph, label %dec_label_pc_401201, !insn.addr !3

dec_label_pc_401183.lr.ph:                        ; preds = %dec_label_pc_401156
  %3 = ptrtoint i64* %1 to i64, !insn.addr !4
  %4 = mul i32 %cols, 4, !insn.addr !5
  %5 = icmp sgt i32 %cols, 0
  %wide.trip.count = zext i32 %cols to i64
  %exitcond11 = icmp eq i32 %cols, 1
  %wide.trip.count9 = zext i32 %rows to i64
  store i64 0, i64* %indvars.iv7.reg2mem
  br label %dec_label_pc_401183

dec_label_pc_401183:                              ; preds = %dec_label_pc_4011f5, %dec_label_pc_401183.lr.ph
  %indvars.iv7.reload = load i64, i64* %indvars.iv7.reg2mem
  %6 = mul i64 %indvars.iv7.reload, 8, !insn.addr !6
  %7 = add i64 %6, %3, !insn.addr !7
  %8 = call i64* @malloc(i32 %4), !insn.addr !5
  %9 = ptrtoint i64* %8 to i64, !insn.addr !5
  %10 = inttoptr i64 %7 to i64*, !insn.addr !8
  store i64 %9, i64* %10, align 8, !insn.addr !8
  br i1 %5, label %dec_label_pc_4011b6.lr.ph, label %dec_label_pc_4011f5, !insn.addr !9

dec_label_pc_4011b6.lr.ph:                        ; preds = %dec_label_pc_401183
  %11 = trunc i64 %indvars.iv7.reload to i32
  %12 = mul i32 %11, %cols, !insn.addr !10
  %13 = bitcast i64* %8 to i32*, !insn.addr !11
  store i32 %12, i32* %13, align 4, !insn.addr !11
  store i64 1, i64* %indvars.iv.next12.reg2mem, !insn.addr !9
  br i1 %exitcond11, label %dec_label_pc_4011f5, label %dec_label_pc_4011b6.dec_label_pc_4011b6_crit_edge, !insn.addr !9

dec_label_pc_4011b6.dec_label_pc_4011b6_crit_edge: ; preds = %dec_label_pc_4011b6.lr.ph, %dec_label_pc_4011b6.dec_label_pc_4011b6_crit_edge
  %indvars.iv.next12.reload = load i64, i64* %indvars.iv.next12.reg2mem
  %.pre = load i64, i64* %10, align 8
  %14 = mul i64 %indvars.iv.next12.reload, 4, !insn.addr !12
  %15 = add i64 %14, %.pre, !insn.addr !13
  %16 = trunc i64 %indvars.iv.next12.reload to i32
  %17 = add i32 %12, %16, !insn.addr !14
  %18 = inttoptr i64 %15 to i32*, !insn.addr !11
  store i32 %17, i32* %18, align 4, !insn.addr !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next12.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  store i64 %indvars.iv.next, i64* %indvars.iv.next12.reg2mem, !insn.addr !9
  br i1 %exitcond, label %dec_label_pc_4011f5, label %dec_label_pc_4011b6.dec_label_pc_4011b6_crit_edge, !insn.addr !9

dec_label_pc_4011f5:                              ; preds = %dec_label_pc_4011b6.lr.ph, %dec_label_pc_4011b6.dec_label_pc_4011b6_crit_edge, %dec_label_pc_401183
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next8, %wide.trip.count9
  store i64 %indvars.iv.next8, i64* %indvars.iv7.reg2mem, !insn.addr !3
  br i1 %exitcond10, label %dec_label_pc_401201, label %dec_label_pc_401183, !insn.addr !3

dec_label_pc_401201:                              ; preds = %dec_label_pc_4011f5, %dec_label_pc_401156
  %19 = bitcast i64* %1 to i32**
  ret i32** %19, !insn.addr !15

; uselistorder directives
  uselistorder i64 %indvars.iv.next12.reload, { 1, 0, 2 }
  uselistorder i64* %1, { 1, 0 }
  uselistorder i64* %indvars.iv7.reg2mem, { 1, 0, 2 }
  uselistorder i64* %indvars.iv.next12.reg2mem, { 2, 0, 1 }
  uselistorder i64* (i32)* @malloc, { 1, 0 }
  uselistorder i32 %cols, { 2, 1, 3, 4, 0 }
  uselistorder i32 %rows, { 1, 2, 0 }
  uselistorder label %dec_label_pc_4011f5, { 1, 0, 2 }
  uselistorder label %dec_label_pc_4011b6.dec_label_pc_4011b6_crit_edge, { 1, 0 }
}

define void @freeMatrix(i32** %matrix, i32 %rows) local_unnamed_addr {
dec_label_pc_40120b:
  %indvars.iv.reg2mem = alloca i64, !insn.addr !16
  %0 = icmp sgt i32 %rows, 0, !insn.addr !17
  br i1 %0, label %dec_label_pc_401223.lr.ph, label %dec_label_pc_40124e, !insn.addr !17

dec_label_pc_401223.lr.ph:                        ; preds = %dec_label_pc_40120b
  %1 = ptrtoint i32** %matrix to i64, !insn.addr !18
  %wide.trip.count = zext i32 %rows to i64
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401223

dec_label_pc_401223:                              ; preds = %dec_label_pc_401223, %dec_label_pc_401223.lr.ph
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %2 = mul i64 %indvars.iv.reload, 8, !insn.addr !19
  %3 = add i64 %2, %1, !insn.addr !20
  %4 = inttoptr i64 %3 to i64*, !insn.addr !21
  %5 = load i64, i64* %4, align 8, !insn.addr !21
  %6 = inttoptr i64 %5 to i64*, !insn.addr !22
  call void @free(i64* %6), !insn.addr !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !17
  br i1 %exitcond, label %dec_label_pc_40124e, label %dec_label_pc_401223, !insn.addr !17

dec_label_pc_40124e:                              ; preds = %dec_label_pc_401223, %dec_label_pc_40120b
  %7 = bitcast i32** %matrix to i64*
  call void @free(i64* %7), !insn.addr !23
  ret void, !insn.addr !24

; uselistorder directives
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_40125d:
  %indvars.iv5.reg2mem = alloca i64, !insn.addr !25
  %indvars.iv.reg2mem = alloca i64, !insn.addr !25
  %0 = call i32** @createMatrix(i32 3, i32 4), !insn.addr !26
  %1 = ptrtoint i32** %0 to i64, !insn.addr !26
  %sext2 = mul i64 %1, 4294967296
  %2 = ashr exact i64 %sext2, 32
  store i64 0, i64* %indvars.iv5.reg2mem
  br label %dec_label_pc_4012d2.preheader

dec_label_pc_401298:                              ; preds = %dec_label_pc_401298, %dec_label_pc_4012d2.preheader
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %3 = load i64, i64* %13, align 8, !insn.addr !27
  %4 = mul i64 %indvars.iv.reload, 4, !insn.addr !28
  %5 = add i64 %3, %4, !insn.addr !29
  %6 = inttoptr i64 %5 to i32*, !insn.addr !30
  %7 = load i32, i32* %6, align 4, !insn.addr !30
  %8 = zext i32 %7 to i64, !insn.addr !31
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), i64 %8), !insn.addr !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !33
  br i1 %exitcond, label %dec_label_pc_4012da, label %dec_label_pc_401298, !insn.addr !33

dec_label_pc_4012da:                              ; preds = %dec_label_pc_401298
  %10 = call i32 @putchar(i32 10), !insn.addr !34
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 3
  store i64 %indvars.iv.next6, i64* %indvars.iv5.reg2mem, !insn.addr !35
  br i1 %exitcond7, label %dec_label_pc_4012f0, label %dec_label_pc_4012d2.preheader, !insn.addr !35

dec_label_pc_4012d2.preheader:                    ; preds = %dec_label_pc_4012da, %dec_label_pc_40125d
  %indvars.iv5.reload = load i64, i64* %indvars.iv5.reg2mem
  %11 = mul i64 %indvars.iv5.reload, 8, !insn.addr !36
  %12 = add nsw i64 %11, %2, !insn.addr !37
  %13 = inttoptr i64 %12 to i64*, !insn.addr !27
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401298

dec_label_pc_4012f0:                              ; preds = %dec_label_pc_4012da
  %14 = inttoptr i64 %2 to i32**, !insn.addr !38
  call void @freeMatrix(i32** %14, i32 3), !insn.addr !38
  ret i32 0, !insn.addr !39

; uselistorder directives
  uselistorder i64 %indvars.iv5.reload, { 1, 0 }
  uselistorder i64 %2, { 1, 0 }
  uselistorder i64* %indvars.iv.reg2mem, { 2, 1, 0 }
  uselistorder i64 1, { 1, 2, 3, 4, 5, 0 }
  uselistorder i64 4, { 2, 0, 1 }
  uselistorder i64 0, { 1, 4, 5, 0, 2, 3, 6 }
  uselistorder i32 4, { 1, 0 }
  uselistorder i32 1, { 1, 0, 2, 5, 4, 3 }
  uselistorder label %dec_label_pc_401298, { 1, 0 }
}

declare void @free(i64*) local_unnamed_addr

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

!0 = !{i64 4198742}
!1 = !{i64 4198762}
!2 = !{i64 4198769}
!3 = !{i64 4198911}
!4 = !{i64 4198810}
!5 = !{i64 4198821}
!6 = !{i64 4198802}
!7 = !{i64 4198814}
!8 = !{i64 4198826}
!9 = !{i64 4198899}
!10 = !{i64 4198841}
!11 = !{i64 4198887}
!12 = !{i64 4198875}
!13 = !{i64 4198879}
!14 = !{i64 4198885}
!15 = !{i64 4198922}
!16 = !{i64 4198923}
!17 = !{i64 4198988}
!18 = !{i64 4198960}
!19 = !{i64 4198952}
!20 = !{i64 4198964}
!21 = !{i64 4198967}
!22 = !{i64 4198973}
!23 = !{i64 4198997}
!24 = !{i64 4199004}
!25 = !{i64 4199005}
!26 = !{i64 4199037}
!27 = !{i64 4199084}
!28 = !{i64 4199092}
!29 = !{i64 4199096}
!30 = !{i64 4199099}
!31 = !{i64 4199101}
!32 = !{i64 4199113}
!33 = !{i64 4199128}
!34 = !{i64 4199135}
!35 = !{i64 4199150}
!36 = !{i64 4199069}
!37 = !{i64 4199081}
!38 = !{i64 4199164}
!39 = !{i64 4199175}
