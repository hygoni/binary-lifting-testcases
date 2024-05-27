; ModuleID = 'src/calc_1.c'
source_filename = "src/calc_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 1, ptr %2, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata ptr %3, metadata !24, metadata !DIExpression()), !dbg !25
  store i8 2, ptr %3, align 1, !dbg !25
  call void @llvm.dbg.declare(metadata ptr %4, metadata !26, metadata !DIExpression()), !dbg !27
  %5 = load i32, ptr %2, align 4, !dbg !28
  %6 = load i8, ptr %3, align 1, !dbg !29
  %7 = sext i8 %6 to i32, !dbg !30
  %8 = add nsw i32 %5, %7, !dbg !31
  store i32 %8, ptr %4, align 4, !dbg !27
  %9 = load i32, ptr %4, align 4, !dbg !32
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9), !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 9, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/calc_1.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "79ac13af7dc37e192d51d09e44bff33b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !8, globals: !10, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!0}
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!19 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 5, type: !20, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!20 = !DISubroutineType(types: !8)
!21 = !{}
!22 = !DILocalVariable(name: "a", scope: !19, file: !2, line: 6, type: !9)
!23 = !DILocation(line: 6, column: 9, scope: !19)
!24 = !DILocalVariable(name: "b", scope: !19, file: !2, line: 7, type: !4)
!25 = !DILocation(line: 7, column: 10, scope: !19)
!26 = !DILocalVariable(name: "c", scope: !19, file: !2, line: 8, type: !9)
!27 = !DILocation(line: 8, column: 9, scope: !19)
!28 = !DILocation(line: 8, column: 13, scope: !19)
!29 = !DILocation(line: 8, column: 23, scope: !19)
!30 = !DILocation(line: 8, column: 17, scope: !19)
!31 = !DILocation(line: 8, column: 15, scope: !19)
!32 = !DILocation(line: 9, column: 20, scope: !19)
!33 = !DILocation(line: 9, column: 5, scope: !19)
!34 = !DILocation(line: 10, column: 5, scope: !19)
