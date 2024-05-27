; ModuleID = 'src/floating_point.c'
source_filename = "src/floating_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"x = %.2f, y = %.2f\0A\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"Addition: %.2f\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [19 x i8] c"Subtraction: %.2f\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [22 x i8] c"Multiplication: %.2f\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [11 x i8] c"Division: \00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [6 x i8] c"%.2f\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [19 x i8] c"Division by zero!\0A\00", align 1, !dbg !32

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !46 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store i32 0, ptr %1, align 4
  %4 = call i64 @time(ptr noundef null) #4, !dbg !51
  %5 = trunc i64 %4 to i32, !dbg !51
  call void @srand(i32 noundef %5) #4, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %2, metadata !53, metadata !DIExpression()), !dbg !54
  %6 = call i32 @rand() #4, !dbg !55
  %7 = srem i32 %6, 100, !dbg !56
  %8 = sitofp i32 %7 to float, !dbg !57
  store float %8, ptr %2, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %3, metadata !58, metadata !DIExpression()), !dbg !59
  %9 = call i32 @rand() #4, !dbg !60
  %10 = srem i32 %9, 100, !dbg !61
  %11 = sitofp i32 %10 to float, !dbg !62
  store float %11, ptr %3, align 4, !dbg !59
  %12 = load float, ptr %2, align 4, !dbg !63
  %13 = fpext float %12 to double, !dbg !63
  %14 = load float, ptr %3, align 4, !dbg !64
  %15 = fpext float %14 to double, !dbg !64
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %13, double noundef %15), !dbg !65
  %17 = load float, ptr %2, align 4, !dbg !66
  %18 = load float, ptr %3, align 4, !dbg !67
  %19 = call float @add(float noundef %17, float noundef %18), !dbg !68
  %20 = fpext float %19 to double, !dbg !68
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %20), !dbg !69
  %22 = load float, ptr %2, align 4, !dbg !70
  %23 = load float, ptr %3, align 4, !dbg !71
  %24 = call float @subtract(float noundef %22, float noundef %23), !dbg !72
  %25 = fpext float %24 to double, !dbg !72
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %25), !dbg !73
  %27 = load float, ptr %2, align 4, !dbg !74
  %28 = load float, ptr %3, align 4, !dbg !75
  %29 = call float @multiply(float noundef %27, float noundef %28), !dbg !76
  %30 = fpext float %29 to double, !dbg !76
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %30), !dbg !77
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !78
  %33 = load float, ptr %3, align 4, !dbg !79
  %34 = fcmp une float %33, 0.000000e+00, !dbg !81
  br i1 %34, label %35, label %41, !dbg !82

35:                                               ; preds = %0
  %36 = load float, ptr %2, align 4, !dbg !83
  %37 = load float, ptr %3, align 4, !dbg !84
  %38 = call float @divide(float noundef %36, float noundef %37), !dbg !85
  %39 = fpext float %38 to double, !dbg !85
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %39), !dbg !86
  br label %43, !dbg !86

41:                                               ; preds = %0
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !87
  br label %43

43:                                               ; preds = %41, %35
  ret i32 0, !dbg !88
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @add(float noundef %0, float noundef %1) #0 !dbg !89 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !92, metadata !DIExpression()), !dbg !93
  store float %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !94, metadata !DIExpression()), !dbg !95
  %5 = load float, ptr %3, align 4, !dbg !96
  %6 = load float, ptr %4, align 4, !dbg !97
  %7 = fadd float %5, %6, !dbg !98
  ret float %7, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @subtract(float noundef %0, float noundef %1) #0 !dbg !100 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !101, metadata !DIExpression()), !dbg !102
  store float %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !103, metadata !DIExpression()), !dbg !104
  %5 = load float, ptr %3, align 4, !dbg !105
  %6 = load float, ptr %4, align 4, !dbg !106
  %7 = fsub float %5, %6, !dbg !107
  ret float %7, !dbg !108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @multiply(float noundef %0, float noundef %1) #0 !dbg !109 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !110, metadata !DIExpression()), !dbg !111
  store float %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !112, metadata !DIExpression()), !dbg !113
  %5 = load float, ptr %3, align 4, !dbg !114
  %6 = load float, ptr %4, align 4, !dbg !115
  %7 = fmul float %5, %6, !dbg !116
  ret float %7, !dbg !117
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @divide(float noundef %0, float noundef %1) #0 !dbg !118 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !119, metadata !DIExpression()), !dbg !120
  store float %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !121, metadata !DIExpression()), !dbg !122
  %6 = load float, ptr %5, align 4, !dbg !123
  %7 = fcmp une float %6, 0.000000e+00, !dbg !125
  br i1 %7, label %8, label %12, !dbg !126

8:                                                ; preds = %2
  %9 = load float, ptr %4, align 4, !dbg !127
  %10 = load float, ptr %5, align 4, !dbg !128
  %11 = fdiv float %9, %10, !dbg !129
  store float %11, ptr %3, align 4, !dbg !130
  br label %13, !dbg !130

12:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !dbg !131
  br label %13, !dbg !131

13:                                               ; preds = %12, %8
  %14 = load float, ptr %3, align 4, !dbg !132
  ret float %14, !dbg !132
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/floating_point.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "b953e80ad645fcda7dd7472a576c8b2d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 19)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 22)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 11)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 6)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !14, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !35, globals: !37, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36}
!36 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!37 = !{!0, !7, !12, !17, !22, !27, !32}
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!46 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 11, type: !47, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !50)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !{}
!51 = !DILocation(line: 13, column: 11, scope: !46)
!52 = !DILocation(line: 13, column: 5, scope: !46)
!53 = !DILocalVariable(name: "x", scope: !46, file: !2, line: 15, type: !36)
!54 = !DILocation(line: 15, column: 11, scope: !46)
!55 = !DILocation(line: 15, column: 23, scope: !46)
!56 = !DILocation(line: 15, column: 30, scope: !46)
!57 = !DILocation(line: 15, column: 15, scope: !46)
!58 = !DILocalVariable(name: "y", scope: !46, file: !2, line: 16, type: !36)
!59 = !DILocation(line: 16, column: 11, scope: !46)
!60 = !DILocation(line: 16, column: 23, scope: !46)
!61 = !DILocation(line: 16, column: 30, scope: !46)
!62 = !DILocation(line: 16, column: 15, scope: !46)
!63 = !DILocation(line: 18, column: 38, scope: !46)
!64 = !DILocation(line: 18, column: 41, scope: !46)
!65 = !DILocation(line: 18, column: 5, scope: !46)
!66 = !DILocation(line: 20, column: 36, scope: !46)
!67 = !DILocation(line: 20, column: 39, scope: !46)
!68 = !DILocation(line: 20, column: 32, scope: !46)
!69 = !DILocation(line: 20, column: 5, scope: !46)
!70 = !DILocation(line: 21, column: 44, scope: !46)
!71 = !DILocation(line: 21, column: 47, scope: !46)
!72 = !DILocation(line: 21, column: 35, scope: !46)
!73 = !DILocation(line: 21, column: 5, scope: !46)
!74 = !DILocation(line: 22, column: 47, scope: !46)
!75 = !DILocation(line: 22, column: 50, scope: !46)
!76 = !DILocation(line: 22, column: 38, scope: !46)
!77 = !DILocation(line: 22, column: 5, scope: !46)
!78 = !DILocation(line: 23, column: 5, scope: !46)
!79 = !DILocation(line: 24, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !46, file: !2, line: 24, column: 9)
!81 = !DILocation(line: 24, column: 11, scope: !80)
!82 = !DILocation(line: 24, column: 9, scope: !46)
!83 = !DILocation(line: 25, column: 33, scope: !80)
!84 = !DILocation(line: 25, column: 36, scope: !80)
!85 = !DILocation(line: 25, column: 26, scope: !80)
!86 = !DILocation(line: 25, column: 9, scope: !80)
!87 = !DILocation(line: 27, column: 9, scope: !80)
!88 = !DILocation(line: 29, column: 5, scope: !46)
!89 = distinct !DISubprogram(name: "add", scope: !2, file: !2, line: 33, type: !90, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !50)
!90 = !DISubroutineType(types: !91)
!91 = !{!36, !36, !36}
!92 = !DILocalVariable(name: "a", arg: 1, scope: !89, file: !2, line: 33, type: !36)
!93 = !DILocation(line: 33, column: 17, scope: !89)
!94 = !DILocalVariable(name: "b", arg: 2, scope: !89, file: !2, line: 33, type: !36)
!95 = !DILocation(line: 33, column: 26, scope: !89)
!96 = !DILocation(line: 34, column: 12, scope: !89)
!97 = !DILocation(line: 34, column: 16, scope: !89)
!98 = !DILocation(line: 34, column: 14, scope: !89)
!99 = !DILocation(line: 34, column: 5, scope: !89)
!100 = distinct !DISubprogram(name: "subtract", scope: !2, file: !2, line: 37, type: !90, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !50)
!101 = !DILocalVariable(name: "a", arg: 1, scope: !100, file: !2, line: 37, type: !36)
!102 = !DILocation(line: 37, column: 22, scope: !100)
!103 = !DILocalVariable(name: "b", arg: 2, scope: !100, file: !2, line: 37, type: !36)
!104 = !DILocation(line: 37, column: 31, scope: !100)
!105 = !DILocation(line: 38, column: 12, scope: !100)
!106 = !DILocation(line: 38, column: 16, scope: !100)
!107 = !DILocation(line: 38, column: 14, scope: !100)
!108 = !DILocation(line: 38, column: 5, scope: !100)
!109 = distinct !DISubprogram(name: "multiply", scope: !2, file: !2, line: 41, type: !90, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !50)
!110 = !DILocalVariable(name: "a", arg: 1, scope: !109, file: !2, line: 41, type: !36)
!111 = !DILocation(line: 41, column: 22, scope: !109)
!112 = !DILocalVariable(name: "b", arg: 2, scope: !109, file: !2, line: 41, type: !36)
!113 = !DILocation(line: 41, column: 31, scope: !109)
!114 = !DILocation(line: 42, column: 12, scope: !109)
!115 = !DILocation(line: 42, column: 16, scope: !109)
!116 = !DILocation(line: 42, column: 14, scope: !109)
!117 = !DILocation(line: 42, column: 5, scope: !109)
!118 = distinct !DISubprogram(name: "divide", scope: !2, file: !2, line: 45, type: !90, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !50)
!119 = !DILocalVariable(name: "a", arg: 1, scope: !118, file: !2, line: 45, type: !36)
!120 = !DILocation(line: 45, column: 20, scope: !118)
!121 = !DILocalVariable(name: "b", arg: 2, scope: !118, file: !2, line: 45, type: !36)
!122 = !DILocation(line: 45, column: 29, scope: !118)
!123 = !DILocation(line: 46, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !2, line: 46, column: 9)
!125 = !DILocation(line: 46, column: 11, scope: !124)
!126 = !DILocation(line: 46, column: 9, scope: !118)
!127 = !DILocation(line: 47, column: 16, scope: !124)
!128 = !DILocation(line: 47, column: 20, scope: !124)
!129 = !DILocation(line: 47, column: 18, scope: !124)
!130 = !DILocation(line: 47, column: 9, scope: !124)
!131 = !DILocation(line: 49, column: 9, scope: !124)
!132 = !DILocation(line: 50, column: 1, scope: !118)
