source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [4 x i8] c"%d\0A\00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401126:
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), i64 3), !insn.addr !0
  ret i32 0, !insn.addr !1
}

declare i32 @printf(i8*, ...) local_unnamed_addr

!0 = !{i64 4198740}
!1 = !{i64 4198751}
