source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [12 x i8] c"Ascending: \00"
@global_var_40201c = constant [4 x i8] c"%d \00"
@global_var_402020 = constant [13 x i8] c"Descending: \00"

define void @sort(i32* %array, i32 %n, i32 (i32*, i32*)* %compare) local_unnamed_addr {
dec_label_pc_401182:
  %0 = bitcast i32* %array to i64*, !insn.addr !0
  %1 = bitcast i32 (i32*, i32*)* %compare to i32 (i64*, i64*)*, !insn.addr !0
  call void @qsort(i64* %0, i32 %n, i32 4, i32 (i64*, i64*)* %1), !insn.addr !0
  ret void, !insn.addr !1
}

define i32 @main() local_unnamed_addr {
dec_label_pc_4011b6:
  %indvars.iv.reg2mem = alloca i64, !insn.addr !2
  %indvars.iv4.reg2mem = alloca i64, !insn.addr !2
  %stack_var_-40 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint i64* %stack_var_-8 to i64, !insn.addr !3
  store i64 5, i64* %stack_var_-40, align 8, !insn.addr !4
  %1 = bitcast i64* %stack_var_-40 to i32*, !insn.addr !5
  call void @sort(i32* nonnull %1, i32 6, i32 (i32*, i32*)* inttoptr (i64 4198726 to i32 (i32*, i32*)*)), !insn.addr !5
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_var_402010, i64 0, i64 0)), !insn.addr !6
  %3 = add i64 %0, -32
  store i64 0, i64* %indvars.iv4.reg2mem
  br label %dec_label_pc_401216

dec_label_pc_401216:                              ; preds = %dec_label_pc_401216, %dec_label_pc_4011b6
  %indvars.iv4.reload = load i64, i64* %indvars.iv4.reg2mem
  %4 = mul i64 %indvars.iv4.reload, 4, !insn.addr !7
  %5 = add i64 %4, %3, !insn.addr !7
  %6 = inttoptr i64 %5 to i32*, !insn.addr !7
  %7 = load i32, i32* %6, align 4, !insn.addr !7
  %8 = zext i32 %7 to i64, !insn.addr !8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_40201c, i64 0, i64 0), i64 %8), !insn.addr !9
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 6
  store i64 %indvars.iv.next5, i64* %indvars.iv4.reg2mem, !insn.addr !10
  br i1 %exitcond6, label %dec_label_pc_40123a, label %dec_label_pc_401216, !insn.addr !10

dec_label_pc_40123a:                              ; preds = %dec_label_pc_401216
  %10 = call i32 @putchar(i32 10), !insn.addr !11
  call void @sort(i32* nonnull %1, i32 6, i32 (i32*, i32*)* inttoptr (i64 4198756 to i32 (i32*, i32*)*)), !insn.addr !12
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_402020, i64 0, i64 0)), !insn.addr !13
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401272

dec_label_pc_401272:                              ; preds = %dec_label_pc_401272, %dec_label_pc_40123a
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %12 = mul i64 %indvars.iv.reload, 4, !insn.addr !14
  %13 = add i64 %12, %3, !insn.addr !14
  %14 = inttoptr i64 %13 to i32*, !insn.addr !14
  %15 = load i32, i32* %14, align 4, !insn.addr !14
  %16 = zext i32 %15 to i64, !insn.addr !15
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_40201c, i64 0, i64 0), i64 %16), !insn.addr !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !17
  br i1 %exitcond, label %dec_label_pc_401296, label %dec_label_pc_401272, !insn.addr !17

dec_label_pc_401296:                              ; preds = %dec_label_pc_401272
  %18 = call i32 @putchar(i32 10), !insn.addr !18
  ret i32 0, !insn.addr !19

; uselistorder directives
  uselistorder i64* %indvars.iv4.reg2mem, { 1, 0, 2 }
  uselistorder i64* %indvars.iv.reg2mem, { 1, 0, 2 }
  uselistorder i32 (i32)* @putchar, { 1, 0 }
  uselistorder i64 6, { 1, 0 }
  uselistorder i64 1, { 1, 0 }
  uselistorder i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_40201c, i64 0, i64 0), { 1, 0 }
  uselistorder i32 (i8*, ...)* @printf, { 1, 3, 2, 0 }
  uselistorder i64 0, { 0, 4, 5, 2, 3, 1, 6, 7, 8 }
  uselistorder void (i32*, i32, i32 (i32*, i32*)*)* @sort, { 1, 0 }
  uselistorder i32 1, { 3, 2, 1, 0 }
}

declare i32 @putchar(i32) local_unnamed_addr

declare void @qsort(i64*, i32, i32, i32 (i64*, i64*)*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198830}
!1 = !{i64 4198837}
!2 = !{i64 4198838}
!3 = !{i64 4198839}
!4 = !{i64 4198846}
!5 = !{i64 4198905}
!6 = !{i64 4198920}
!7 = !{i64 4198939}
!8 = !{i64 4198943}
!9 = !{i64 4198955}
!10 = !{i64 4198968}
!11 = !{i64 4198975}
!12 = !{i64 4198997}
!13 = !{i64 4199012}
!14 = !{i64 4199031}
!15 = !{i64 4199035}
!16 = !{i64 4199047}
!17 = !{i64 4199060}
!18 = !{i64 4199067}
!19 = !{i64 4199078}
