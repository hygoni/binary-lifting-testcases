; ModuleID = 'src/calc_2.c'
source_filename = "src/calc_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"The square root of %.2f is approximately %.5f\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sqrtNewtonRaphson(double noundef %0) #0 !dbg !17 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata ptr %3, metadata !24, metadata !DIExpression()), !dbg !25
  store double 1.000000e-05, ptr %3, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata ptr %4, metadata !26, metadata !DIExpression()), !dbg !27
  %7 = load double, ptr %2, align 8, !dbg !28
  %8 = fdiv double %7, 2.000000e+00, !dbg !29
  store double %8, ptr %4, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata ptr %5, metadata !30, metadata !DIExpression()), !dbg !31
  store double 1.000000e+00, ptr %5, align 8, !dbg !31
  br label %9, !dbg !32

9:                                                ; preds = %13, %1
  %10 = load double, ptr %5, align 8, !dbg !33
  %11 = load double, ptr %3, align 8, !dbg !34
  %12 = fcmp ogt double %10, %11, !dbg !35
  br i1 %12, label %13, label %25, !dbg !32

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %6, metadata !36, metadata !DIExpression()), !dbg !38
  %14 = load double, ptr %4, align 8, !dbg !39
  %15 = load double, ptr %2, align 8, !dbg !40
  %16 = load double, ptr %4, align 8, !dbg !41
  %17 = fdiv double %15, %16, !dbg !42
  %18 = fadd double %14, %17, !dbg !43
  %19 = fdiv double %18, 2.000000e+00, !dbg !44
  store double %19, ptr %6, align 8, !dbg !38
  %20 = load double, ptr %6, align 8, !dbg !45
  %21 = load double, ptr %4, align 8, !dbg !46
  %22 = fsub double %20, %21, !dbg !47
  %23 = call double @llvm.fabs.f64(double %22), !dbg !48
  store double %23, ptr %5, align 8, !dbg !49
  %24 = load double, ptr %6, align 8, !dbg !50
  store double %24, ptr %4, align 8, !dbg !51
  br label %9, !dbg !32, !llvm.loop !52

25:                                               ; preds = %9
  %26 = load double, ptr %4, align 8, !dbg !55
  ret double %26, !dbg !56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !61, metadata !DIExpression()), !dbg !62
  store double 6.120000e+02, ptr %2, align 8, !dbg !62
  %3 = load double, ptr %2, align 8, !dbg !63
  %4 = load double, ptr %2, align 8, !dbg !64
  %5 = call double @sqrtNewtonRaphson(double noundef %4), !dbg !65
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %3, double noundef %5), !dbg !66
  ret i32 0, !dbg !67
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/calc_2.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "724c0852908f8a8acfd6bb7b1b277382")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 47)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !8, splitDebugInlining: false, nameTableKind: None)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!17 = distinct !DISubprogram(name: "sqrtNewtonRaphson", scope: !2, file: !2, line: 6, type: !18, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{}
!22 = !DILocalVariable(name: "number", arg: 1, scope: !17, file: !2, line: 6, type: !20)
!23 = !DILocation(line: 6, column: 33, scope: !17)
!24 = !DILocalVariable(name: "tolerance", scope: !17, file: !2, line: 7, type: !20)
!25 = !DILocation(line: 7, column: 12, scope: !17)
!26 = !DILocalVariable(name: "guess", scope: !17, file: !2, line: 8, type: !20)
!27 = !DILocation(line: 8, column: 12, scope: !17)
!28 = !DILocation(line: 8, column: 20, scope: !17)
!29 = !DILocation(line: 8, column: 27, scope: !17)
!30 = !DILocalVariable(name: "difference", scope: !17, file: !2, line: 9, type: !20)
!31 = !DILocation(line: 9, column: 12, scope: !17)
!32 = !DILocation(line: 11, column: 5, scope: !17)
!33 = !DILocation(line: 11, column: 12, scope: !17)
!34 = !DILocation(line: 11, column: 25, scope: !17)
!35 = !DILocation(line: 11, column: 23, scope: !17)
!36 = !DILocalVariable(name: "new_guess", scope: !37, file: !2, line: 12, type: !20)
!37 = distinct !DILexicalBlock(scope: !17, file: !2, line: 11, column: 36)
!38 = !DILocation(line: 12, column: 16, scope: !37)
!39 = !DILocation(line: 12, column: 29, scope: !37)
!40 = !DILocation(line: 12, column: 37, scope: !37)
!41 = !DILocation(line: 12, column: 46, scope: !37)
!42 = !DILocation(line: 12, column: 44, scope: !37)
!43 = !DILocation(line: 12, column: 35, scope: !37)
!44 = !DILocation(line: 12, column: 53, scope: !37)
!45 = !DILocation(line: 13, column: 27, scope: !37)
!46 = !DILocation(line: 13, column: 39, scope: !37)
!47 = !DILocation(line: 13, column: 37, scope: !37)
!48 = !DILocation(line: 13, column: 22, scope: !37)
!49 = !DILocation(line: 13, column: 20, scope: !37)
!50 = !DILocation(line: 14, column: 17, scope: !37)
!51 = !DILocation(line: 14, column: 15, scope: !37)
!52 = distinct !{!52, !32, !53, !54}
!53 = !DILocation(line: 15, column: 5, scope: !17)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 17, column: 12, scope: !17)
!56 = !DILocation(line: 17, column: 5, scope: !17)
!57 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 20, type: !58, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DILocalVariable(name: "num", scope: !57, file: !2, line: 21, type: !20)
!62 = !DILocation(line: 21, column: 12, scope: !57)
!63 = !DILocation(line: 22, column: 63, scope: !57)
!64 = !DILocation(line: 22, column: 86, scope: !57)
!65 = !DILocation(line: 22, column: 68, scope: !57)
!66 = !DILocation(line: 22, column: 5, scope: !57)
!67 = !DILocation(line: 23, column: 5, scope: !57)
