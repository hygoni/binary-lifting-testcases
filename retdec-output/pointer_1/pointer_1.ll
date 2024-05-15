source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@0 = internal constant [14 x i8] c"a\EC\9D\98 \EA\B0\92: %d\0A\00"
@global_var_402010 = constant i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0)

define void @increment(i32* %value) local_unnamed_addr {
dec_label_pc_401126:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1, !insn.addr !0
  store i32 %3, i32* %value, align 4, !insn.addr !1
  ret void, !insn.addr !2
}

define i32 @main() local_unnamed_addr {
dec_label_pc_401140:
  %stack_var_-12 = alloca i32, align 4
  store i32 10, i32* %stack_var_-12, align 4, !insn.addr !3
  call void @increment(i32* nonnull %stack_var_-12), !insn.addr !4
  %0 = call i32 (i8*, ...) @printf(i8* bitcast (i8** @global_var_402010 to i8*)), !insn.addr !5
  ret i32 0, !insn.addr !6

; uselistorder directives
  uselistorder i32 1, { 2, 1, 0 }
}

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198708}
!1 = !{i64 4198715}
!2 = !{i64 4198719}
!3 = !{i64 4198728}
!4 = !{i64 4198742}
!5 = !{i64 4198762}
!6 = !{i64 4198773}
