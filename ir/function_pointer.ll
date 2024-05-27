; ModuleID = 'src/function_pointer.c'
source_filename = "src/function_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ops = dso_local global [4 x ptr] [ptr @add, ptr @subtract, ptr @multiply, ptr @divide], align 16, !dbg !0
@.str = private unnamed_addr constant [17 x i8] c"x = %d, y = %d\0A\0A\00", align 1, !dbg !5
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !11
@.str.2 = private unnamed_addr constant [19 x i8] c"Division by zero!\0A\00", align 1, !dbg !16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add(i32 noundef %0, i32 noundef %1) #0 !dbg !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !38, metadata !DIExpression()), !dbg !39
  %5 = load i32, ptr %3, align 4, !dbg !40
  %6 = load i32, ptr %4, align 4, !dbg !41
  %7 = add nsw i32 %5, %6, !dbg !42
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7), !dbg !43
  ret void, !dbg !44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subtract(i32 noundef %0, i32 noundef %1) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = load i32, ptr %3, align 4, !dbg !50
  %6 = load i32, ptr %4, align 4, !dbg !51
  %7 = sub nsw i32 %5, %6, !dbg !52
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiply(i32 noundef %0, i32 noundef %1) #0 !dbg !55 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !58, metadata !DIExpression()), !dbg !59
  %5 = load i32, ptr %3, align 4, !dbg !60
  %6 = load i32, ptr %4, align 4, !dbg !61
  %7 = mul nsw i32 %5, %6, !dbg !62
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @divide(i32 noundef %0, i32 noundef %1) #0 !dbg !65 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !68, metadata !DIExpression()), !dbg !69
  %5 = load i32, ptr %4, align 4, !dbg !70
  %6 = icmp ne i32 %5, 0, !dbg !72
  br i1 %6, label %7, label %12, !dbg !73

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4, !dbg !74
  %9 = load i32, ptr %4, align 4, !dbg !75
  %10 = sdiv i32 %8, %9, !dbg !76
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10), !dbg !77
  br label %14, !dbg !77

12:                                               ; preds = %2
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !78
  br label %14

14:                                               ; preds = %12, %7
  ret void, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %5 = call i64 @time(ptr noundef null) #4, !dbg !83
  %6 = trunc i64 %5 to i32, !dbg !83
  call void @srand(i32 noundef %6) #4, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %2, metadata !85, metadata !DIExpression()), !dbg !86
  %7 = call i32 @rand() #4, !dbg !87
  %8 = srem i32 %7, 100, !dbg !88
  store i32 %8, ptr %2, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %3, metadata !89, metadata !DIExpression()), !dbg !90
  %9 = call i32 @rand() #4, !dbg !91
  %10 = srem i32 %9, 100, !dbg !92
  store i32 %10, ptr %3, align 4, !dbg !90
  %11 = load i32, ptr %2, align 4, !dbg !93
  %12 = load i32, ptr %3, align 4, !dbg !94
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %12), !dbg !95
  call void @llvm.dbg.declare(metadata ptr %4, metadata !96, metadata !DIExpression()), !dbg !98
  store i32 0, ptr %4, align 4, !dbg !98
  br label %14, !dbg !99

14:                                               ; preds = %24, %0
  %15 = load i32, ptr %4, align 4, !dbg !100
  %16 = icmp slt i32 %15, 4, !dbg !102
  br i1 %16, label %17, label %27, !dbg !103

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !104
  %19 = sext i32 %18 to i64, !dbg !105
  %20 = getelementptr inbounds [4 x ptr], ptr @ops, i64 0, i64 %19, !dbg !105
  %21 = load ptr, ptr %20, align 8, !dbg !105
  %22 = load i32, ptr %2, align 4, !dbg !106
  %23 = load i32, ptr %3, align 4, !dbg !107
  call void %21(i32 noundef %22, i32 noundef %23), !dbg !105
  br label %24, !dbg !105

24:                                               ; preds = %17
  %25 = load i32, ptr %4, align 4, !dbg !108
  %26 = add nsw i32 %25, 1, !dbg !108
  store i32 %26, ptr %4, align 4, !dbg !108
  br label %14, !dbg !109, !llvm.loop !110

27:                                               ; preds = %14
  ret i32 0, !dbg !113
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

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ops", scope: !2, file: !3, line: 11, type: !21, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/function_pointer.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "5ce3d674a45e69bffd25fcac52aca1b8")
!4 = !{!0, !5, !11, !16}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(scope: null, file: !3, line: 20, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 136, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 17)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 4)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 152, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 19)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !14)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!34 = distinct !DISubprogram(name: "add", scope: !3, file: !3, line: 28, type: !23, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!35 = !{}
!36 = !DILocalVariable(name: "a", arg: 1, scope: !34, file: !3, line: 28, type: !25)
!37 = !DILocation(line: 28, column: 14, scope: !34)
!38 = !DILocalVariable(name: "b", arg: 2, scope: !34, file: !3, line: 28, type: !25)
!39 = !DILocation(line: 28, column: 21, scope: !34)
!40 = !DILocation(line: 29, column: 20, scope: !34)
!41 = !DILocation(line: 29, column: 24, scope: !34)
!42 = !DILocation(line: 29, column: 22, scope: !34)
!43 = !DILocation(line: 29, column: 5, scope: !34)
!44 = !DILocation(line: 30, column: 1, scope: !34)
!45 = distinct !DISubprogram(name: "subtract", scope: !3, file: !3, line: 32, type: !23, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!46 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !3, line: 32, type: !25)
!47 = !DILocation(line: 32, column: 19, scope: !45)
!48 = !DILocalVariable(name: "b", arg: 2, scope: !45, file: !3, line: 32, type: !25)
!49 = !DILocation(line: 32, column: 26, scope: !45)
!50 = !DILocation(line: 33, column: 20, scope: !45)
!51 = !DILocation(line: 33, column: 24, scope: !45)
!52 = !DILocation(line: 33, column: 22, scope: !45)
!53 = !DILocation(line: 33, column: 5, scope: !45)
!54 = !DILocation(line: 34, column: 1, scope: !45)
!55 = distinct !DISubprogram(name: "multiply", scope: !3, file: !3, line: 36, type: !23, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!56 = !DILocalVariable(name: "a", arg: 1, scope: !55, file: !3, line: 36, type: !25)
!57 = !DILocation(line: 36, column: 19, scope: !55)
!58 = !DILocalVariable(name: "b", arg: 2, scope: !55, file: !3, line: 36, type: !25)
!59 = !DILocation(line: 36, column: 26, scope: !55)
!60 = !DILocation(line: 37, column: 20, scope: !55)
!61 = !DILocation(line: 37, column: 24, scope: !55)
!62 = !DILocation(line: 37, column: 22, scope: !55)
!63 = !DILocation(line: 37, column: 5, scope: !55)
!64 = !DILocation(line: 38, column: 1, scope: !55)
!65 = distinct !DISubprogram(name: "divide", scope: !3, file: !3, line: 40, type: !23, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!66 = !DILocalVariable(name: "a", arg: 1, scope: !65, file: !3, line: 40, type: !25)
!67 = !DILocation(line: 40, column: 17, scope: !65)
!68 = !DILocalVariable(name: "b", arg: 2, scope: !65, file: !3, line: 40, type: !25)
!69 = !DILocation(line: 40, column: 24, scope: !65)
!70 = !DILocation(line: 41, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !3, line: 41, column: 9)
!72 = !DILocation(line: 41, column: 11, scope: !71)
!73 = !DILocation(line: 41, column: 9, scope: !65)
!74 = !DILocation(line: 42, column: 24, scope: !71)
!75 = !DILocation(line: 42, column: 28, scope: !71)
!76 = !DILocation(line: 42, column: 26, scope: !71)
!77 = !DILocation(line: 42, column: 9, scope: !71)
!78 = !DILocation(line: 44, column: 9, scope: !71)
!79 = !DILocation(line: 45, column: 1, scope: !65)
!80 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 13, type: !81, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!81 = !DISubroutineType(types: !82)
!82 = !{!25}
!83 = !DILocation(line: 15, column: 11, scope: !80)
!84 = !DILocation(line: 15, column: 5, scope: !80)
!85 = !DILocalVariable(name: "x", scope: !80, file: !3, line: 17, type: !25)
!86 = !DILocation(line: 17, column: 9, scope: !80)
!87 = !DILocation(line: 17, column: 13, scope: !80)
!88 = !DILocation(line: 17, column: 20, scope: !80)
!89 = !DILocalVariable(name: "y", scope: !80, file: !3, line: 18, type: !25)
!90 = !DILocation(line: 18, column: 9, scope: !80)
!91 = !DILocation(line: 18, column: 13, scope: !80)
!92 = !DILocation(line: 18, column: 20, scope: !80)
!93 = !DILocation(line: 20, column: 34, scope: !80)
!94 = !DILocation(line: 20, column: 37, scope: !80)
!95 = !DILocation(line: 20, column: 5, scope: !80)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 21, type: !25)
!97 = distinct !DILexicalBlock(scope: !80, file: !3, line: 21, column: 5)
!98 = !DILocation(line: 21, column: 14, scope: !97)
!99 = !DILocation(line: 21, column: 10, scope: !97)
!100 = !DILocation(line: 21, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 21, column: 5)
!102 = !DILocation(line: 21, column: 23, scope: !101)
!103 = !DILocation(line: 21, column: 5, scope: !97)
!104 = !DILocation(line: 22, column: 11, scope: !101)
!105 = !DILocation(line: 22, column: 7, scope: !101)
!106 = !DILocation(line: 22, column: 14, scope: !101)
!107 = !DILocation(line: 22, column: 17, scope: !101)
!108 = !DILocation(line: 21, column: 29, scope: !101)
!109 = !DILocation(line: 21, column: 5, scope: !101)
!110 = distinct !{!110, !103, !111, !112}
!111 = !DILocation(line: 22, column: 18, scope: !97)
!112 = !{!"llvm.loop.mustprogress"}
!113 = !DILocation(line: 24, column: 5, scope: !80)
