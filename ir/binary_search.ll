; ModuleID = 'src/binary_search.c'
source_filename = "src/binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [8 x i32] [i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16], align 16
@.str = private unnamed_addr constant [40 x i8] c"Element %d is not present in the array\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"Element %d is present at index %d\0A\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binarySearch(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !22 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !34, metadata !DIExpression()), !dbg !35
  br label %11, !dbg !36

11:                                               ; preds = %45, %4
  %12 = load i32, ptr %7, align 4, !dbg !37
  %13 = load i32, ptr %8, align 4, !dbg !38
  %14 = icmp sle i32 %12, %13, !dbg !39
  br i1 %14, label %15, label %46, !dbg !36

15:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %10, metadata !40, metadata !DIExpression()), !dbg !42
  %16 = load i32, ptr %7, align 4, !dbg !43
  %17 = load i32, ptr %8, align 4, !dbg !44
  %18 = load i32, ptr %7, align 4, !dbg !45
  %19 = sub nsw i32 %17, %18, !dbg !46
  %20 = sdiv i32 %19, 2, !dbg !47
  %21 = add nsw i32 %16, %20, !dbg !48
  store i32 %21, ptr %10, align 4, !dbg !42
  %22 = load ptr, ptr %6, align 8, !dbg !49
  %23 = load i32, ptr %10, align 4, !dbg !51
  %24 = sext i32 %23 to i64, !dbg !49
  %25 = getelementptr inbounds i32, ptr %22, i64 %24, !dbg !49
  %26 = load i32, ptr %25, align 4, !dbg !49
  %27 = load i32, ptr %9, align 4, !dbg !52
  %28 = icmp eq i32 %26, %27, !dbg !53
  br i1 %28, label %29, label %31, !dbg !54

29:                                               ; preds = %15
  %30 = load i32, ptr %10, align 4, !dbg !55
  store i32 %30, ptr %5, align 4, !dbg !56
  br label %47, !dbg !56

31:                                               ; preds = %15
  %32 = load ptr, ptr %6, align 8, !dbg !57
  %33 = load i32, ptr %10, align 4, !dbg !59
  %34 = sext i32 %33 to i64, !dbg !57
  %35 = getelementptr inbounds i32, ptr %32, i64 %34, !dbg !57
  %36 = load i32, ptr %35, align 4, !dbg !57
  %37 = load i32, ptr %9, align 4, !dbg !60
  %38 = icmp slt i32 %36, %37, !dbg !61
  br i1 %38, label %39, label %42, !dbg !62

39:                                               ; preds = %31
  %40 = load i32, ptr %10, align 4, !dbg !63
  %41 = add nsw i32 %40, 1, !dbg !64
  store i32 %41, ptr %7, align 4, !dbg !65
  br label %45, !dbg !66

42:                                               ; preds = %31
  %43 = load i32, ptr %10, align 4, !dbg !67
  %44 = sub nsw i32 %43, 1, !dbg !68
  store i32 %44, ptr %8, align 4, !dbg !69
  br label %45

45:                                               ; preds = %42, %39
  br label %11, !dbg !36, !llvm.loop !70

46:                                               ; preds = %11
  store i32 -1, ptr %5, align 4, !dbg !73
  br label %47, !dbg !73

47:                                               ; preds = %46, %29
  %48 = load i32, ptr %5, align 4, !dbg !74
  ret i32 %48, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !78, metadata !DIExpression()), !dbg !82
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 32, i1 false), !dbg !82
  call void @llvm.dbg.declare(metadata ptr %3, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 8, ptr %3, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %4, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 10, ptr %4, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %5, metadata !87, metadata !DIExpression()), !dbg !88
  %6 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 0, !dbg !89
  %7 = load i32, ptr %3, align 4, !dbg !90
  %8 = sub nsw i32 %7, 1, !dbg !91
  %9 = load i32, ptr %4, align 4, !dbg !92
  %10 = call i32 @binarySearch(ptr noundef %6, i32 noundef 0, i32 noundef %8, i32 noundef %9), !dbg !93
  store i32 %10, ptr %5, align 4, !dbg !88
  %11 = load i32, ptr %5, align 4, !dbg !94
  %12 = icmp eq i32 %11, -1, !dbg !96
  br i1 %12, label %13, label %16, !dbg !97

13:                                               ; preds = %0
  %14 = load i32, ptr %4, align 4, !dbg !98
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14), !dbg !99
  br label %20, !dbg !99

16:                                               ; preds = %0
  %17 = load i32, ptr %4, align 4, !dbg !100
  %18 = load i32, ptr %5, align 4, !dbg !101
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17, i32 noundef %18), !dbg !102
  br label %20

20:                                               ; preds = %16, %13
  ret i32 0, !dbg !103
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/binary_search.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "39d92a826fbfcc745882c4daff900ccb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 40)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
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
!22 = distinct !DISubprogram(name: "binarySearch", scope: !2, file: !2, line: 4, type: !23, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !27)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26, !25, !25, !25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !{}
!28 = !DILocalVariable(name: "arr", arg: 1, scope: !22, file: !2, line: 4, type: !26)
!29 = !DILocation(line: 4, column: 22, scope: !22)
!30 = !DILocalVariable(name: "left", arg: 2, scope: !22, file: !2, line: 4, type: !25)
!31 = !DILocation(line: 4, column: 33, scope: !22)
!32 = !DILocalVariable(name: "right", arg: 3, scope: !22, file: !2, line: 4, type: !25)
!33 = !DILocation(line: 4, column: 43, scope: !22)
!34 = !DILocalVariable(name: "target", arg: 4, scope: !22, file: !2, line: 4, type: !25)
!35 = !DILocation(line: 4, column: 54, scope: !22)
!36 = !DILocation(line: 5, column: 5, scope: !22)
!37 = !DILocation(line: 5, column: 12, scope: !22)
!38 = !DILocation(line: 5, column: 20, scope: !22)
!39 = !DILocation(line: 5, column: 17, scope: !22)
!40 = !DILocalVariable(name: "mid", scope: !41, file: !2, line: 6, type: !25)
!41 = distinct !DILexicalBlock(scope: !22, file: !2, line: 5, column: 27)
!42 = !DILocation(line: 6, column: 13, scope: !41)
!43 = !DILocation(line: 6, column: 19, scope: !41)
!44 = !DILocation(line: 6, column: 27, scope: !41)
!45 = !DILocation(line: 6, column: 35, scope: !41)
!46 = !DILocation(line: 6, column: 33, scope: !41)
!47 = !DILocation(line: 6, column: 41, scope: !41)
!48 = !DILocation(line: 6, column: 24, scope: !41)
!49 = !DILocation(line: 9, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !2, line: 9, column: 13)
!51 = !DILocation(line: 9, column: 17, scope: !50)
!52 = !DILocation(line: 9, column: 25, scope: !50)
!53 = !DILocation(line: 9, column: 22, scope: !50)
!54 = !DILocation(line: 9, column: 13, scope: !41)
!55 = !DILocation(line: 10, column: 20, scope: !50)
!56 = !DILocation(line: 10, column: 13, scope: !50)
!57 = !DILocation(line: 13, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !41, file: !2, line: 13, column: 13)
!59 = !DILocation(line: 13, column: 17, scope: !58)
!60 = !DILocation(line: 13, column: 24, scope: !58)
!61 = !DILocation(line: 13, column: 22, scope: !58)
!62 = !DILocation(line: 13, column: 13, scope: !41)
!63 = !DILocation(line: 14, column: 20, scope: !58)
!64 = !DILocation(line: 14, column: 24, scope: !58)
!65 = !DILocation(line: 14, column: 18, scope: !58)
!66 = !DILocation(line: 14, column: 13, scope: !58)
!67 = !DILocation(line: 18, column: 21, scope: !58)
!68 = !DILocation(line: 18, column: 25, scope: !58)
!69 = !DILocation(line: 18, column: 19, scope: !58)
!70 = distinct !{!70, !36, !71, !72}
!71 = !DILocation(line: 19, column: 5, scope: !22)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 22, column: 5, scope: !22)
!74 = !DILocation(line: 23, column: 1, scope: !22)
!75 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 26, type: !76, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !27)
!76 = !DISubroutineType(types: !77)
!77 = !{!25}
!78 = !DILocalVariable(name: "arr", scope: !75, file: !2, line: 27, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DILocation(line: 27, column: 9, scope: !75)
!83 = !DILocalVariable(name: "n", scope: !75, file: !2, line: 28, type: !25)
!84 = !DILocation(line: 28, column: 9, scope: !75)
!85 = !DILocalVariable(name: "target", scope: !75, file: !2, line: 29, type: !25)
!86 = !DILocation(line: 29, column: 9, scope: !75)
!87 = !DILocalVariable(name: "result", scope: !75, file: !2, line: 30, type: !25)
!88 = !DILocation(line: 30, column: 9, scope: !75)
!89 = !DILocation(line: 30, column: 31, scope: !75)
!90 = !DILocation(line: 30, column: 39, scope: !75)
!91 = !DILocation(line: 30, column: 41, scope: !75)
!92 = !DILocation(line: 30, column: 46, scope: !75)
!93 = !DILocation(line: 30, column: 18, scope: !75)
!94 = !DILocation(line: 31, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !75, file: !2, line: 31, column: 9)
!96 = !DILocation(line: 31, column: 16, scope: !95)
!97 = !DILocation(line: 31, column: 9, scope: !75)
!98 = !DILocation(line: 32, column: 60, scope: !95)
!99 = !DILocation(line: 32, column: 9, scope: !95)
!100 = !DILocation(line: 34, column: 55, scope: !95)
!101 = !DILocation(line: 34, column: 63, scope: !95)
!102 = !DILocation(line: 34, column: 9, scope: !95)
!103 = !DILocation(line: 35, column: 5, scope: !75)
