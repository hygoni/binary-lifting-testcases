; ModuleID = 'src/linekd_list.c'
source_filename = "src/linekd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, ptr }

@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failed.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"%d -> \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [14 x i8] c"Linked List: \00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [22 x i8] c"Linked list deleted.\0A\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @createNode(i32 noundef %0) #0 !dbg !45 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata ptr %3, metadata !51, metadata !DIExpression()), !dbg !52
  %4 = call noalias ptr @malloc(i64 noundef 16) #6, !dbg !53
  store ptr %4, ptr %3, align 8, !dbg !52
  %5 = load ptr, ptr %3, align 8, !dbg !54
  %6 = icmp eq ptr %5, null, !dbg !56
  br i1 %6, label %7, label %9, !dbg !57

7:                                                ; preds = %1
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !58
  call void @exit(i32 noundef 1) #7, !dbg !60
  unreachable, !dbg !60

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4, !dbg !61
  %11 = load ptr, ptr %3, align 8, !dbg !62
  %12 = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 0, !dbg !63
  store i32 %10, ptr %12, align 8, !dbg !64
  %13 = load ptr, ptr %3, align 8, !dbg !65
  %14 = getelementptr inbounds %struct.Node, ptr %13, i32 0, i32 1, !dbg !66
  store ptr null, ptr %14, align 8, !dbg !67
  %15 = load ptr, ptr %3, align 8, !dbg !68
  ret ptr %15, !dbg !69
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertAtBeginning(ptr noundef %0, i32 noundef %1) #0 !dbg !70 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata ptr %5, metadata !78, metadata !DIExpression()), !dbg !79
  %6 = load i32, ptr %4, align 4, !dbg !80
  %7 = call ptr @createNode(i32 noundef %6), !dbg !81
  store ptr %7, ptr %5, align 8, !dbg !79
  %8 = load ptr, ptr %3, align 8, !dbg !82
  %9 = load ptr, ptr %8, align 8, !dbg !83
  %10 = load ptr, ptr %5, align 8, !dbg !84
  %11 = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 1, !dbg !85
  store ptr %9, ptr %11, align 8, !dbg !86
  %12 = load ptr, ptr %5, align 8, !dbg !87
  %13 = load ptr, ptr %3, align 8, !dbg !88
  store ptr %12, ptr %13, align 8, !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @displayList(ptr noundef %0) #0 !dbg !91 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata ptr %3, metadata !96, metadata !DIExpression()), !dbg !97
  %4 = load ptr, ptr %2, align 8, !dbg !98
  store ptr %4, ptr %3, align 8, !dbg !97
  br label %5, !dbg !99

5:                                                ; preds = %8, %1
  %6 = load ptr, ptr %3, align 8, !dbg !100
  %7 = icmp ne ptr %6, null, !dbg !101
  br i1 %7, label %8, label %16, !dbg !99

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !102
  %10 = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 0, !dbg !104
  %11 = load i32, ptr %10, align 8, !dbg !104
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11), !dbg !105
  %13 = load ptr, ptr %3, align 8, !dbg !106
  %14 = getelementptr inbounds %struct.Node, ptr %13, i32 0, i32 1, !dbg !107
  %15 = load ptr, ptr %14, align 8, !dbg !107
  store ptr %15, ptr %3, align 8, !dbg !108
  br label %5, !dbg !99, !llvm.loop !109

16:                                               ; preds = %5
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !112
  ret void, !dbg !113
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteList(ptr noundef %0) #0 !dbg !114 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata ptr %3, metadata !119, metadata !DIExpression()), !dbg !120
  %5 = load ptr, ptr %2, align 8, !dbg !121
  %6 = load ptr, ptr %5, align 8, !dbg !122
  store ptr %6, ptr %3, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %4, metadata !123, metadata !DIExpression()), !dbg !124
  br label %7, !dbg !125

7:                                                ; preds = %10, %1
  %8 = load ptr, ptr %3, align 8, !dbg !126
  %9 = icmp ne ptr %8, null, !dbg !127
  br i1 %9, label %10, label %16, !dbg !125

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !128
  %12 = getelementptr inbounds %struct.Node, ptr %11, i32 0, i32 1, !dbg !130
  %13 = load ptr, ptr %12, align 8, !dbg !130
  store ptr %13, ptr %4, align 8, !dbg !131
  %14 = load ptr, ptr %3, align 8, !dbg !132
  call void @free(ptr noundef %14) #8, !dbg !133
  %15 = load ptr, ptr %4, align 8, !dbg !134
  store ptr %15, ptr %3, align 8, !dbg !135
  br label %7, !dbg !125, !llvm.loop !136

16:                                               ; preds = %7
  %17 = load ptr, ptr %2, align 8, !dbg !138
  store ptr null, ptr %17, align 8, !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !141 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !144, metadata !DIExpression()), !dbg !145
  store ptr null, ptr %2, align 8, !dbg !145
  call void @insertAtBeginning(ptr noundef %2, i32 noundef 3), !dbg !146
  call void @insertAtBeginning(ptr noundef %2, i32 noundef 5), !dbg !147
  call void @insertAtBeginning(ptr noundef %2, i32 noundef 7), !dbg !148
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !149
  %4 = load ptr, ptr %2, align 8, !dbg !150
  call void @displayList(ptr noundef %4), !dbg !151
  call void @deleteList(ptr noundef %2), !dbg !152
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !153
  ret i32 0, !dbg !154
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/linekd_list.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "0f6dd81950e8fa9a6ac78cf521934087")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 22)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !28, globals: !36, splitDebugInlining: false, nameTableKind: None)
!28 = !{!29, !35}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !2, line: 5, size: 128, elements: !31)
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !2, line: 6, baseType: !33, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !2, line: 7, baseType: !29, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !{!0, !7, !12, !17, !22}
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!45 = distinct !DISubprogram(name: "createNode", scope: !2, file: !2, line: 11, type: !46, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!29, !33}
!48 = !{}
!49 = !DILocalVariable(name: "data", arg: 1, scope: !45, file: !2, line: 11, type: !33)
!50 = !DILocation(line: 11, column: 29, scope: !45)
!51 = !DILocalVariable(name: "newNode", scope: !45, file: !2, line: 12, type: !29)
!52 = !DILocation(line: 12, column: 18, scope: !45)
!53 = !DILocation(line: 12, column: 42, scope: !45)
!54 = !DILocation(line: 13, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !45, file: !2, line: 13, column: 9)
!56 = !DILocation(line: 13, column: 17, scope: !55)
!57 = !DILocation(line: 13, column: 9, scope: !45)
!58 = !DILocation(line: 14, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !2, line: 13, column: 26)
!60 = !DILocation(line: 15, column: 9, scope: !59)
!61 = !DILocation(line: 17, column: 21, scope: !45)
!62 = !DILocation(line: 17, column: 5, scope: !45)
!63 = !DILocation(line: 17, column: 14, scope: !45)
!64 = !DILocation(line: 17, column: 19, scope: !45)
!65 = !DILocation(line: 18, column: 5, scope: !45)
!66 = !DILocation(line: 18, column: 14, scope: !45)
!67 = !DILocation(line: 18, column: 19, scope: !45)
!68 = !DILocation(line: 19, column: 12, scope: !45)
!69 = !DILocation(line: 19, column: 5, scope: !45)
!70 = distinct !DISubprogram(name: "insertAtBeginning", scope: !2, file: !2, line: 23, type: !71, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !48)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !33}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!74 = !DILocalVariable(name: "head", arg: 1, scope: !70, file: !2, line: 23, type: !73)
!75 = !DILocation(line: 23, column: 38, scope: !70)
!76 = !DILocalVariable(name: "data", arg: 2, scope: !70, file: !2, line: 23, type: !33)
!77 = !DILocation(line: 23, column: 48, scope: !70)
!78 = !DILocalVariable(name: "newNode", scope: !70, file: !2, line: 24, type: !29)
!79 = !DILocation(line: 24, column: 18, scope: !70)
!80 = !DILocation(line: 24, column: 39, scope: !70)
!81 = !DILocation(line: 24, column: 28, scope: !70)
!82 = !DILocation(line: 25, column: 22, scope: !70)
!83 = !DILocation(line: 25, column: 21, scope: !70)
!84 = !DILocation(line: 25, column: 5, scope: !70)
!85 = !DILocation(line: 25, column: 14, scope: !70)
!86 = !DILocation(line: 25, column: 19, scope: !70)
!87 = !DILocation(line: 26, column: 13, scope: !70)
!88 = !DILocation(line: 26, column: 6, scope: !70)
!89 = !DILocation(line: 26, column: 11, scope: !70)
!90 = !DILocation(line: 27, column: 1, scope: !70)
!91 = distinct !DISubprogram(name: "displayList", scope: !2, file: !2, line: 30, type: !92, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !48)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !29}
!94 = !DILocalVariable(name: "head", arg: 1, scope: !91, file: !2, line: 30, type: !29)
!95 = !DILocation(line: 30, column: 31, scope: !91)
!96 = !DILocalVariable(name: "temp", scope: !91, file: !2, line: 31, type: !29)
!97 = !DILocation(line: 31, column: 18, scope: !91)
!98 = !DILocation(line: 31, column: 25, scope: !91)
!99 = !DILocation(line: 32, column: 5, scope: !91)
!100 = !DILocation(line: 32, column: 12, scope: !91)
!101 = !DILocation(line: 32, column: 17, scope: !91)
!102 = !DILocation(line: 33, column: 26, scope: !103)
!103 = distinct !DILexicalBlock(scope: !91, file: !2, line: 32, column: 26)
!104 = !DILocation(line: 33, column: 32, scope: !103)
!105 = !DILocation(line: 33, column: 9, scope: !103)
!106 = !DILocation(line: 34, column: 16, scope: !103)
!107 = !DILocation(line: 34, column: 22, scope: !103)
!108 = !DILocation(line: 34, column: 14, scope: !103)
!109 = distinct !{!109, !99, !110, !111}
!110 = !DILocation(line: 35, column: 5, scope: !91)
!111 = !{!"llvm.loop.mustprogress"}
!112 = !DILocation(line: 36, column: 5, scope: !91)
!113 = !DILocation(line: 37, column: 1, scope: !91)
!114 = distinct !DISubprogram(name: "deleteList", scope: !2, file: !2, line: 40, type: !115, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !48)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !73}
!117 = !DILocalVariable(name: "head", arg: 1, scope: !114, file: !2, line: 40, type: !73)
!118 = !DILocation(line: 40, column: 31, scope: !114)
!119 = !DILocalVariable(name: "current", scope: !114, file: !2, line: 41, type: !29)
!120 = !DILocation(line: 41, column: 18, scope: !114)
!121 = !DILocation(line: 41, column: 29, scope: !114)
!122 = !DILocation(line: 41, column: 28, scope: !114)
!123 = !DILocalVariable(name: "next", scope: !114, file: !2, line: 42, type: !29)
!124 = !DILocation(line: 42, column: 18, scope: !114)
!125 = !DILocation(line: 43, column: 5, scope: !114)
!126 = !DILocation(line: 43, column: 12, scope: !114)
!127 = !DILocation(line: 43, column: 20, scope: !114)
!128 = !DILocation(line: 44, column: 16, scope: !129)
!129 = distinct !DILexicalBlock(scope: !114, file: !2, line: 43, column: 29)
!130 = !DILocation(line: 44, column: 25, scope: !129)
!131 = !DILocation(line: 44, column: 14, scope: !129)
!132 = !DILocation(line: 45, column: 14, scope: !129)
!133 = !DILocation(line: 45, column: 9, scope: !129)
!134 = !DILocation(line: 46, column: 19, scope: !129)
!135 = !DILocation(line: 46, column: 17, scope: !129)
!136 = distinct !{!136, !125, !137, !111}
!137 = !DILocation(line: 47, column: 5, scope: !114)
!138 = !DILocation(line: 48, column: 6, scope: !114)
!139 = !DILocation(line: 48, column: 11, scope: !114)
!140 = !DILocation(line: 49, column: 1, scope: !114)
!141 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 51, type: !142, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !48)
!142 = !DISubroutineType(types: !143)
!143 = !{!33}
!144 = !DILocalVariable(name: "head", scope: !141, file: !2, line: 53, type: !29)
!145 = !DILocation(line: 53, column: 18, scope: !141)
!146 = !DILocation(line: 56, column: 5, scope: !141)
!147 = !DILocation(line: 57, column: 5, scope: !141)
!148 = !DILocation(line: 58, column: 5, scope: !141)
!149 = !DILocation(line: 61, column: 5, scope: !141)
!150 = !DILocation(line: 62, column: 17, scope: !141)
!151 = !DILocation(line: 62, column: 5, scope: !141)
!152 = !DILocation(line: 65, column: 5, scope: !141)
!153 = !DILocation(line: 66, column: 5, scope: !141)
!154 = !DILocation(line: 68, column: 5, scope: !141)
