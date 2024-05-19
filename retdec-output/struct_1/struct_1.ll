source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [3 x i8] c"%s\00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401146:
  %0 = call i64* @malloc(i32 48), !insn.addr !0
  %1 = ptrtoint i64* %0 to i64, !insn.addr !0
  %2 = call i64* @malloc(i32 48), !insn.addr !1
  %3 = call i64* @malloc(i32 48), !insn.addr !2
  store i64 2851464966991703, i64* %0, align 8, !insn.addr !3
  store i64 9056056326776136, i64* %2, align 8, !insn.addr !4
  %4 = ptrtoint i64* %3 to i64, !insn.addr !5
  store i64 2338328219631577172, i64* %3, align 8, !insn.addr !6
  %5 = add i64 %4, 8, !insn.addr !7
  %6 = inttoptr i64 %5 to i64*, !insn.addr !7
  store i64 729976100997046369, i64* %6, align 8, !insn.addr !7
  %7 = add i64 %4, 16, !insn.addr !8
  %8 = inttoptr i64 %7 to i8*, !insn.addr !8
  store i8 0, i8* %8, align 1, !insn.addr !8
  %9 = ptrtoint i64* %2 to i64, !insn.addr !9
  %10 = add i64 %1, 32, !insn.addr !10
  %11 = inttoptr i64 %10 to i64*, !insn.addr !10
  store i64 %9, i64* %11, align 8, !insn.addr !10
  %12 = add i64 %1, 40, !insn.addr !11
  %13 = inttoptr i64 %12 to i64*, !insn.addr !11
  store i64 %4, i64* %13, align 8, !insn.addr !11
  %14 = load i64, i64* %11, align 8, !insn.addr !12
  %15 = inttoptr i64 %14 to i8*, !insn.addr !13
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_402010, i64 0, i64 0), i8* %15), !insn.addr !13
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_402010, i64 0, i64 0), i64* %0), !insn.addr !14
  %18 = load i64, i64* %13, align 8, !insn.addr !15
  %19 = inttoptr i64 %18 to i8*, !insn.addr !16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_402010, i64 0, i64 0), i8* %19), !insn.addr !16
  call void @free(i64* %0), !insn.addr !17
  call void @free(i64* %2), !insn.addr !18
  call void @free(i64* %3), !insn.addr !19
  ret i32 0, !insn.addr !20

; uselistorder directives
  uselistorder i64* %3, { 1, 2, 0 }
  uselistorder i64* %2, { 1, 0, 2 }
  uselistorder i64* %0, { 1, 0, 2, 3 }
  uselistorder void (i64*)* @free, { 2, 1, 0 }
  uselistorder i32 (i8*, ...)* @printf, { 2, 0, 1 }
  uselistorder i64* (i32)* @malloc, { 2, 1, 0 }
}

declare void @free(i64*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

!0 = !{i64 4198739}
!1 = !{i64 4198753}
!2 = !{i64 4198767}
!3 = !{i64 4198790}
!4 = !{i64 4198807}
!5 = !{i64 4198810}
!6 = !{i64 4198834}
!7 = !{i64 4198837}
!8 = !{i64 4198841}
!9 = !{i64 4198849}
!10 = !{i64 4198853}
!11 = !{i64 4198865}
!12 = !{i64 4198873}
!13 = !{i64 4198890}
!14 = !{i64 4198912}
!15 = !{i64 4198921}
!16 = !{i64 4198938}
!17 = !{i64 4198950}
!18 = !{i64 4198962}
!19 = !{i64 4198974}
!20 = !{i64 4198985}
