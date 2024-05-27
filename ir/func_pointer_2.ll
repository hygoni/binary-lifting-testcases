; ModuleID = 'src/func_pointer_2.c'
source_filename = "src/func_pointer_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 5, i32 2, i32 9, i32 1, i32 5, i32 6], align 16
@.str = private unnamed_addr constant [12 x i8] c"Ascending: \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [13 x i8] c"Descending: \00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareAscending(ptr noundef %0, ptr noundef %1) #0 !dbg !35 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !41, metadata !DIExpression()), !dbg !42
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !43, metadata !DIExpression()), !dbg !44
  %5 = load ptr, ptr %3, align 8, !dbg !45
  %6 = load i32, ptr %5, align 4, !dbg !46
  %7 = load ptr, ptr %4, align 8, !dbg !47
  %8 = load i32, ptr %7, align 4, !dbg !48
  %9 = sub nsw i32 %6, %8, !dbg !49
  ret i32 %9, !dbg !50
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compareDescending(ptr noundef %0, ptr noundef %1) #0 !dbg !51 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !52, metadata !DIExpression()), !dbg !53
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !54, metadata !DIExpression()), !dbg !55
  %5 = load ptr, ptr %4, align 8, !dbg !56
  %6 = load i32, ptr %5, align 4, !dbg !57
  %7 = load ptr, ptr %3, align 8, !dbg !58
  %8 = load i32, ptr %7, align 4, !dbg !59
  %9 = sub nsw i32 %6, %8, !dbg !60
  ret i32 %9, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !62 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !68, metadata !DIExpression()), !dbg !69
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !70, metadata !DIExpression()), !dbg !71
  %7 = load ptr, ptr %4, align 8, !dbg !72
  %8 = load i32, ptr %5, align 4, !dbg !73
  %9 = sext i32 %8 to i64, !dbg !73
  %10 = load ptr, ptr %6, align 8, !dbg !74
  call void @qsort(ptr noundef %7, i64 noundef %9, i64 noundef 4, ptr noundef %10), !dbg !75
  ret void, !dbg !76
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !77 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !80, metadata !DIExpression()), !dbg !84
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 24, i1 false), !dbg !84
  %5 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0, !dbg !85
  call void @sort(ptr noundef %5, i32 noundef 6, ptr noundef @compareAscending), !dbg !86
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !87
  call void @llvm.dbg.declare(metadata ptr %3, metadata !88, metadata !DIExpression()), !dbg !90
  store i32 0, ptr %3, align 4, !dbg !90
  br label %7, !dbg !91

7:                                                ; preds = %16, %0
  %8 = load i32, ptr %3, align 4, !dbg !92
  %9 = icmp slt i32 %8, 6, !dbg !94
  br i1 %9, label %10, label %19, !dbg !95

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4, !dbg !96
  %12 = sext i32 %11 to i64, !dbg !98
  %13 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 %12, !dbg !98
  %14 = load i32, ptr %13, align 4, !dbg !98
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14), !dbg !99
  br label %16, !dbg !100

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4, !dbg !101
  %18 = add nsw i32 %17, 1, !dbg !101
  store i32 %18, ptr %3, align 4, !dbg !101
  br label %7, !dbg !102, !llvm.loop !103

19:                                               ; preds = %7
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !106
  %21 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0, !dbg !107
  call void @sort(ptr noundef %21, i32 noundef 6, ptr noundef @compareDescending), !dbg !108
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !109
  call void @llvm.dbg.declare(metadata ptr %4, metadata !110, metadata !DIExpression()), !dbg !112
  store i32 0, ptr %4, align 4, !dbg !112
  br label %23, !dbg !113

23:                                               ; preds = %32, %19
  %24 = load i32, ptr %4, align 4, !dbg !114
  %25 = icmp slt i32 %24, 6, !dbg !116
  br i1 %25, label %26, label %35, !dbg !117

26:                                               ; preds = %23
  %27 = load i32, ptr %4, align 4, !dbg !118
  %28 = sext i32 %27 to i64, !dbg !120
  %29 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 %28, !dbg !120
  %30 = load i32, ptr %29, align 4, !dbg !120
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %30), !dbg !121
  br label %32, !dbg !122

32:                                               ; preds = %26
  %33 = load i32, ptr %4, align 4, !dbg !123
  %34 = add nsw i32 %33, 1, !dbg !123
  store i32 %34, ptr %4, align 4, !dbg !123
  br label %23, !dbg !124, !llvm.loop !125

35:                                               ; preds = %23
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !127
  ret i32 0, !dbg !128
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/func_pointer_2.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "7ef15ffaad0c816da1004f896589697a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 13)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !23, globals: !26, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!0, !7, !12, !17}
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!35 = distinct !DISubprogram(name: "compareAscending", scope: !2, file: !2, line: 6, type: !36, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !40)
!36 = !DISubroutineType(types: !37)
!37 = !{!25, !38, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !{}
!41 = !DILocalVariable(name: "a", arg: 1, scope: !35, file: !2, line: 6, type: !38)
!42 = !DILocation(line: 6, column: 34, scope: !35)
!43 = !DILocalVariable(name: "b", arg: 2, scope: !35, file: !2, line: 6, type: !38)
!44 = !DILocation(line: 6, column: 49, scope: !35)
!45 = !DILocation(line: 7, column: 20, scope: !35)
!46 = !DILocation(line: 7, column: 13, scope: !35)
!47 = !DILocation(line: 7, column: 31, scope: !35)
!48 = !DILocation(line: 7, column: 24, scope: !35)
!49 = !DILocation(line: 7, column: 22, scope: !35)
!50 = !DILocation(line: 7, column: 5, scope: !35)
!51 = distinct !DISubprogram(name: "compareDescending", scope: !2, file: !2, line: 10, type: !36, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !40)
!52 = !DILocalVariable(name: "a", arg: 1, scope: !51, file: !2, line: 10, type: !38)
!53 = !DILocation(line: 10, column: 35, scope: !51)
!54 = !DILocalVariable(name: "b", arg: 2, scope: !51, file: !2, line: 10, type: !38)
!55 = !DILocation(line: 10, column: 50, scope: !51)
!56 = !DILocation(line: 11, column: 20, scope: !51)
!57 = !DILocation(line: 11, column: 13, scope: !51)
!58 = !DILocation(line: 11, column: 31, scope: !51)
!59 = !DILocation(line: 11, column: 24, scope: !51)
!60 = !DILocation(line: 11, column: 22, scope: !51)
!61 = !DILocation(line: 11, column: 5, scope: !51)
!62 = distinct !DISubprogram(name: "sort", scope: !2, file: !2, line: 14, type: !63, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !40)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !24, !25, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!66 = !DILocalVariable(name: "array", arg: 1, scope: !62, file: !2, line: 14, type: !24)
!67 = !DILocation(line: 14, column: 16, scope: !62)
!68 = !DILocalVariable(name: "n", arg: 2, scope: !62, file: !2, line: 14, type: !25)
!69 = !DILocation(line: 14, column: 27, scope: !62)
!70 = !DILocalVariable(name: "compare", arg: 3, scope: !62, file: !2, line: 14, type: !65)
!71 = !DILocation(line: 14, column: 36, scope: !62)
!72 = !DILocation(line: 15, column: 11, scope: !62)
!73 = !DILocation(line: 15, column: 18, scope: !62)
!74 = !DILocation(line: 15, column: 34, scope: !62)
!75 = !DILocation(line: 15, column: 5, scope: !62)
!76 = !DILocation(line: 16, column: 1, scope: !62)
!77 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 18, type: !78, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !40)
!78 = !DISubroutineType(types: !79)
!79 = !{!25}
!80 = !DILocalVariable(name: "arr", scope: !77, file: !2, line: 19, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 6)
!84 = !DILocation(line: 19, column: 9, scope: !77)
!85 = !DILocation(line: 20, column: 10, scope: !77)
!86 = !DILocation(line: 20, column: 5, scope: !77)
!87 = !DILocation(line: 21, column: 5, scope: !77)
!88 = !DILocalVariable(name: "i", scope: !89, file: !2, line: 22, type: !25)
!89 = distinct !DILexicalBlock(scope: !77, file: !2, line: 22, column: 5)
!90 = !DILocation(line: 22, column: 14, scope: !89)
!91 = !DILocation(line: 22, column: 10, scope: !89)
!92 = !DILocation(line: 22, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !2, line: 22, column: 5)
!94 = !DILocation(line: 22, column: 23, scope: !93)
!95 = !DILocation(line: 22, column: 5, scope: !89)
!96 = !DILocation(line: 23, column: 27, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !2, line: 22, column: 33)
!98 = !DILocation(line: 23, column: 23, scope: !97)
!99 = !DILocation(line: 23, column: 9, scope: !97)
!100 = !DILocation(line: 24, column: 5, scope: !97)
!101 = !DILocation(line: 22, column: 29, scope: !93)
!102 = !DILocation(line: 22, column: 5, scope: !93)
!103 = distinct !{!103, !95, !104, !105}
!104 = !DILocation(line: 24, column: 5, scope: !89)
!105 = !{!"llvm.loop.mustprogress"}
!106 = !DILocation(line: 25, column: 5, scope: !77)
!107 = !DILocation(line: 27, column: 10, scope: !77)
!108 = !DILocation(line: 27, column: 5, scope: !77)
!109 = !DILocation(line: 28, column: 5, scope: !77)
!110 = !DILocalVariable(name: "i", scope: !111, file: !2, line: 29, type: !25)
!111 = distinct !DILexicalBlock(scope: !77, file: !2, line: 29, column: 5)
!112 = !DILocation(line: 29, column: 14, scope: !111)
!113 = !DILocation(line: 29, column: 10, scope: !111)
!114 = !DILocation(line: 29, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !2, line: 29, column: 5)
!116 = !DILocation(line: 29, column: 23, scope: !115)
!117 = !DILocation(line: 29, column: 5, scope: !111)
!118 = !DILocation(line: 30, column: 27, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !2, line: 29, column: 33)
!120 = !DILocation(line: 30, column: 23, scope: !119)
!121 = !DILocation(line: 30, column: 9, scope: !119)
!122 = !DILocation(line: 31, column: 5, scope: !119)
!123 = !DILocation(line: 29, column: 29, scope: !115)
!124 = !DILocation(line: 29, column: 5, scope: !115)
!125 = distinct !{!125, !117, !126, !105}
!126 = !DILocation(line: 31, column: 5, scope: !111)
!127 = !DILocation(line: 32, column: 5, scope: !77)
!128 = !DILocation(line: 33, column: 5, scope: !77)
