source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [49 x i8] c"Elements of the arrays using pointer arithmetic:\00"
@global_var_402048 = constant [44 x i8] c"Element %d: %d (from arr1), %d (from arr2)\0A\00"
@global_var_402078 = constant [35 x i8] c"Sum of corresponding elements: %d\0A\00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401136:
  %indvars.iv.reg2mem = alloca i64, !insn.addr !0
  %stack_var_-56 = alloca i32, align 4
  %stack_var_-88 = alloca i64, align 8
  store i32 1, i32* %stack_var_-56, align 4, !insn.addr !1
  store i64 6, i64* %stack_var_-88, align 8, !insn.addr !2
  %0 = ptrtoint i32* %stack_var_-56 to i64, !insn.addr !3
  %1 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @global_var_402010, i64 0, i64 0)), !insn.addr !4
  %2 = ptrtoint i64* %stack_var_-88 to i64, !insn.addr !5
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_4011aa

dec_label_pc_4011aa:                              ; preds = %dec_label_pc_4011aa, %dec_label_pc_401136
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %3 = mul i64 %indvars.iv.reload, 4, !insn.addr !6
  %4 = add i64 %3, %2, !insn.addr !7
  %5 = inttoptr i64 %4 to i32*, !insn.addr !8
  %6 = load i32, i32* %5, align 4, !insn.addr !8
  %7 = add i64 %3, %0, !insn.addr !9
  %8 = inttoptr i64 %7 to i32*, !insn.addr !10
  %9 = load i32, i32* %8, align 4, !insn.addr !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %10 = zext i32 %6 to i64, !insn.addr !11
  %11 = zext i32 %9 to i64, !insn.addr !12
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @global_var_402048, i64 0, i64 0), i64 %indvars.iv.next, i64 %11, i64 %10), !insn.addr !13
  %13 = load i32, i32* %8, align 4, !insn.addr !14
  %14 = load i32, i32* %5, align 4, !insn.addr !15
  %15 = add i32 %14, %13, !insn.addr !16
  %16 = zext i32 %15 to i64, !insn.addr !17
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_var_402078, i64 0, i64 0), i64 %16), !insn.addr !18
  %exitcond = icmp eq i64 %indvars.iv.next, 5
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !19
  br i1 %exitcond, label %dec_label_pc_401242, label %dec_label_pc_4011aa, !insn.addr !19

dec_label_pc_401242:                              ; preds = %dec_label_pc_4011aa
  ret i32 0, !insn.addr !20

; uselistorder directives
  uselistorder i64 %3, { 1, 0 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i32 (i8*, ...)* @printf, { 1, 0 }
  uselistorder i64 0, { 1, 2, 3, 4, 0, 5, 6, 7 }
  uselistorder i32 1, { 1, 3, 2, 0 }
}

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198710}
!1 = !{i64 4198718}
!2 = !{i64 4198753}
!3 = !{i64 4198792}
!4 = !{i64 4198809}
!5 = !{i64 4198839}
!6 = !{i64 4198831}
!7 = !{i64 4198843}
!8 = !{i64 4198846}
!9 = !{i64 4198865}
!10 = !{i64 4198868}
!11 = !{i64 4198876}
!12 = !{i64 4198878}
!13 = !{i64 4198890}
!14 = !{i64 4198915}
!15 = !{i64 4198937}
!16 = !{i64 4198939}
!17 = !{i64 4198947}
!18 = !{i64 4198959}
!19 = !{i64 4198972}
!20 = !{i64 4198984}
