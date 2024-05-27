; ModuleID = 'src/array_1.c'
source_filename = "src/array_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 20, i1 false), !dbg !31
  call void @llvm.dbg.declare(metadata ptr %3, metadata !32, metadata !DIExpression()), !dbg !34
  %5 = getelementptr inbounds [5 x i32], ptr %2, i64 0, i64 0, !dbg !35
  %6 = getelementptr inbounds i32, ptr %5, i64 5, !dbg !36
  %7 = getelementptr inbounds i32, ptr %6, i64 -1, !dbg !37
  store ptr %7, ptr %3, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %4, metadata !38, metadata !DIExpression()), !dbg !40
  store i32 0, ptr %4, align 4, !dbg !40
  br label %8, !dbg !41

8:                                                ; preds = %17, %0
  %9 = load i32, ptr %4, align 4, !dbg !42
  %10 = sext i32 %9 to i64, !dbg !42
  %11 = icmp ult i64 %10, 5, !dbg !44
  br i1 %11, label %12, label %20, !dbg !45

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8, !dbg !46
  %14 = getelementptr inbounds i32, ptr %13, i32 -1, !dbg !46
  store ptr %14, ptr %3, align 8, !dbg !46
  %15 = load i32, ptr %13, align 4, !dbg !48
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15), !dbg !49
  br label %17, !dbg !50

17:                                               ; preds = %12
  %18 = load i32, ptr %4, align 4, !dbg !51
  %19 = add nsw i32 %18, 1, !dbg !51
  store i32 %19, ptr %4, align 4, !dbg !51
  br label %8, !dbg !52, !llvm.loop !53

20:                                               ; preds = %8
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !56
  ret i32 0, !dbg !57
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

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 9, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/array_1.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "9ba33431de5d4a8291126445af36e3fe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 11, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
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
!22 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 5, type: !23, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "arr", scope: !22, file: !2, line: 6, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 5)
!31 = !DILocation(line: 6, column: 9, scope: !22)
!32 = !DILocalVariable(name: "ptr", scope: !22, file: !2, line: 7, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!34 = !DILocation(line: 7, column: 10, scope: !22)
!35 = !DILocation(line: 7, column: 16, scope: !22)
!36 = !DILocation(line: 7, column: 20, scope: !22)
!37 = !DILocation(line: 7, column: 49, scope: !22)
!38 = !DILocalVariable(name: "i", scope: !39, file: !2, line: 8, type: !25)
!39 = distinct !DILexicalBlock(scope: !22, file: !2, line: 8, column: 5)
!40 = !DILocation(line: 8, column: 14, scope: !39)
!41 = !DILocation(line: 8, column: 10, scope: !39)
!42 = !DILocation(line: 8, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !2, line: 8, column: 5)
!44 = !DILocation(line: 8, column: 23, scope: !43)
!45 = !DILocation(line: 8, column: 5, scope: !39)
!46 = !DILocation(line: 9, column: 27, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !2, line: 8, column: 58)
!48 = !DILocation(line: 9, column: 23, scope: !47)
!49 = !DILocation(line: 9, column: 9, scope: !47)
!50 = !DILocation(line: 10, column: 5, scope: !47)
!51 = !DILocation(line: 8, column: 54, scope: !43)
!52 = !DILocation(line: 8, column: 5, scope: !43)
!53 = distinct !{!53, !45, !54, !55}
!54 = !DILocation(line: 10, column: 5, scope: !39)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 11, column: 5, scope: !22)
!57 = !DILocation(line: 12, column: 5, scope: !22)
