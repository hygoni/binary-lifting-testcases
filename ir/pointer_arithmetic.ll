; ModuleID = 'src/pointer_arithmetic.c'
source_filename = "src/pointer_arithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr1 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@__const.main.arr2 = private unnamed_addr constant [5 x i32] [i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [50 x i8] c"Elements of the arrays using pointer arithmetic:\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [44 x i8] c"Element %d: %d (from arr1), %d (from arr2)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [35 x i8] c"Sum of corresponding elements: %d\0A\00", align 1, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca [5 x i32], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !32, metadata !DIExpression()), !dbg !36
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr1, i64 20, i1 false), !dbg !36
  call void @llvm.dbg.declare(metadata ptr %3, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.main.arr2, i64 20, i1 false), !dbg !38
  call void @llvm.dbg.declare(metadata ptr %4, metadata !39, metadata !DIExpression()), !dbg !41
  %8 = getelementptr inbounds [5 x i32], ptr %2, i64 0, i64 0, !dbg !42
  store ptr %8, ptr %4, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %5, metadata !43, metadata !DIExpression()), !dbg !44
  %9 = getelementptr inbounds [5 x i32], ptr %3, i64 0, i64 0, !dbg !45
  store ptr %9, ptr %5, align 8, !dbg !44
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !46
  call void @llvm.dbg.declare(metadata ptr %6, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 0, ptr %6, align 4, !dbg !49
  br label %11, !dbg !50

11:                                               ; preds = %41, %0
  %12 = load i32, ptr %6, align 4, !dbg !51
  %13 = icmp slt i32 %12, 5, !dbg !53
  br i1 %13, label %14, label %44, !dbg !54

14:                                               ; preds = %11
  %15 = load i32, ptr %6, align 4, !dbg !55
  %16 = add nsw i32 %15, 1, !dbg !57
  %17 = load ptr, ptr %4, align 8, !dbg !58
  %18 = load i32, ptr %6, align 4, !dbg !59
  %19 = sext i32 %18 to i64, !dbg !60
  %20 = getelementptr inbounds i32, ptr %17, i64 %19, !dbg !60
  %21 = load i32, ptr %20, align 4, !dbg !61
  %22 = load ptr, ptr %5, align 8, !dbg !62
  %23 = load i32, ptr %6, align 4, !dbg !63
  %24 = sext i32 %23 to i64, !dbg !64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24, !dbg !64
  %26 = load i32, ptr %25, align 4, !dbg !65
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16, i32 noundef %21, i32 noundef %26), !dbg !66
  call void @llvm.dbg.declare(metadata ptr %7, metadata !67, metadata !DIExpression()), !dbg !68
  %28 = load ptr, ptr %4, align 8, !dbg !69
  %29 = load i32, ptr %6, align 4, !dbg !70
  %30 = sext i32 %29 to i64, !dbg !71
  %31 = getelementptr inbounds i32, ptr %28, i64 %30, !dbg !71
  %32 = load i32, ptr %31, align 4, !dbg !72
  %33 = load ptr, ptr %5, align 8, !dbg !73
  %34 = load i32, ptr %6, align 4, !dbg !74
  %35 = sext i32 %34 to i64, !dbg !75
  %36 = getelementptr inbounds i32, ptr %33, i64 %35, !dbg !75
  %37 = load i32, ptr %36, align 4, !dbg !76
  %38 = add nsw i32 %32, %37, !dbg !77
  store i32 %38, ptr %7, align 4, !dbg !68
  %39 = load i32, ptr %7, align 4, !dbg !78
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %39), !dbg !79
  br label %41, !dbg !80

41:                                               ; preds = %14
  %42 = load i32, ptr %6, align 4, !dbg !81
  %43 = add nsw i32 %42, 1, !dbg !81
  store i32 %43, ptr %6, align 4, !dbg !81
  br label %11, !dbg !82, !llvm.loop !83

44:                                               ; preds = %11
  ret i32 0, !dbg !86
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/pointer_arithmetic.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "c171fb7234860c5c720baaee4a8581db")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 50)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 44)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 35)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !18, splitDebugInlining: false, nameTableKind: None)
!18 = !{!0, !7, !12}
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!27 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 3, type: !28, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{}
!32 = !DILocalVariable(name: "arr1", scope: !27, file: !2, line: 5, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 5)
!36 = !DILocation(line: 5, column: 9, scope: !27)
!37 = !DILocalVariable(name: "arr2", scope: !27, file: !2, line: 6, type: !33)
!38 = !DILocation(line: 6, column: 9, scope: !27)
!39 = !DILocalVariable(name: "ptr1", scope: !27, file: !2, line: 9, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!41 = !DILocation(line: 9, column: 10, scope: !27)
!42 = !DILocation(line: 9, column: 17, scope: !27)
!43 = !DILocalVariable(name: "ptr2", scope: !27, file: !2, line: 10, type: !40)
!44 = !DILocation(line: 10, column: 10, scope: !27)
!45 = !DILocation(line: 10, column: 17, scope: !27)
!46 = !DILocation(line: 12, column: 5, scope: !27)
!47 = !DILocalVariable(name: "i", scope: !48, file: !2, line: 13, type: !30)
!48 = distinct !DILexicalBlock(scope: !27, file: !2, line: 13, column: 5)
!49 = !DILocation(line: 13, column: 14, scope: !48)
!50 = !DILocation(line: 13, column: 10, scope: !48)
!51 = !DILocation(line: 13, column: 21, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !2, line: 13, column: 5)
!53 = !DILocation(line: 13, column: 23, scope: !52)
!54 = !DILocation(line: 13, column: 5, scope: !48)
!55 = !DILocation(line: 14, column: 64, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !2, line: 13, column: 33)
!57 = !DILocation(line: 14, column: 66, scope: !56)
!58 = !DILocation(line: 14, column: 73, scope: !56)
!59 = !DILocation(line: 14, column: 80, scope: !56)
!60 = !DILocation(line: 14, column: 78, scope: !56)
!61 = !DILocation(line: 14, column: 71, scope: !56)
!62 = !DILocation(line: 14, column: 86, scope: !56)
!63 = !DILocation(line: 14, column: 93, scope: !56)
!64 = !DILocation(line: 14, column: 91, scope: !56)
!65 = !DILocation(line: 14, column: 84, scope: !56)
!66 = !DILocation(line: 14, column: 9, scope: !56)
!67 = !DILocalVariable(name: "sum", scope: !56, file: !2, line: 16, type: !30)
!68 = !DILocation(line: 16, column: 13, scope: !56)
!69 = !DILocation(line: 16, column: 21, scope: !56)
!70 = !DILocation(line: 16, column: 28, scope: !56)
!71 = !DILocation(line: 16, column: 26, scope: !56)
!72 = !DILocation(line: 16, column: 19, scope: !56)
!73 = !DILocation(line: 16, column: 35, scope: !56)
!74 = !DILocation(line: 16, column: 42, scope: !56)
!75 = !DILocation(line: 16, column: 40, scope: !56)
!76 = !DILocation(line: 16, column: 33, scope: !56)
!77 = !DILocation(line: 16, column: 31, scope: !56)
!78 = !DILocation(line: 17, column: 55, scope: !56)
!79 = !DILocation(line: 17, column: 9, scope: !56)
!80 = !DILocation(line: 18, column: 5, scope: !56)
!81 = !DILocation(line: 13, column: 29, scope: !52)
!82 = !DILocation(line: 13, column: 5, scope: !52)
!83 = distinct !{!83, !54, !84, !85}
!84 = !DILocation(line: 18, column: 5, scope: !48)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 20, column: 5, scope: !27)
