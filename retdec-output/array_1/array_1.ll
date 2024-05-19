source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [4 x i8] c"%d \00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401136:
  %.in.in.reg2mem = alloca i64, !insn.addr !0
  %.reg2mem = alloca i32, !insn.addr !0
  %ptr_-24 = alloca i32*, align 8
  store i32* inttoptr (i32 5 to i32*), i32** %ptr_-24, align 8, !insn.addr !1
  %0 = ptrtoint i32** %ptr_-24 to i64, !insn.addr !2
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), i64 5), !insn.addr !3
  store i32 1, i32* %.reg2mem
  store i64 %0, i64* %.in.in.reg2mem
  br label %dec_label_pc_401176.dec_label_pc_401176_crit_edge

dec_label_pc_401176.dec_label_pc_401176_crit_edge: ; preds = %dec_label_pc_401136, %dec_label_pc_401176.dec_label_pc_401176_crit_edge
  %.in.in.reload = load i64, i64* %.in.in.reg2mem
  %.reload = load i32, i32* %.reg2mem
  %.in = add i64 %.in.in.reload, -4
  %2 = inttoptr i64 %.in to i32*
  %.pre = load i32, i32* %2, align 4
  %3 = zext i32 %.pre to i64, !insn.addr !4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), i64 %3), !insn.addr !3
  %5 = add nuw nsw i32 %.reload, 1, !insn.addr !5
  %exitcond = icmp eq i32 %5, 5
  store i32 %5, i32* %.reg2mem, !insn.addr !6
  store i64 %.in, i64* %.in.in.reg2mem, !insn.addr !6
  br i1 %exitcond, label %dec_label_pc_4011a1, label %dec_label_pc_401176.dec_label_pc_401176_crit_edge, !insn.addr !6

dec_label_pc_4011a1:                              ; preds = %dec_label_pc_401176.dec_label_pc_401176_crit_edge
  %6 = call i32 @putchar(i32 10), !insn.addr !7
  ret i32 0, !insn.addr !8

; uselistorder directives
  uselistorder i32* %.reg2mem, { 1, 0, 2 }
  uselistorder i64* %.in.in.reg2mem, { 1, 0, 2 }
  uselistorder i32 (i8*, ...)* @printf, { 1, 0 }
  uselistorder i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), { 1, 0 }
  uselistorder i32 1, { 4, 1, 3, 2, 0 }
  uselistorder label %dec_label_pc_401176.dec_label_pc_401176_crit_edge, { 1, 0 }
}

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198710}
!1 = !{i64 4198746}
!2 = !{i64 4198774}
!3 = !{i64 4198800}
!4 = !{i64 4198788}
!5 = !{i64 4198805}
!6 = !{i64 4198815}
!7 = !{i64 4198822}
!8 = !{i64 4198833}
