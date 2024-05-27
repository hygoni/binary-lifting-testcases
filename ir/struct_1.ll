; ModuleID = 'src/struct_1.c'
source_filename = "src/struct_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeNode = type { [32 x i8], ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"World!\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"Hello, \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"This is a tree!\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !46, metadata !DIExpression()), !dbg !47
  %5 = call noalias ptr @malloc(i64 noundef 48) #5, !dbg !48
  store ptr %5, ptr %2, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata ptr %3, metadata !49, metadata !DIExpression()), !dbg !50
  %6 = call noalias ptr @malloc(i64 noundef 48) #5, !dbg !51
  store ptr %6, ptr %3, align 8, !dbg !50
  call void @llvm.dbg.declare(metadata ptr %4, metadata !52, metadata !DIExpression()), !dbg !53
  %7 = call noalias ptr @malloc(i64 noundef 48) #5, !dbg !54
  store ptr %7, ptr %4, align 8, !dbg !53
  %8 = load ptr, ptr %2, align 8, !dbg !55
  %9 = getelementptr inbounds %struct.TreeNode, ptr %8, i32 0, i32 0, !dbg !56
  %10 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0, !dbg !55
  %11 = call ptr @strcpy(ptr noundef %10, ptr noundef @.str) #6, !dbg !57
  %12 = load ptr, ptr %3, align 8, !dbg !58
  %13 = getelementptr inbounds %struct.TreeNode, ptr %12, i32 0, i32 0, !dbg !59
  %14 = getelementptr inbounds [32 x i8], ptr %13, i64 0, i64 0, !dbg !58
  %15 = call ptr @strcpy(ptr noundef %14, ptr noundef @.str.1) #6, !dbg !60
  %16 = load ptr, ptr %4, align 8, !dbg !61
  %17 = getelementptr inbounds %struct.TreeNode, ptr %16, i32 0, i32 0, !dbg !62
  %18 = getelementptr inbounds [32 x i8], ptr %17, i64 0, i64 0, !dbg !61
  %19 = call ptr @strcpy(ptr noundef %18, ptr noundef @.str.2) #6, !dbg !63
  %20 = load ptr, ptr %3, align 8, !dbg !64
  %21 = load ptr, ptr %2, align 8, !dbg !65
  %22 = getelementptr inbounds %struct.TreeNode, ptr %21, i32 0, i32 1, !dbg !66
  store ptr %20, ptr %22, align 8, !dbg !67
  %23 = load ptr, ptr %4, align 8, !dbg !68
  %24 = load ptr, ptr %2, align 8, !dbg !69
  %25 = getelementptr inbounds %struct.TreeNode, ptr %24, i32 0, i32 2, !dbg !70
  store ptr %23, ptr %25, align 8, !dbg !71
  %26 = load ptr, ptr %2, align 8, !dbg !72
  %27 = getelementptr inbounds %struct.TreeNode, ptr %26, i32 0, i32 1, !dbg !73
  %28 = load ptr, ptr %27, align 8, !dbg !73
  %29 = getelementptr inbounds %struct.TreeNode, ptr %28, i32 0, i32 0, !dbg !74
  %30 = getelementptr inbounds [32 x i8], ptr %29, i64 0, i64 0, !dbg !72
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %30), !dbg !75
  %32 = load ptr, ptr %2, align 8, !dbg !76
  %33 = getelementptr inbounds %struct.TreeNode, ptr %32, i32 0, i32 0, !dbg !77
  %34 = getelementptr inbounds [32 x i8], ptr %33, i64 0, i64 0, !dbg !76
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %34), !dbg !78
  %36 = load ptr, ptr %2, align 8, !dbg !79
  %37 = getelementptr inbounds %struct.TreeNode, ptr %36, i32 0, i32 2, !dbg !80
  %38 = load ptr, ptr %37, align 8, !dbg !80
  %39 = getelementptr inbounds %struct.TreeNode, ptr %38, i32 0, i32 0, !dbg !81
  %40 = getelementptr inbounds [32 x i8], ptr %39, i64 0, i64 0, !dbg !79
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %40), !dbg !82
  %42 = load ptr, ptr %2, align 8, !dbg !83
  call void @free(ptr noundef %42) #6, !dbg !84
  %43 = load ptr, ptr %3, align 8, !dbg !85
  call void @free(ptr noundef %43) #6, !dbg !86
  %44 = load ptr, ptr %4, align 8, !dbg !87
  call void @free(ptr noundef %44) #6, !dbg !88
  ret i32 0, !dbg !89
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/struct_1.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "22be15a8a8ccb5016c52b5d64bf4b712")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 17)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !20, globals: !32, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeNode", file: !2, line: 12, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TreeNode", file: !2, line: 7, size: 384, elements: !24)
!24 = !{!25, !29, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !2, line: 9, baseType: !26, size: 256)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !23, file: !2, line: 10, baseType: !30, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !23, file: !2, line: 11, baseType: !30, size: 64, offset: 320)
!32 = !{!0, !7, !9, !14}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!41 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 14, type: !42, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !45)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !{}
!46 = !DILocalVariable(name: "node1", scope: !41, file: !2, line: 16, type: !21)
!47 = !DILocation(line: 16, column: 15, scope: !41)
!48 = !DILocation(line: 16, column: 35, scope: !41)
!49 = !DILocalVariable(name: "node2", scope: !41, file: !2, line: 17, type: !21)
!50 = !DILocation(line: 17, column: 15, scope: !41)
!51 = !DILocation(line: 17, column: 35, scope: !41)
!52 = !DILocalVariable(name: "node3", scope: !41, file: !2, line: 18, type: !21)
!53 = !DILocation(line: 18, column: 15, scope: !41)
!54 = !DILocation(line: 18, column: 35, scope: !41)
!55 = !DILocation(line: 20, column: 12, scope: !41)
!56 = !DILocation(line: 20, column: 19, scope: !41)
!57 = !DILocation(line: 20, column: 5, scope: !41)
!58 = !DILocation(line: 21, column: 12, scope: !41)
!59 = !DILocation(line: 21, column: 19, scope: !41)
!60 = !DILocation(line: 21, column: 5, scope: !41)
!61 = !DILocation(line: 22, column: 12, scope: !41)
!62 = !DILocation(line: 22, column: 19, scope: !41)
!63 = !DILocation(line: 22, column: 5, scope: !41)
!64 = !DILocation(line: 24, column: 19, scope: !41)
!65 = !DILocation(line: 24, column: 5, scope: !41)
!66 = !DILocation(line: 24, column: 12, scope: !41)
!67 = !DILocation(line: 24, column: 17, scope: !41)
!68 = !DILocation(line: 25, column: 20, scope: !41)
!69 = !DILocation(line: 25, column: 5, scope: !41)
!70 = !DILocation(line: 25, column: 12, scope: !41)
!71 = !DILocation(line: 25, column: 18, scope: !41)
!72 = !DILocation(line: 27, column: 18, scope: !41)
!73 = !DILocation(line: 27, column: 25, scope: !41)
!74 = !DILocation(line: 27, column: 31, scope: !41)
!75 = !DILocation(line: 27, column: 5, scope: !41)
!76 = !DILocation(line: 28, column: 18, scope: !41)
!77 = !DILocation(line: 28, column: 25, scope: !41)
!78 = !DILocation(line: 28, column: 5, scope: !41)
!79 = !DILocation(line: 29, column: 18, scope: !41)
!80 = !DILocation(line: 29, column: 25, scope: !41)
!81 = !DILocation(line: 29, column: 32, scope: !41)
!82 = !DILocation(line: 29, column: 5, scope: !41)
!83 = !DILocation(line: 31, column: 10, scope: !41)
!84 = !DILocation(line: 31, column: 5, scope: !41)
!85 = !DILocation(line: 32, column: 10, scope: !41)
!86 = !DILocation(line: 32, column: 5, scope: !41)
!87 = !DILocation(line: 33, column: 10, scope: !41)
!88 = !DILocation(line: 33, column: 5, scope: !41)
!89 = !DILocation(line: 35, column: 5, scope: !41)
