source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [40 x i8] c"Element %d is not present in the array\0A\00"
@global_var_402038 = constant [35 x i8] c"Element %d is present at index %d\0A\00"

define i32 @binarySearch(i32* %arr, i32 %left, i32 %right, i32 %target) local_unnamed_addr {
dec_label_pc_401126:
  %storemerge.reg2mem = alloca i32, !insn.addr !0
  %stack_var_-40.03.reg2mem = alloca i32, !insn.addr !0
  %stack_var_-36.0.ph6.reg2mem = alloca i32, !insn.addr !0
  %stack_var_-40.0.ph7.reg2mem = alloca i32, !insn.addr !0
  %0 = icmp slt i32 %right, %left, !insn.addr !1
  store i32 -1, i32* %storemerge.reg2mem, !insn.addr !1
  br i1 %0, label %dec_label_pc_4011ae, label %dec_label_pc_401139.lr.ph.lr.ph, !insn.addr !1

dec_label_pc_401139.lr.ph.lr.ph:                  ; preds = %dec_label_pc_401126
  %1 = ptrtoint i32* %arr to i64, !insn.addr !2
  %2 = sext i32 %target to i64
  store i32 %right, i32* %stack_var_-40.0.ph7.reg2mem
  store i32 %left, i32* %stack_var_-36.0.ph6.reg2mem
  br label %dec_label_pc_401139.lr.ph

dec_label_pc_401139.lr.ph:                        ; preds = %dec_label_pc_401139.lr.ph.lr.ph, %dec_label_pc_40118d
  %stack_var_-36.0.ph6.reload = load i32, i32* %stack_var_-36.0.ph6.reg2mem
  %stack_var_-40.0.ph7.reload = load i32, i32* %stack_var_-40.0.ph7.reg2mem
  store i32 %stack_var_-40.0.ph7.reload, i32* %stack_var_-40.03.reg2mem
  br label %dec_label_pc_401139

dec_label_pc_401139:                              ; preds = %dec_label_pc_401139.lr.ph, %dec_label_pc_401198
  %stack_var_-40.03.reload = load i32, i32* %stack_var_-40.03.reg2mem
  %3 = sub i32 %stack_var_-40.03.reload, %stack_var_-36.0.ph6.reload, !insn.addr !3
  %4 = icmp slt i32 %3, 0
  %5 = zext i1 %4 to i32, !insn.addr !4
  %6 = add i32 %3, %5, !insn.addr !5
  %7 = ashr i32 %6, 1, !insn.addr !6
  %8 = add i32 %7, %stack_var_-36.0.ph6.reload, !insn.addr !7
  %9 = sext i32 %8 to i64, !insn.addr !8
  %10 = mul i64 %9, 4, !insn.addr !9
  %11 = add i64 %10, %1, !insn.addr !10
  %12 = inttoptr i64 %11 to i32*, !insn.addr !11
  %13 = load i32, i32* %12, align 4, !insn.addr !11
  %14 = icmp eq i32 %13, %target, !insn.addr !12
  %15 = icmp eq i1 %14, false, !insn.addr !13
  store i32 %8, i32* %storemerge.reg2mem, !insn.addr !13
  br i1 %15, label %dec_label_pc_401172, label %dec_label_pc_4011ae, !insn.addr !13

dec_label_pc_401172:                              ; preds = %dec_label_pc_401139
  %16 = zext i32 %13 to i64, !insn.addr !14
  %17 = icmp sgt i64 %2, %16, !insn.addr !15
  br i1 %17, label %dec_label_pc_40118d, label %dec_label_pc_401198, !insn.addr !15

dec_label_pc_40118d:                              ; preds = %dec_label_pc_401172
  %18 = add i32 %8, 1, !insn.addr !16
  %19 = icmp slt i32 %stack_var_-40.03.reload, %18, !insn.addr !1
  store i32 %stack_var_-40.03.reload, i32* %stack_var_-40.0.ph7.reg2mem, !insn.addr !1
  store i32 %18, i32* %stack_var_-36.0.ph6.reg2mem, !insn.addr !1
  store i32 -1, i32* %storemerge.reg2mem, !insn.addr !1
  br i1 %19, label %dec_label_pc_4011ae, label %dec_label_pc_401139.lr.ph, !insn.addr !1

dec_label_pc_401198:                              ; preds = %dec_label_pc_401172
  %20 = add i32 %8, -1, !insn.addr !17
  %21 = icmp slt i32 %20, %stack_var_-36.0.ph6.reload, !insn.addr !1
  store i32 %20, i32* %stack_var_-40.03.reg2mem, !insn.addr !1
  store i32 -1, i32* %storemerge.reg2mem, !insn.addr !1
  br i1 %21, label %dec_label_pc_4011ae, label %dec_label_pc_401139, !insn.addr !1

dec_label_pc_4011ae:                              ; preds = %dec_label_pc_40118d, %dec_label_pc_401139, %dec_label_pc_401198, %dec_label_pc_401126
  %storemerge.reload = load i32, i32* %storemerge.reg2mem
  ret i32 %storemerge.reload, !insn.addr !18

; uselistorder directives
  uselistorder i32 %13, { 1, 0 }
  uselistorder i32 %8, { 2, 1, 0, 3 }
  uselistorder i32 %stack_var_-40.03.reload, { 2, 1, 0 }
  uselistorder i32 %stack_var_-36.0.ph6.reload, { 1, 2, 0 }
  uselistorder i32* %stack_var_-40.0.ph7.reg2mem, { 1, 0, 2 }
  uselistorder i32* %stack_var_-36.0.ph6.reg2mem, { 1, 0, 2 }
  uselistorder i32* %stack_var_-40.03.reg2mem, { 1, 0, 2 }
  uselistorder i32* %storemerge.reg2mem, { 0, 2, 1, 3, 4 }
  uselistorder label %dec_label_pc_4011ae, { 2, 0, 1, 3 }
  uselistorder label %dec_label_pc_401139, { 1, 0 }
  uselistorder label %dec_label_pc_401139.lr.ph, { 1, 0 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_4011b0:
  %stack_var_-56 = alloca i64, align 8
  store i64 2, i64* %stack_var_-56, align 8, !insn.addr !19
  %0 = bitcast i64* %stack_var_-56 to i32*, !insn.addr !20
  %1 = call i32 @binarySearch(i32* nonnull %0, i32 0, i32 7, i32 10), !insn.addr !20
  %2 = icmp eq i32 %1, -1, !insn.addr !21
  %3 = icmp eq i1 %2, false, !insn.addr !22
  br i1 %3, label %dec_label_pc_40123b, label %dec_label_pc_401225, !insn.addr !22

dec_label_pc_401225:                              ; preds = %dec_label_pc_4011b0
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @global_var_402010, i64 0, i64 0), i64 10), !insn.addr !23
  br label %dec_label_pc_401252, !insn.addr !24

dec_label_pc_40123b:                              ; preds = %dec_label_pc_4011b0
  %5 = zext i32 %1 to i64, !insn.addr !25
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @global_var_402038, i64 0, i64 0), i64 10, i64 %5), !insn.addr !26
  br label %dec_label_pc_401252, !insn.addr !26

dec_label_pc_401252:                              ; preds = %dec_label_pc_40123b, %dec_label_pc_401225
  ret i32 0, !insn.addr !27

; uselistorder directives
  uselistorder i32 -1, { 3, 1, 4, 0, 2 }
  uselistorder i32 0, { 0, 2, 1 }
  uselistorder i32 1, { 4, 5, 6, 3, 2, 1, 0 }
}

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198694}
!1 = !{i64 4198823}
!2 = !{i64 4198751}
!3 = !{i64 4198716}
!4 = !{i64 4198721}
!5 = !{i64 4198724}
!6 = !{i64 4198726}
!7 = !{i64 4198733}
!8 = !{i64 4198741}
!9 = !{i64 4198743}
!10 = !{i64 4198755}
!11 = !{i64 4198758}
!12 = !{i64 4198760}
!13 = !{i64 4198763}
!14 = !{i64 4198790}
!15 = !{i64 4198795}
!16 = !{i64 4198800}
!17 = !{i64 4198811}
!18 = !{i64 4198831}
!19 = !{i64 4198840}
!20 = !{i64 4198935}
!21 = !{i64 4198943}
!22 = !{i64 4198947}
!23 = !{i64 4198964}
!24 = !{i64 4198969}
!25 = !{i64 4198971}
!26 = !{i64 4198989}
!27 = !{i64 4199000}
