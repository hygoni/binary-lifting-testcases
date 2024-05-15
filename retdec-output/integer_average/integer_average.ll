source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [14 x i8] c"The numbers: \00"
@global_var_40201e = constant [4 x i8] c"%d \00"
@global_var_402028 = constant [32 x i8] c"Sum of the entered numbers: %d\0A\00"
@global_var_402048 = constant [36 x i8] c"Average of the entered numbers: %d\0A\00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401136:
  %stack_var_-12.0.off04.reg2mem = alloca i32, !insn.addr !0
  %indvars.iv.reg2mem = alloca i64, !insn.addr !0
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !1
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_var_402010, i64 0, i64 0)), !insn.addr !2
  %2 = add i64 %0, -64, !insn.addr !3
  store i64 0, i64* %indvars.iv.reg2mem
  store i32 0, i32* %stack_var_-12.0.off04.reg2mem
  br label %dec_label_pc_4011a3

dec_label_pc_4011a3:                              ; preds = %dec_label_pc_4011a3, %dec_label_pc_401136
  %stack_var_-12.0.off04.reload = load i32, i32* %stack_var_-12.0.off04.reg2mem
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %3 = mul i64 %indvars.iv.reload, 4, !insn.addr !3
  %4 = add i64 %2, %3, !insn.addr !3
  %5 = inttoptr i64 %4 to i32*, !insn.addr !3
  %6 = load i32, i32* %5, align 4, !insn.addr !3
  %7 = zext i32 %6 to i64, !insn.addr !4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_40201e, i64 0, i64 0), i64 %7), !insn.addr !5
  %9 = load i32, i32* %5, align 4, !insn.addr !6
  %10 = add i32 %9, %stack_var_-12.0.off04.reload, !insn.addr !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !8
  store i32 %10, i32* %stack_var_-12.0.off04.reg2mem, !insn.addr !8
  br i1 %exitcond, label %dec_label_pc_4011d3, label %dec_label_pc_4011a3, !insn.addr !8

dec_label_pc_4011d3:                              ; preds = %dec_label_pc_4011a3
  %11 = call i32 @putchar(i32 10), !insn.addr !9
  %12 = sdiv i32 %10, 10, !insn.addr !10
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_var_402028, i64 0, i64 0), i64 0), !insn.addr !11
  %14 = zext i32 %12 to i64, !insn.addr !12
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @global_var_402048, i64 0, i64 0), i64 %14), !insn.addr !13
  ret i32 0, !insn.addr !14

; uselistorder directives
  uselistorder i32 %10, { 1, 0 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i32* %stack_var_-12.0.off04.reg2mem, { 1, 0, 2 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i32 (i8*, ...)* @printf, { 1, 2, 3, 0 }
  uselistorder i64 0, { 4, 5, 1, 6, 7, 2, 3, 0, 8, 9, 10 }
  uselistorder i32 1, { 2, 1, 0 }
}

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198710}
!1 = !{i64 4198711}
!2 = !{i64 4198805}
!3 = !{i64 4198824}
!4 = !{i64 4198828}
!5 = !{i64 4198840}
!6 = !{i64 4198850}
!7 = !{i64 4198854}
!8 = !{i64 4198865}
!9 = !{i64 4198872}
!10 = !{i64 4198904}
!11 = !{i64 4198924}
!12 = !{i64 4198932}
!13 = !{i64 4198944}
!14 = !{i64 4198955}
