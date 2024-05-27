; ModuleID = 'src/struct_2.c'
source_filename = "src/struct_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Student = type { i32, double }

@.str = private unnamed_addr constant [29 x i8] c"\ED\95\99\EC\83\9D ID: %d, \EC\A0\90\EC\88\98: %.1f\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @createStudent(i32 noundef %0, double noundef %1) #0 !dbg !17 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !29, metadata !DIExpression()), !dbg !30
  store double %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata ptr %5, metadata !33, metadata !DIExpression()), !dbg !34
  %6 = call noalias ptr @malloc(i64 noundef 16) #5, !dbg !35
  store ptr %6, ptr %5, align 8, !dbg !34
  %7 = load i32, ptr %3, align 4, !dbg !36
  %8 = load ptr, ptr %5, align 8, !dbg !37
  %9 = getelementptr inbounds %struct.Student, ptr %8, i32 0, i32 0, !dbg !38
  store i32 %7, ptr %9, align 8, !dbg !39
  %10 = load double, ptr %4, align 8, !dbg !40
  %11 = load ptr, ptr %5, align 8, !dbg !41
  %12 = getelementptr inbounds %struct.Student, ptr %11, i32 0, i32 1, !dbg !42
  store double %10, ptr %12, align 8, !dbg !43
  %13 = load ptr, ptr %5, align 8, !dbg !44
  ret ptr %13, !dbg !45
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !46 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x ptr], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !49, metadata !DIExpression()), !dbg !53
  %4 = call ptr @createStudent(i32 noundef 101, double noundef 8.650000e+01), !dbg !54
  %5 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 0, !dbg !55
  store ptr %4, ptr %5, align 16, !dbg !56
  %6 = call ptr @createStudent(i32 noundef 102, double noundef 9.050000e+01), !dbg !57
  %7 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 1, !dbg !58
  store ptr %6, ptr %7, align 8, !dbg !59
  %8 = call ptr @createStudent(i32 noundef 103, double noundef 8.250000e+01), !dbg !60
  %9 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 2, !dbg !61
  store ptr %8, ptr %9, align 16, !dbg !62
  %10 = call ptr @createStudent(i32 noundef 104, double noundef 8.850000e+01), !dbg !63
  %11 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 3, !dbg !64
  store ptr %10, ptr %11, align 8, !dbg !65
  %12 = call ptr @createStudent(i32 noundef 105, double noundef 9.250000e+01), !dbg !66
  %13 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 4, !dbg !67
  store ptr %12, ptr %13, align 16, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %3, metadata !69, metadata !DIExpression()), !dbg !71
  store i32 0, ptr %3, align 4, !dbg !71
  br label %14, !dbg !72

14:                                               ; preds = %35, %0
  %15 = load i32, ptr %3, align 4, !dbg !73
  %16 = icmp slt i32 %15, 5, !dbg !75
  br i1 %16, label %17, label %38, !dbg !76

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4, !dbg !77
  %19 = sext i32 %18 to i64, !dbg !79
  %20 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 %19, !dbg !79
  %21 = load ptr, ptr %20, align 8, !dbg !79
  %22 = getelementptr inbounds %struct.Student, ptr %21, i32 0, i32 0, !dbg !80
  %23 = load i32, ptr %22, align 8, !dbg !80
  %24 = load i32, ptr %3, align 4, !dbg !81
  %25 = sext i32 %24 to i64, !dbg !82
  %26 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 %25, !dbg !82
  %27 = load ptr, ptr %26, align 8, !dbg !82
  %28 = getelementptr inbounds %struct.Student, ptr %27, i32 0, i32 1, !dbg !83
  %29 = load double, ptr %28, align 8, !dbg !83
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %23, double noundef %29), !dbg !84
  %31 = load i32, ptr %3, align 4, !dbg !85
  %32 = sext i32 %31 to i64, !dbg !86
  %33 = getelementptr inbounds [5 x ptr], ptr %2, i64 0, i64 %32, !dbg !86
  %34 = load ptr, ptr %33, align 8, !dbg !86
  call void @free(ptr noundef %34) #6, !dbg !87
  br label %35, !dbg !88

35:                                               ; preds = %17
  %36 = load i32, ptr %3, align 4, !dbg !89
  %37 = add nsw i32 %36, 1, !dbg !89
  store i32 %37, ptr %3, align 4, !dbg !89
  br label %14, !dbg !90, !llvm.loop !91

38:                                               ; preds = %14
  ret i32 0, !dbg !94
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/struct_2.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "c94619117673c15823028a7ea97ecddf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
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
!17 = distinct !DISubprogram(name: "createStudent", scope: !2, file: !2, line: 11, type: !18, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !28)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !25, !27}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Student", file: !2, line: 9, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 6, size: 128, elements: !23)
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !22, file: !2, line: 7, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !22, file: !2, line: 8, baseType: !27, size: 64, offset: 64)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !{}
!29 = !DILocalVariable(name: "id", arg: 1, scope: !17, file: !2, line: 11, type: !25)
!30 = !DILocation(line: 11, column: 28, scope: !17)
!31 = !DILocalVariable(name: "score", arg: 2, scope: !17, file: !2, line: 11, type: !27)
!32 = !DILocation(line: 11, column: 39, scope: !17)
!33 = !DILocalVariable(name: "newStudent", scope: !17, file: !2, line: 12, type: !20)
!34 = !DILocation(line: 12, column: 14, scope: !17)
!35 = !DILocation(line: 12, column: 27, scope: !17)
!36 = !DILocation(line: 13, column: 22, scope: !17)
!37 = !DILocation(line: 13, column: 5, scope: !17)
!38 = !DILocation(line: 13, column: 17, scope: !17)
!39 = !DILocation(line: 13, column: 20, scope: !17)
!40 = !DILocation(line: 14, column: 25, scope: !17)
!41 = !DILocation(line: 14, column: 5, scope: !17)
!42 = !DILocation(line: 14, column: 17, scope: !17)
!43 = !DILocation(line: 14, column: 23, scope: !17)
!44 = !DILocation(line: 15, column: 12, scope: !17)
!45 = !DILocation(line: 15, column: 5, scope: !17)
!46 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 18, type: !47, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !28)
!47 = !DISubroutineType(types: !48)
!48 = !{!25}
!49 = !DILocalVariable(name: "students", scope: !46, file: !2, line: 19, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 5)
!53 = !DILocation(line: 19, column: 14, scope: !46)
!54 = !DILocation(line: 20, column: 19, scope: !46)
!55 = !DILocation(line: 20, column: 5, scope: !46)
!56 = !DILocation(line: 20, column: 17, scope: !46)
!57 = !DILocation(line: 21, column: 19, scope: !46)
!58 = !DILocation(line: 21, column: 5, scope: !46)
!59 = !DILocation(line: 21, column: 17, scope: !46)
!60 = !DILocation(line: 22, column: 19, scope: !46)
!61 = !DILocation(line: 22, column: 5, scope: !46)
!62 = !DILocation(line: 22, column: 17, scope: !46)
!63 = !DILocation(line: 23, column: 19, scope: !46)
!64 = !DILocation(line: 23, column: 5, scope: !46)
!65 = !DILocation(line: 23, column: 17, scope: !46)
!66 = !DILocation(line: 24, column: 19, scope: !46)
!67 = !DILocation(line: 24, column: 5, scope: !46)
!68 = !DILocation(line: 24, column: 17, scope: !46)
!69 = !DILocalVariable(name: "i", scope: !70, file: !2, line: 26, type: !25)
!70 = distinct !DILexicalBlock(scope: !46, file: !2, line: 26, column: 5)
!71 = !DILocation(line: 26, column: 14, scope: !70)
!72 = !DILocation(line: 26, column: 10, scope: !70)
!73 = !DILocation(line: 26, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !2, line: 26, column: 5)
!75 = !DILocation(line: 26, column: 23, scope: !74)
!76 = !DILocation(line: 26, column: 5, scope: !70)
!77 = !DILocation(line: 27, column: 58, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !2, line: 26, column: 33)
!79 = !DILocation(line: 27, column: 49, scope: !78)
!80 = !DILocation(line: 27, column: 62, scope: !78)
!81 = !DILocation(line: 27, column: 75, scope: !78)
!82 = !DILocation(line: 27, column: 66, scope: !78)
!83 = !DILocation(line: 27, column: 79, scope: !78)
!84 = !DILocation(line: 27, column: 9, scope: !78)
!85 = !DILocation(line: 28, column: 23, scope: !78)
!86 = !DILocation(line: 28, column: 14, scope: !78)
!87 = !DILocation(line: 28, column: 9, scope: !78)
!88 = !DILocation(line: 29, column: 5, scope: !78)
!89 = !DILocation(line: 26, column: 29, scope: !74)
!90 = !DILocation(line: 26, column: 5, scope: !74)
!91 = distinct !{!91, !76, !92, !93}
!92 = !DILocation(line: 29, column: 5, scope: !70)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !DILocation(line: 30, column: 5, scope: !46)
