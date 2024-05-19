source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [23 x i8] c"All test cases passed!\00"
@global_var_402027 = constant [24 x i8] c"Some test cases failed.\00"

define i32 @factorial(i32 %n) local_unnamed_addr {
dec_label_pc_401126:
  %rax.0.reg2mem = alloca i32, !insn.addr !0
  %0 = icmp slt i32 %n, 0, !insn.addr !1
  %1 = icmp eq i1 %0, false, !insn.addr !2
  store i32 0, i32* %rax.0.reg2mem, !insn.addr !2
  br i1 %1, label %dec_label_pc_40113e, label %dec_label_pc_40115c, !insn.addr !2

dec_label_pc_40113e:                              ; preds = %dec_label_pc_401126
  %2 = icmp eq i32 %n, 0, !insn.addr !3
  %3 = icmp eq i1 %2, false, !insn.addr !4
  store i32 1, i32* %rax.0.reg2mem, !insn.addr !4
  br i1 %3, label %dec_label_pc_40114b, label %dec_label_pc_40115c, !insn.addr !4

dec_label_pc_40114b:                              ; preds = %dec_label_pc_40113e
  %4 = add i32 %n, -1, !insn.addr !5
  %5 = call i32 @factorial(i32 %4), !insn.addr !6
  %6 = mul i32 %5, %n, !insn.addr !7
  store i32 %6, i32* %rax.0.reg2mem, !insn.addr !7
  br label %dec_label_pc_40115c, !insn.addr !7

dec_label_pc_40115c:                              ; preds = %dec_label_pc_40113e, %dec_label_pc_401126, %dec_label_pc_40114b
  %rax.0.reload = load i32, i32* %rax.0.reg2mem
  ret i32 %rax.0.reload, !insn.addr !8

; uselistorder directives
  uselistorder i32* %rax.0.reg2mem, { 0, 3, 1, 2 }
  uselistorder label %dec_label_pc_40115c, { 2, 0, 1 }
}

define i1 @run_tests() local_unnamed_addr {
dec_label_pc_40115e:
  %rax.0.reg2mem = alloca i1, !insn.addr !9
  %0 = call i32 @factorial(i32 0), !insn.addr !10
  %1 = icmp eq i32 %0, 1, !insn.addr !11
  store i1 false, i1* %rax.0.reg2mem, !insn.addr !12
  br i1 %1, label %dec_label_pc_401178, label %dec_label_pc_4011ca, !insn.addr !12

dec_label_pc_401178:                              ; preds = %dec_label_pc_40115e
  %2 = call i32 @factorial(i32 5), !insn.addr !13
  %3 = icmp eq i32 %2, 120, !insn.addr !14
  %4 = icmp eq i1 %3, false, !insn.addr !15
  store i1 false, i1* %rax.0.reg2mem, !insn.addr !15
  br i1 %4, label %dec_label_pc_4011ca, label %dec_label_pc_401187, !insn.addr !15

dec_label_pc_401187:                              ; preds = %dec_label_pc_401178
  %5 = call i32 @factorial(i32 6), !insn.addr !16
  %6 = icmp eq i32 %5, 720, !insn.addr !17
  %7 = icmp eq i1 %6, false, !insn.addr !18
  store i1 false, i1* %rax.0.reg2mem, !insn.addr !18
  br i1 %7, label %dec_label_pc_4011ca, label %dec_label_pc_401198, !insn.addr !18

dec_label_pc_401198:                              ; preds = %dec_label_pc_401187
  %8 = call i32 @factorial(i32 10), !insn.addr !19
  %9 = icmp eq i32 %8, 3628800, !insn.addr !20
  store i1 false, i1* %rax.0.reg2mem, !insn.addr !21
  br i1 %9, label %dec_label_pc_4011b0, label %dec_label_pc_4011ca, !insn.addr !21

dec_label_pc_4011b0:                              ; preds = %dec_label_pc_401198
  %10 = call i32 @factorial(i32 -5), !insn.addr !22
  %11 = icmp eq i32 %10, 0, !insn.addr !23
  store i1 %11, i1* %rax.0.reg2mem, !insn.addr !24
  br label %dec_label_pc_4011ca, !insn.addr !24

dec_label_pc_4011ca:                              ; preds = %dec_label_pc_4011b0, %dec_label_pc_401178, %dec_label_pc_401187, %dec_label_pc_401198, %dec_label_pc_40115e
  %rax.0.reload = load i1, i1* %rax.0.reg2mem
  ret i1 %rax.0.reload, !insn.addr !25

; uselistorder directives
  uselistorder i1* %rax.0.reg2mem, { 0, 1, 4, 3, 2, 5 }
  uselistorder i32 (i32)* @factorial, { 5, 4, 3, 2, 1, 0 }
  uselistorder i32 1, { 3, 0, 1, 2 }
  uselistorder label %dec_label_pc_4011ca, { 0, 3, 2, 1, 4 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_4011cc:
  %0 = call i1 @run_tests(), !insn.addr !26
  %1 = icmp eq i1 %0, false, !insn.addr !27
  br i1 %1, label %dec_label_pc_4011ea, label %dec_label_pc_4011de, !insn.addr !28

dec_label_pc_4011de:                              ; preds = %dec_label_pc_4011cc
  %2 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_var_402010, i64 0, i64 0)), !insn.addr !29
  br label %dec_label_pc_4011f4, !insn.addr !30

dec_label_pc_4011ea:                              ; preds = %dec_label_pc_4011cc
  %3 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @global_var_402027, i64 0, i64 0)), !insn.addr !31
  br label %dec_label_pc_4011f4, !insn.addr !31

dec_label_pc_4011f4:                              ; preds = %dec_label_pc_4011ea, %dec_label_pc_4011de
  ret i32 0, !insn.addr !32

; uselistorder directives
  uselistorder i32 0, { 1, 3, 2, 4, 0, 5 }
  uselistorder i32 (i8*)* @puts, { 1, 0 }
  uselistorder i1 false, { 4, 2, 1, 5, 0, 6, 3, 7, 8 }
}

declare i32 @puts(i8*) local_unnamed_addr

!0 = !{i64 4198694}
!1 = !{i64 4198705}
!2 = !{i64 4198709}
!3 = !{i64 4198718}
!4 = !{i64 4198722}
!5 = !{i64 4198734}
!6 = !{i64 4198739}
!7 = !{i64 4198744}
!8 = !{i64 4198749}
!9 = !{i64 4198750}
!10 = !{i64 4198759}
!11 = !{i64 4198764}
!12 = !{i64 4198767}
!13 = !{i64 4198781}
!14 = !{i64 4198786}
!15 = !{i64 4198789}
!16 = !{i64 4198796}
!17 = !{i64 4198801}
!18 = !{i64 4198806}
!19 = !{i64 4198813}
!20 = !{i64 4198818}
!21 = !{i64 4198823}
!22 = !{i64 4198837}
!23 = !{i64 4198842}
!24 = !{i64 4198853}
!25 = !{i64 4198859}
!26 = !{i64 4198869}
!27 = !{i64 4198874}
!28 = !{i64 4198876}
!29 = !{i64 4198883}
!30 = !{i64 4198888}
!31 = !{i64 4198895}
!32 = !{i64 4198906}
