; ModuleID = 'src/factorial.c'
source_filename = "src/factorial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"All test cases passed!\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [25 x i8] c"Some test cases failed.\0A\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial(i32 noundef %0) #0 !dbg !22 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !27, metadata !DIExpression()), !dbg !28
  %4 = load i32, ptr %3, align 4, !dbg !29
  %5 = icmp slt i32 %4, 0, !dbg !31
  br i1 %5, label %6, label %7, !dbg !32

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !33
  br label %17, !dbg !33

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !34
  %9 = icmp eq i32 %8, 0, !dbg !36
  br i1 %9, label %10, label %11, !dbg !37

10:                                               ; preds = %7
  store i32 1, ptr %2, align 4, !dbg !38
  br label %17, !dbg !38

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4, !dbg !39
  %13 = load i32, ptr %3, align 4, !dbg !40
  %14 = sub nsw i32 %13, 1, !dbg !41
  %15 = call i32 @factorial(i32 noundef %14), !dbg !42
  %16 = mul nsw i32 %12, %15, !dbg !43
  store i32 %16, ptr %2, align 4, !dbg !44
  br label %17, !dbg !44

17:                                               ; preds = %11, %10, %6
  %18 = load i32, ptr %2, align 4, !dbg !45
  ret i32 %18, !dbg !45
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @run_tests() #0 !dbg !46 {
  %1 = alloca i1, align 1
  %2 = call i32 @factorial(i32 noundef 0), !dbg !50
  %3 = icmp ne i32 %2, 1, !dbg !52
  br i1 %3, label %4, label %5, !dbg !53

4:                                                ; preds = %0
  store i1 false, ptr %1, align 1, !dbg !54
  br label %20, !dbg !54

5:                                                ; preds = %0
  %6 = call i32 @factorial(i32 noundef 5), !dbg !55
  %7 = icmp ne i32 %6, 120, !dbg !57
  br i1 %7, label %14, label %8, !dbg !58

8:                                                ; preds = %5
  %9 = call i32 @factorial(i32 noundef 6), !dbg !59
  %10 = icmp ne i32 %9, 720, !dbg !60
  br i1 %10, label %14, label %11, !dbg !61

11:                                               ; preds = %8
  %12 = call i32 @factorial(i32 noundef 10), !dbg !62
  %13 = icmp ne i32 %12, 3628800, !dbg !63
  br i1 %13, label %14, label %15, !dbg !64

14:                                               ; preds = %11, %8, %5
  store i1 false, ptr %1, align 1, !dbg !65
  br label %20, !dbg !65

15:                                               ; preds = %11
  %16 = call i32 @factorial(i32 noundef -5), !dbg !66
  %17 = icmp ne i32 %16, 0, !dbg !68
  br i1 %17, label %18, label %19, !dbg !69

18:                                               ; preds = %15
  store i1 false, ptr %1, align 1, !dbg !70
  br label %20, !dbg !70

19:                                               ; preds = %15
  store i1 true, ptr %1, align 1, !dbg !71
  br label %20, !dbg !71

20:                                               ; preds = %19, %18, %14, %4
  %21 = load i1, ptr %1, align 1, !dbg !72
  ret i1 %21, !dbg !72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !73 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call zeroext i1 @run_tests(), !dbg !76
  br i1 %2, label %3, label %5, !dbg !78

3:                                                ; preds = %0
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !79
  br label %7, !dbg !81

5:                                                ; preds = %0
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !82
  br label %7

7:                                                ; preds = %5, %3
  ret i32 0, !dbg !84
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/factorial.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "c90a67e51549652b0d9bdea7ca1f3988")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !13, splitDebugInlining: false, nameTableKind: None)
!13 = !{!0, !7}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!22 = distinct !DISubprogram(name: "factorial", scope: !2, file: !2, line: 6, type: !23, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "n", arg: 1, scope: !22, file: !2, line: 6, type: !25)
!28 = !DILocation(line: 6, column: 19, scope: !22)
!29 = !DILocation(line: 7, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !2, line: 7, column: 9)
!31 = !DILocation(line: 7, column: 11, scope: !30)
!32 = !DILocation(line: 7, column: 9, scope: !22)
!33 = !DILocation(line: 8, column: 9, scope: !30)
!34 = !DILocation(line: 9, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !22, file: !2, line: 9, column: 9)
!36 = !DILocation(line: 9, column: 11, scope: !35)
!37 = !DILocation(line: 9, column: 9, scope: !22)
!38 = !DILocation(line: 10, column: 9, scope: !35)
!39 = !DILocation(line: 12, column: 16, scope: !35)
!40 = !DILocation(line: 12, column: 30, scope: !35)
!41 = !DILocation(line: 12, column: 32, scope: !35)
!42 = !DILocation(line: 12, column: 20, scope: !35)
!43 = !DILocation(line: 12, column: 18, scope: !35)
!44 = !DILocation(line: 12, column: 9, scope: !35)
!45 = !DILocation(line: 13, column: 1, scope: !22)
!46 = distinct !DISubprogram(name: "run_tests", scope: !2, file: !2, line: 16, type: !47, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !12)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DILocation(line: 18, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !2, line: 18, column: 9)
!52 = !DILocation(line: 18, column: 22, scope: !51)
!53 = !DILocation(line: 18, column: 9, scope: !46)
!54 = !DILocation(line: 18, column: 28, scope: !51)
!55 = !DILocation(line: 21, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !46, file: !2, line: 21, column: 9)
!57 = !DILocation(line: 21, column: 22, scope: !56)
!58 = !DILocation(line: 21, column: 29, scope: !56)
!59 = !DILocation(line: 21, column: 32, scope: !56)
!60 = !DILocation(line: 21, column: 45, scope: !56)
!61 = !DILocation(line: 21, column: 52, scope: !56)
!62 = !DILocation(line: 21, column: 55, scope: !56)
!63 = !DILocation(line: 21, column: 69, scope: !56)
!64 = !DILocation(line: 21, column: 9, scope: !46)
!65 = !DILocation(line: 22, column: 9, scope: !56)
!66 = !DILocation(line: 25, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !46, file: !2, line: 25, column: 9)
!68 = !DILocation(line: 25, column: 23, scope: !67)
!69 = !DILocation(line: 25, column: 9, scope: !46)
!70 = !DILocation(line: 25, column: 29, scope: !67)
!71 = !DILocation(line: 27, column: 5, scope: !46)
!72 = !DILocation(line: 28, column: 1, scope: !46)
!73 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 30, type: !74, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !12)
!74 = !DISubroutineType(types: !75)
!75 = !{!25}
!76 = !DILocation(line: 32, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !2, line: 32, column: 9)
!78 = !DILocation(line: 32, column: 9, scope: !73)
!79 = !DILocation(line: 33, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !2, line: 32, column: 22)
!81 = !DILocation(line: 34, column: 5, scope: !80)
!82 = !DILocation(line: 35, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !2, line: 34, column: 12)
!84 = !DILocation(line: 38, column: 5, scope: !73)
