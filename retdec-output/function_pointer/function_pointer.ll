source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_404080 = local_unnamed_addr global i64 0
@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [17 x i8] c"x = %d, y = %d\0A\0A\00"
@ops = local_unnamed_addr global [4 x void (i32, i32)*] [void (i32, i32)* inttoptr (i64 4198943 to void (i32, i32)*), void (i32, i32)* inttoptr (i64 4198985 to void (i32, i32)*), void (i32, i32)* inttoptr (i64 4199025 to void (i32, i32)*), void (i32, i32)* inttoptr (i64 4199066 to void (i32, i32)*)]
@global_var_402021 = local_unnamed_addr constant [4 x i8] c"%d\0A\00"
@global_var_402025 = local_unnamed_addr constant [18 x i8] c"Division by zero!\00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401166:
  %0 = call i32 @time(i32* null), !insn.addr !0
  call void @srand(i32 %0), !insn.addr !1
  %1 = call i32 @rand(), !insn.addr !2
  %2 = srem i32 %1, 100
  %3 = call i32 @rand(), !insn.addr !3
  %4 = srem i32 %3, 100
  %5 = zext i32 %4 to i64, !insn.addr !4
  %6 = zext i32 %2 to i64, !insn.addr !5
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_var_402010, i64 0, i64 0), i64 %6, i64 %5), !insn.addr !6
  ret i32 0, !insn.addr !7
}

declare i32 @printf(i8*, ...) local_unnamed_addr

declare void @srand(i32) local_unnamed_addr

declare i32 @time(i32*) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

!0 = !{i64 4198771}
!1 = !{i64 4198778}
!2 = !{i64 4198783}
!3 = !{i64 4198826}
!4 = !{i64 4198869}
!5 = !{i64 4198875}
!6 = !{i64 4198887}
!7 = !{i64 4198942}
