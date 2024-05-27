; ModuleID = 'src/integer_average.c'
source_filename = "src/integer_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.numbers = private unnamed_addr constant [10 x i32] [i32 1, i32 4, i32 5, i32 9, i32 8, i32 1, i32 2, i32 3, i32 4, i32 8], align 16
@.str = private unnamed_addr constant [14 x i8] c"The numbers: \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [32 x i8] c"Sum of the entered numbers: %d\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [36 x i8] c"Average of the entered numbers: %d\0A\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !42, metadata !DIExpression()), !dbg !46
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.numbers, i64 40, i1 false), !dbg !46
  call void @llvm.dbg.declare(metadata ptr %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 0, ptr %3, align 4, !dbg !48
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !49
  call void @llvm.dbg.declare(metadata ptr %4, metadata !50, metadata !DIExpression()), !dbg !52
  store i32 0, ptr %4, align 4, !dbg !52
  br label %7, !dbg !53

7:                                                ; preds = %22, %0
  %8 = load i32, ptr %4, align 4, !dbg !54
  %9 = icmp slt i32 %8, 10, !dbg !56
  br i1 %9, label %10, label %25, !dbg !57

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4, !dbg !58
  %12 = sext i32 %11 to i64, !dbg !60
  %13 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %12, !dbg !60
  %14 = load i32, ptr %13, align 4, !dbg !60
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14), !dbg !61
  %16 = load i32, ptr %4, align 4, !dbg !62
  %17 = sext i32 %16 to i64, !dbg !63
  %18 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %17, !dbg !63
  %19 = load i32, ptr %18, align 4, !dbg !63
  %20 = load i32, ptr %3, align 4, !dbg !64
  %21 = add nsw i32 %20, %19, !dbg !64
  store i32 %21, ptr %3, align 4, !dbg !64
  br label %22, !dbg !65

22:                                               ; preds = %10
  %23 = load i32, ptr %4, align 4, !dbg !66
  %24 = add nsw i32 %23, 1, !dbg !66
  store i32 %24, ptr %4, align 4, !dbg !66
  br label %7, !dbg !67, !llvm.loop !68

25:                                               ; preds = %7
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !71
  call void @llvm.dbg.declare(metadata ptr %5, metadata !72, metadata !DIExpression()), !dbg !73
  %27 = load i32, ptr %3, align 4, !dbg !74
  %28 = sdiv i32 %27, 10, !dbg !75
  store i32 %28, ptr %5, align 4, !dbg !73
  %29 = load i32, ptr %3, align 4, !dbg !76
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %29), !dbg !77
  %31 = load i32, ptr %5, align 4, !dbg !78
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %31), !dbg !79
  ret i32 0, !dbg !80
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

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 8, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/integer_average.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "b2858a91eff5f20f9cea842a78dbef71")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 10, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 32)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 36)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !28, splitDebugInlining: false, nameTableKind: None)
!28 = !{!0, !7, !12, !17, !22}
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!37 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 3, type: !38, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !{}
!42 = !DILocalVariable(name: "numbers", scope: !37, file: !2, line: 4, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 320, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 10)
!46 = !DILocation(line: 4, column: 9, scope: !37)
!47 = !DILocalVariable(name: "sum", scope: !37, file: !2, line: 5, type: !40)
!48 = !DILocation(line: 5, column: 9, scope: !37)
!49 = !DILocation(line: 8, column: 5, scope: !37)
!50 = !DILocalVariable(name: "i", scope: !51, file: !2, line: 9, type: !40)
!51 = distinct !DILexicalBlock(scope: !37, file: !2, line: 9, column: 5)
!52 = !DILocation(line: 9, column: 14, scope: !51)
!53 = !DILocation(line: 9, column: 10, scope: !51)
!54 = !DILocation(line: 9, column: 21, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !2, line: 9, column: 5)
!56 = !DILocation(line: 9, column: 23, scope: !55)
!57 = !DILocation(line: 9, column: 5, scope: !51)
!58 = !DILocation(line: 10, column: 31, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !2, line: 9, column: 34)
!60 = !DILocation(line: 10, column: 23, scope: !59)
!61 = !DILocation(line: 10, column: 9, scope: !59)
!62 = !DILocation(line: 11, column: 24, scope: !59)
!63 = !DILocation(line: 11, column: 16, scope: !59)
!64 = !DILocation(line: 11, column: 13, scope: !59)
!65 = !DILocation(line: 12, column: 5, scope: !59)
!66 = !DILocation(line: 9, column: 30, scope: !55)
!67 = !DILocation(line: 9, column: 5, scope: !55)
!68 = distinct !{!68, !57, !69, !70}
!69 = !DILocation(line: 12, column: 5, scope: !51)
!70 = !{!"llvm.loop.mustprogress"}
!71 = !DILocation(line: 13, column: 5, scope: !37)
!72 = !DILocalVariable(name: "average", scope: !37, file: !2, line: 14, type: !40)
!73 = !DILocation(line: 14, column: 9, scope: !37)
!74 = !DILocation(line: 14, column: 19, scope: !37)
!75 = !DILocation(line: 14, column: 23, scope: !37)
!76 = !DILocation(line: 17, column: 48, scope: !37)
!77 = !DILocation(line: 17, column: 5, scope: !37)
!78 = !DILocation(line: 18, column: 52, scope: !37)
!79 = !DILocation(line: 18, column: 5, scope: !37)
!80 = !DILocation(line: 20, column: 5, scope: !37)
