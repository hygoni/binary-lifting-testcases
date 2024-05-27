; ModuleID = 'src/linked_list_sort.c'
source_filename = "src/linked_list_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [16 x i8] c"Original List: \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [14 x i8] c"Sorted List: \00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @createNode(i32 noundef %0) #0 !dbg !41 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata ptr %3, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = call noalias ptr @malloc(i64 noundef 24) #5, !dbg !49
  store ptr %4, ptr %3, align 8, !dbg !48
  %5 = load i32, ptr %2, align 4, !dbg !50
  %6 = load ptr, ptr %3, align 8, !dbg !51
  %7 = getelementptr inbounds %struct.Node, ptr %6, i32 0, i32 0, !dbg !52
  store i32 %5, ptr %7, align 8, !dbg !53
  %8 = load ptr, ptr %3, align 8, !dbg !54
  %9 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 1, !dbg !55
  store ptr null, ptr %9, align 8, !dbg !56
  %10 = load ptr, ptr %3, align 8, !dbg !57
  %11 = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 2, !dbg !58
  store ptr null, ptr %11, align 8, !dbg !59
  %12 = load ptr, ptr %3, align 8, !dbg !60
  ret ptr %12, !dbg !61
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @merge(ptr noundef %0, ptr noundef %1) #0 !dbg !62 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !65, metadata !DIExpression()), !dbg !66
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !67, metadata !DIExpression()), !dbg !68
  %7 = load ptr, ptr %4, align 8, !dbg !69
  %8 = icmp eq ptr %7, null, !dbg !71
  br i1 %8, label %9, label %11, !dbg !72

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !73
  store ptr %10, ptr %3, align 8, !dbg !74
  br label %54, !dbg !74

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !75
  %13 = icmp eq ptr %12, null, !dbg !77
  br i1 %13, label %14, label %16, !dbg !78

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !dbg !79
  store ptr %15, ptr %3, align 8, !dbg !80
  br label %54, !dbg !80

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !81, metadata !DIExpression()), !dbg !82
  store ptr null, ptr %6, align 8, !dbg !82
  %17 = load ptr, ptr %4, align 8, !dbg !83
  %18 = getelementptr inbounds %struct.Node, ptr %17, i32 0, i32 0, !dbg !85
  %19 = load i32, ptr %18, align 8, !dbg !85
  %20 = load ptr, ptr %5, align 8, !dbg !86
  %21 = getelementptr inbounds %struct.Node, ptr %20, i32 0, i32 0, !dbg !87
  %22 = load i32, ptr %21, align 8, !dbg !87
  %23 = icmp sle i32 %19, %22, !dbg !88
  br i1 %23, label %24, label %38, !dbg !89

24:                                               ; preds = %16
  %25 = load ptr, ptr %4, align 8, !dbg !90
  store ptr %25, ptr %6, align 8, !dbg !92
  %26 = load ptr, ptr %4, align 8, !dbg !93
  %27 = getelementptr inbounds %struct.Node, ptr %26, i32 0, i32 2, !dbg !94
  %28 = load ptr, ptr %27, align 8, !dbg !94
  %29 = load ptr, ptr %5, align 8, !dbg !95
  %30 = call ptr @merge(ptr noundef %28, ptr noundef %29), !dbg !96
  %31 = load ptr, ptr %6, align 8, !dbg !97
  %32 = getelementptr inbounds %struct.Node, ptr %31, i32 0, i32 2, !dbg !98
  store ptr %30, ptr %32, align 8, !dbg !99
  %33 = load ptr, ptr %6, align 8, !dbg !100
  %34 = load ptr, ptr %6, align 8, !dbg !101
  %35 = getelementptr inbounds %struct.Node, ptr %34, i32 0, i32 2, !dbg !102
  %36 = load ptr, ptr %35, align 8, !dbg !102
  %37 = getelementptr inbounds %struct.Node, ptr %36, i32 0, i32 1, !dbg !103
  store ptr %33, ptr %37, align 8, !dbg !104
  br label %52, !dbg !105

38:                                               ; preds = %16
  %39 = load ptr, ptr %5, align 8, !dbg !106
  store ptr %39, ptr %6, align 8, !dbg !108
  %40 = load ptr, ptr %4, align 8, !dbg !109
  %41 = load ptr, ptr %5, align 8, !dbg !110
  %42 = getelementptr inbounds %struct.Node, ptr %41, i32 0, i32 2, !dbg !111
  %43 = load ptr, ptr %42, align 8, !dbg !111
  %44 = call ptr @merge(ptr noundef %40, ptr noundef %43), !dbg !112
  %45 = load ptr, ptr %6, align 8, !dbg !113
  %46 = getelementptr inbounds %struct.Node, ptr %45, i32 0, i32 2, !dbg !114
  store ptr %44, ptr %46, align 8, !dbg !115
  %47 = load ptr, ptr %6, align 8, !dbg !116
  %48 = load ptr, ptr %6, align 8, !dbg !117
  %49 = getelementptr inbounds %struct.Node, ptr %48, i32 0, i32 2, !dbg !118
  %50 = load ptr, ptr %49, align 8, !dbg !118
  %51 = getelementptr inbounds %struct.Node, ptr %50, i32 0, i32 1, !dbg !119
  store ptr %47, ptr %51, align 8, !dbg !120
  br label %52

52:                                               ; preds = %38, %24
  %53 = load ptr, ptr %6, align 8, !dbg !121
  store ptr %53, ptr %3, align 8, !dbg !122
  br label %54, !dbg !122

54:                                               ; preds = %52, %14, %9
  %55 = load ptr, ptr %3, align 8, !dbg !123
  ret ptr %55, !dbg !123
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @mergeSort(ptr noundef %0) #0 !dbg !124 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !127, metadata !DIExpression()), !dbg !128
  %10 = load ptr, ptr %3, align 8, !dbg !129
  %11 = icmp eq ptr %10, null, !dbg !131
  br i1 %11, label %17, label %12, !dbg !132

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !133
  %14 = getelementptr inbounds %struct.Node, ptr %13, i32 0, i32 2, !dbg !134
  %15 = load ptr, ptr %14, align 8, !dbg !134
  %16 = icmp eq ptr %15, null, !dbg !135
  br i1 %16, label %17, label %19, !dbg !136

17:                                               ; preds = %12, %1
  %18 = load ptr, ptr %3, align 8, !dbg !137
  store ptr %18, ptr %2, align 8, !dbg !138
  br label %59, !dbg !138

19:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !139, metadata !DIExpression()), !dbg !140
  %20 = load ptr, ptr %3, align 8, !dbg !141
  store ptr %20, ptr %4, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %5, metadata !142, metadata !DIExpression()), !dbg !143
  %21 = load ptr, ptr %3, align 8, !dbg !144
  %22 = getelementptr inbounds %struct.Node, ptr %21, i32 0, i32 2, !dbg !145
  %23 = load ptr, ptr %22, align 8, !dbg !145
  store ptr %23, ptr %5, align 8, !dbg !143
  br label %24, !dbg !146

24:                                               ; preds = %34, %19
  %25 = load ptr, ptr %5, align 8, !dbg !147
  %26 = icmp ne ptr %25, null, !dbg !148
  br i1 %26, label %27, label %32, !dbg !149

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 8, !dbg !150
  %29 = getelementptr inbounds %struct.Node, ptr %28, i32 0, i32 2, !dbg !151
  %30 = load ptr, ptr %29, align 8, !dbg !151
  %31 = icmp ne ptr %30, null, !dbg !152
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ], !dbg !153
  br i1 %33, label %34, label %43, !dbg !146

34:                                               ; preds = %32
  %35 = load ptr, ptr %4, align 8, !dbg !154
  %36 = getelementptr inbounds %struct.Node, ptr %35, i32 0, i32 2, !dbg !156
  %37 = load ptr, ptr %36, align 8, !dbg !156
  store ptr %37, ptr %4, align 8, !dbg !157
  %38 = load ptr, ptr %5, align 8, !dbg !158
  %39 = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 2, !dbg !159
  %40 = load ptr, ptr %39, align 8, !dbg !159
  %41 = getelementptr inbounds %struct.Node, ptr %40, i32 0, i32 2, !dbg !160
  %42 = load ptr, ptr %41, align 8, !dbg !160
  store ptr %42, ptr %5, align 8, !dbg !161
  br label %24, !dbg !146, !llvm.loop !162

43:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %6, metadata !165, metadata !DIExpression()), !dbg !166
  %44 = load ptr, ptr %4, align 8, !dbg !167
  store ptr %44, ptr %6, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %7, metadata !168, metadata !DIExpression()), !dbg !169
  %45 = load ptr, ptr %6, align 8, !dbg !170
  %46 = getelementptr inbounds %struct.Node, ptr %45, i32 0, i32 2, !dbg !171
  %47 = load ptr, ptr %46, align 8, !dbg !171
  store ptr %47, ptr %7, align 8, !dbg !169
  %48 = load ptr, ptr %6, align 8, !dbg !172
  %49 = getelementptr inbounds %struct.Node, ptr %48, i32 0, i32 2, !dbg !173
  store ptr null, ptr %49, align 8, !dbg !174
  %50 = load ptr, ptr %7, align 8, !dbg !175
  %51 = getelementptr inbounds %struct.Node, ptr %50, i32 0, i32 1, !dbg !176
  store ptr null, ptr %51, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %8, metadata !178, metadata !DIExpression()), !dbg !179
  %52 = load ptr, ptr %3, align 8, !dbg !180
  %53 = call ptr @mergeSort(ptr noundef %52), !dbg !181
  store ptr %53, ptr %8, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %9, metadata !182, metadata !DIExpression()), !dbg !183
  %54 = load ptr, ptr %7, align 8, !dbg !184
  %55 = call ptr @mergeSort(ptr noundef %54), !dbg !185
  store ptr %55, ptr %9, align 8, !dbg !183
  %56 = load ptr, ptr %8, align 8, !dbg !186
  %57 = load ptr, ptr %9, align 8, !dbg !187
  %58 = call ptr @merge(ptr noundef %56, ptr noundef %57), !dbg !188
  store ptr %58, ptr %2, align 8, !dbg !189
  br label %59, !dbg !189

59:                                               ; preds = %43, %17
  %60 = load ptr, ptr %2, align 8, !dbg !190
  ret ptr %60, !dbg !190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printList(ptr noundef %0) #0 !dbg !191 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata ptr %3, metadata !196, metadata !DIExpression()), !dbg !197
  %4 = load ptr, ptr %2, align 8, !dbg !198
  store ptr %4, ptr %3, align 8, !dbg !197
  br label %5, !dbg !199

5:                                                ; preds = %8, %1
  %6 = load ptr, ptr %3, align 8, !dbg !200
  %7 = icmp ne ptr %6, null, !dbg !201
  br i1 %7, label %8, label %16, !dbg !199

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !202
  %10 = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 0, !dbg !204
  %11 = load i32, ptr %10, align 8, !dbg !204
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11), !dbg !205
  %13 = load ptr, ptr %3, align 8, !dbg !206
  %14 = getelementptr inbounds %struct.Node, ptr %13, i32 0, i32 2, !dbg !207
  %15 = load ptr, ptr %14, align 8, !dbg !207
  store ptr %15, ptr %3, align 8, !dbg !208
  br label %5, !dbg !199, !llvm.loop !209

16:                                               ; preds = %5
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !211
  ret void, !dbg !212
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeList(ptr noundef %0) #0 !dbg !213 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata ptr %3, metadata !216, metadata !DIExpression()), !dbg !217
  br label %4, !dbg !218

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr %2, align 8, !dbg !219
  %6 = icmp ne ptr %5, null, !dbg !220
  br i1 %6, label %7, label %13, !dbg !218

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !dbg !221
  store ptr %8, ptr %3, align 8, !dbg !223
  %9 = load ptr, ptr %2, align 8, !dbg !224
  %10 = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 2, !dbg !225
  %11 = load ptr, ptr %10, align 8, !dbg !225
  store ptr %11, ptr %2, align 8, !dbg !226
  %12 = load ptr, ptr %3, align 8, !dbg !227
  call void @free(ptr noundef %12) #6, !dbg !228
  br label %4, !dbg !218, !llvm.loop !229

13:                                               ; preds = %4
  ret void, !dbg !231
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !232 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !235, metadata !DIExpression()), !dbg !236
  %3 = call ptr @createNode(i32 noundef 5), !dbg !237
  store ptr %3, ptr %2, align 8, !dbg !236
  %4 = call ptr @createNode(i32 noundef 3), !dbg !238
  %5 = load ptr, ptr %2, align 8, !dbg !239
  %6 = getelementptr inbounds %struct.Node, ptr %5, i32 0, i32 2, !dbg !240
  store ptr %4, ptr %6, align 8, !dbg !241
  %7 = load ptr, ptr %2, align 8, !dbg !242
  %8 = load ptr, ptr %2, align 8, !dbg !243
  %9 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 2, !dbg !244
  %10 = load ptr, ptr %9, align 8, !dbg !244
  %11 = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 1, !dbg !245
  store ptr %7, ptr %11, align 8, !dbg !246
  %12 = call ptr @createNode(i32 noundef 9), !dbg !247
  %13 = load ptr, ptr %2, align 8, !dbg !248
  %14 = getelementptr inbounds %struct.Node, ptr %13, i32 0, i32 2, !dbg !249
  %15 = load ptr, ptr %14, align 8, !dbg !249
  %16 = getelementptr inbounds %struct.Node, ptr %15, i32 0, i32 2, !dbg !250
  store ptr %12, ptr %16, align 8, !dbg !251
  %17 = load ptr, ptr %2, align 8, !dbg !252
  %18 = getelementptr inbounds %struct.Node, ptr %17, i32 0, i32 2, !dbg !253
  %19 = load ptr, ptr %18, align 8, !dbg !253
  %20 = load ptr, ptr %2, align 8, !dbg !254
  %21 = getelementptr inbounds %struct.Node, ptr %20, i32 0, i32 2, !dbg !255
  %22 = load ptr, ptr %21, align 8, !dbg !255
  %23 = getelementptr inbounds %struct.Node, ptr %22, i32 0, i32 2, !dbg !256
  %24 = load ptr, ptr %23, align 8, !dbg !256
  %25 = getelementptr inbounds %struct.Node, ptr %24, i32 0, i32 1, !dbg !257
  store ptr %19, ptr %25, align 8, !dbg !258
  %26 = call ptr @createNode(i32 noundef 1), !dbg !259
  %27 = load ptr, ptr %2, align 8, !dbg !260
  %28 = getelementptr inbounds %struct.Node, ptr %27, i32 0, i32 2, !dbg !261
  %29 = load ptr, ptr %28, align 8, !dbg !261
  %30 = getelementptr inbounds %struct.Node, ptr %29, i32 0, i32 2, !dbg !262
  %31 = load ptr, ptr %30, align 8, !dbg !262
  %32 = getelementptr inbounds %struct.Node, ptr %31, i32 0, i32 2, !dbg !263
  store ptr %26, ptr %32, align 8, !dbg !264
  %33 = load ptr, ptr %2, align 8, !dbg !265
  %34 = getelementptr inbounds %struct.Node, ptr %33, i32 0, i32 2, !dbg !266
  %35 = load ptr, ptr %34, align 8, !dbg !266
  %36 = getelementptr inbounds %struct.Node, ptr %35, i32 0, i32 2, !dbg !267
  %37 = load ptr, ptr %36, align 8, !dbg !267
  %38 = load ptr, ptr %2, align 8, !dbg !268
  %39 = getelementptr inbounds %struct.Node, ptr %38, i32 0, i32 2, !dbg !269
  %40 = load ptr, ptr %39, align 8, !dbg !269
  %41 = getelementptr inbounds %struct.Node, ptr %40, i32 0, i32 2, !dbg !270
  %42 = load ptr, ptr %41, align 8, !dbg !270
  %43 = getelementptr inbounds %struct.Node, ptr %42, i32 0, i32 2, !dbg !271
  %44 = load ptr, ptr %43, align 8, !dbg !271
  %45 = getelementptr inbounds %struct.Node, ptr %44, i32 0, i32 1, !dbg !272
  store ptr %37, ptr %45, align 8, !dbg !273
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !274
  %47 = load ptr, ptr %2, align 8, !dbg !275
  call void @printList(ptr noundef %47), !dbg !276
  %48 = load ptr, ptr %2, align 8, !dbg !277
  %49 = call ptr @mergeSort(ptr noundef %48), !dbg !278
  store ptr %49, ptr %2, align 8, !dbg !279
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !280
  %51 = load ptr, ptr %2, align 8, !dbg !281
  call void @printList(ptr noundef %51), !dbg !282
  %52 = load ptr, ptr %2, align 8, !dbg !283
  call void @freeList(ptr noundef %52), !dbg !284
  ret i32 0, !dbg !285
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/linked_list_sort.c", directory: "/home/kimseongyu925/binary-lifting-testcases", checksumkind: CSK_MD5, checksum: "e4745d7de4112cbdd12ca1b91ba208d1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 16)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !23, globals: !32, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24, !31}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !2, line: 5, size: 192, elements: !26)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !2, line: 6, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !25, file: !2, line: 7, baseType: !24, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !2, line: 8, baseType: !24, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !{!0, !7, !12, !17}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!41 = distinct !DISubprogram(name: "createNode", scope: !2, file: !2, line: 12, type: !42, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!24, !28}
!44 = !{}
!45 = !DILocalVariable(name: "data", arg: 1, scope: !41, file: !2, line: 12, type: !28)
!46 = !DILocation(line: 12, column: 29, scope: !41)
!47 = !DILocalVariable(name: "newNode", scope: !41, file: !2, line: 13, type: !24)
!48 = !DILocation(line: 13, column: 18, scope: !41)
!49 = !DILocation(line: 13, column: 42, scope: !41)
!50 = !DILocation(line: 14, column: 21, scope: !41)
!51 = !DILocation(line: 14, column: 5, scope: !41)
!52 = !DILocation(line: 14, column: 14, scope: !41)
!53 = !DILocation(line: 14, column: 19, scope: !41)
!54 = !DILocation(line: 15, column: 5, scope: !41)
!55 = !DILocation(line: 15, column: 14, scope: !41)
!56 = !DILocation(line: 15, column: 19, scope: !41)
!57 = !DILocation(line: 16, column: 5, scope: !41)
!58 = !DILocation(line: 16, column: 14, scope: !41)
!59 = !DILocation(line: 16, column: 19, scope: !41)
!60 = !DILocation(line: 17, column: 12, scope: !41)
!61 = !DILocation(line: 17, column: 5, scope: !41)
!62 = distinct !DISubprogram(name: "merge", scope: !2, file: !2, line: 21, type: !63, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !44)
!63 = !DISubroutineType(types: !64)
!64 = !{!24, !24, !24}
!65 = !DILocalVariable(name: "left", arg: 1, scope: !62, file: !2, line: 21, type: !24)
!66 = !DILocation(line: 21, column: 33, scope: !62)
!67 = !DILocalVariable(name: "right", arg: 2, scope: !62, file: !2, line: 21, type: !24)
!68 = !DILocation(line: 21, column: 52, scope: !62)
!69 = !DILocation(line: 22, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !2, line: 22, column: 9)
!71 = !DILocation(line: 22, column: 14, scope: !70)
!72 = !DILocation(line: 22, column: 9, scope: !62)
!73 = !DILocation(line: 23, column: 16, scope: !70)
!74 = !DILocation(line: 23, column: 9, scope: !70)
!75 = !DILocation(line: 24, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !62, file: !2, line: 24, column: 9)
!77 = !DILocation(line: 24, column: 15, scope: !76)
!78 = !DILocation(line: 24, column: 9, scope: !62)
!79 = !DILocation(line: 25, column: 16, scope: !76)
!80 = !DILocation(line: 25, column: 9, scope: !76)
!81 = !DILocalVariable(name: "result", scope: !62, file: !2, line: 27, type: !24)
!82 = !DILocation(line: 27, column: 18, scope: !62)
!83 = !DILocation(line: 28, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !62, file: !2, line: 28, column: 9)
!85 = !DILocation(line: 28, column: 15, scope: !84)
!86 = !DILocation(line: 28, column: 23, scope: !84)
!87 = !DILocation(line: 28, column: 30, scope: !84)
!88 = !DILocation(line: 28, column: 20, scope: !84)
!89 = !DILocation(line: 28, column: 9, scope: !62)
!90 = !DILocation(line: 29, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !84, file: !2, line: 28, column: 36)
!92 = !DILocation(line: 29, column: 16, scope: !91)
!93 = !DILocation(line: 30, column: 30, scope: !91)
!94 = !DILocation(line: 30, column: 36, scope: !91)
!95 = !DILocation(line: 30, column: 42, scope: !91)
!96 = !DILocation(line: 30, column: 24, scope: !91)
!97 = !DILocation(line: 30, column: 9, scope: !91)
!98 = !DILocation(line: 30, column: 17, scope: !91)
!99 = !DILocation(line: 30, column: 22, scope: !91)
!100 = !DILocation(line: 31, column: 30, scope: !91)
!101 = !DILocation(line: 31, column: 9, scope: !91)
!102 = !DILocation(line: 31, column: 17, scope: !91)
!103 = !DILocation(line: 31, column: 23, scope: !91)
!104 = !DILocation(line: 31, column: 28, scope: !91)
!105 = !DILocation(line: 32, column: 5, scope: !91)
!106 = !DILocation(line: 33, column: 18, scope: !107)
!107 = distinct !DILexicalBlock(scope: !84, file: !2, line: 32, column: 12)
!108 = !DILocation(line: 33, column: 16, scope: !107)
!109 = !DILocation(line: 34, column: 30, scope: !107)
!110 = !DILocation(line: 34, column: 36, scope: !107)
!111 = !DILocation(line: 34, column: 43, scope: !107)
!112 = !DILocation(line: 34, column: 24, scope: !107)
!113 = !DILocation(line: 34, column: 9, scope: !107)
!114 = !DILocation(line: 34, column: 17, scope: !107)
!115 = !DILocation(line: 34, column: 22, scope: !107)
!116 = !DILocation(line: 35, column: 30, scope: !107)
!117 = !DILocation(line: 35, column: 9, scope: !107)
!118 = !DILocation(line: 35, column: 17, scope: !107)
!119 = !DILocation(line: 35, column: 23, scope: !107)
!120 = !DILocation(line: 35, column: 28, scope: !107)
!121 = !DILocation(line: 37, column: 12, scope: !62)
!122 = !DILocation(line: 37, column: 5, scope: !62)
!123 = !DILocation(line: 38, column: 1, scope: !62)
!124 = distinct !DISubprogram(name: "mergeSort", scope: !2, file: !2, line: 41, type: !125, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !44)
!125 = !DISubroutineType(types: !126)
!126 = !{!24, !24}
!127 = !DILocalVariable(name: "head", arg: 1, scope: !124, file: !2, line: 41, type: !24)
!128 = !DILocation(line: 41, column: 37, scope: !124)
!129 = !DILocation(line: 42, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !2, line: 42, column: 9)
!131 = !DILocation(line: 42, column: 14, scope: !130)
!132 = !DILocation(line: 42, column: 22, scope: !130)
!133 = !DILocation(line: 42, column: 25, scope: !130)
!134 = !DILocation(line: 42, column: 31, scope: !130)
!135 = !DILocation(line: 42, column: 36, scope: !130)
!136 = !DILocation(line: 42, column: 9, scope: !124)
!137 = !DILocation(line: 43, column: 16, scope: !130)
!138 = !DILocation(line: 43, column: 9, scope: !130)
!139 = !DILocalVariable(name: "slow", scope: !124, file: !2, line: 45, type: !24)
!140 = !DILocation(line: 45, column: 18, scope: !124)
!141 = !DILocation(line: 45, column: 25, scope: !124)
!142 = !DILocalVariable(name: "fast", scope: !124, file: !2, line: 46, type: !24)
!143 = !DILocation(line: 46, column: 18, scope: !124)
!144 = !DILocation(line: 46, column: 25, scope: !124)
!145 = !DILocation(line: 46, column: 31, scope: !124)
!146 = !DILocation(line: 48, column: 5, scope: !124)
!147 = !DILocation(line: 48, column: 12, scope: !124)
!148 = !DILocation(line: 48, column: 17, scope: !124)
!149 = !DILocation(line: 48, column: 25, scope: !124)
!150 = !DILocation(line: 48, column: 28, scope: !124)
!151 = !DILocation(line: 48, column: 34, scope: !124)
!152 = !DILocation(line: 48, column: 39, scope: !124)
!153 = !DILocation(line: 0, scope: !124)
!154 = !DILocation(line: 49, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !124, file: !2, line: 48, column: 48)
!156 = !DILocation(line: 49, column: 22, scope: !155)
!157 = !DILocation(line: 49, column: 14, scope: !155)
!158 = !DILocation(line: 50, column: 16, scope: !155)
!159 = !DILocation(line: 50, column: 22, scope: !155)
!160 = !DILocation(line: 50, column: 28, scope: !155)
!161 = !DILocation(line: 50, column: 14, scope: !155)
!162 = distinct !{!162, !146, !163, !164}
!163 = !DILocation(line: 51, column: 5, scope: !124)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocalVariable(name: "mid", scope: !124, file: !2, line: 53, type: !24)
!166 = !DILocation(line: 53, column: 18, scope: !124)
!167 = !DILocation(line: 53, column: 24, scope: !124)
!168 = !DILocalVariable(name: "midNext", scope: !124, file: !2, line: 54, type: !24)
!169 = !DILocation(line: 54, column: 18, scope: !124)
!170 = !DILocation(line: 54, column: 28, scope: !124)
!171 = !DILocation(line: 54, column: 33, scope: !124)
!172 = !DILocation(line: 55, column: 5, scope: !124)
!173 = !DILocation(line: 55, column: 10, scope: !124)
!174 = !DILocation(line: 55, column: 15, scope: !124)
!175 = !DILocation(line: 56, column: 5, scope: !124)
!176 = !DILocation(line: 56, column: 14, scope: !124)
!177 = !DILocation(line: 56, column: 19, scope: !124)
!178 = !DILocalVariable(name: "left", scope: !124, file: !2, line: 58, type: !24)
!179 = !DILocation(line: 58, column: 18, scope: !124)
!180 = !DILocation(line: 58, column: 35, scope: !124)
!181 = !DILocation(line: 58, column: 25, scope: !124)
!182 = !DILocalVariable(name: "right", scope: !124, file: !2, line: 59, type: !24)
!183 = !DILocation(line: 59, column: 18, scope: !124)
!184 = !DILocation(line: 59, column: 36, scope: !124)
!185 = !DILocation(line: 59, column: 26, scope: !124)
!186 = !DILocation(line: 61, column: 18, scope: !124)
!187 = !DILocation(line: 61, column: 24, scope: !124)
!188 = !DILocation(line: 61, column: 12, scope: !124)
!189 = !DILocation(line: 61, column: 5, scope: !124)
!190 = !DILocation(line: 62, column: 1, scope: !124)
!191 = distinct !DISubprogram(name: "printList", scope: !2, file: !2, line: 65, type: !192, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !44)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !24}
!194 = !DILocalVariable(name: "head", arg: 1, scope: !191, file: !2, line: 65, type: !24)
!195 = !DILocation(line: 65, column: 29, scope: !191)
!196 = !DILocalVariable(name: "current", scope: !191, file: !2, line: 66, type: !24)
!197 = !DILocation(line: 66, column: 18, scope: !191)
!198 = !DILocation(line: 66, column: 28, scope: !191)
!199 = !DILocation(line: 67, column: 5, scope: !191)
!200 = !DILocation(line: 67, column: 12, scope: !191)
!201 = !DILocation(line: 67, column: 20, scope: !191)
!202 = !DILocation(line: 68, column: 23, scope: !203)
!203 = distinct !DILexicalBlock(scope: !191, file: !2, line: 67, column: 29)
!204 = !DILocation(line: 68, column: 32, scope: !203)
!205 = !DILocation(line: 68, column: 9, scope: !203)
!206 = !DILocation(line: 69, column: 19, scope: !203)
!207 = !DILocation(line: 69, column: 28, scope: !203)
!208 = !DILocation(line: 69, column: 17, scope: !203)
!209 = distinct !{!209, !199, !210, !164}
!210 = !DILocation(line: 70, column: 5, scope: !191)
!211 = !DILocation(line: 71, column: 5, scope: !191)
!212 = !DILocation(line: 72, column: 1, scope: !191)
!213 = distinct !DISubprogram(name: "freeList", scope: !2, file: !2, line: 75, type: !192, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !44)
!214 = !DILocalVariable(name: "head", arg: 1, scope: !213, file: !2, line: 75, type: !24)
!215 = !DILocation(line: 75, column: 28, scope: !213)
!216 = !DILocalVariable(name: "temp", scope: !213, file: !2, line: 76, type: !24)
!217 = !DILocation(line: 76, column: 18, scope: !213)
!218 = !DILocation(line: 77, column: 5, scope: !213)
!219 = !DILocation(line: 77, column: 12, scope: !213)
!220 = !DILocation(line: 77, column: 17, scope: !213)
!221 = !DILocation(line: 78, column: 16, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !2, line: 77, column: 26)
!223 = !DILocation(line: 78, column: 14, scope: !222)
!224 = !DILocation(line: 79, column: 16, scope: !222)
!225 = !DILocation(line: 79, column: 22, scope: !222)
!226 = !DILocation(line: 79, column: 14, scope: !222)
!227 = !DILocation(line: 80, column: 14, scope: !222)
!228 = !DILocation(line: 80, column: 9, scope: !222)
!229 = distinct !{!229, !218, !230, !164}
!230 = !DILocation(line: 81, column: 5, scope: !213)
!231 = !DILocation(line: 82, column: 1, scope: !213)
!232 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 84, type: !233, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !44)
!233 = !DISubroutineType(types: !234)
!234 = !{!28}
!235 = !DILocalVariable(name: "head", scope: !232, file: !2, line: 85, type: !24)
!236 = !DILocation(line: 85, column: 18, scope: !232)
!237 = !DILocation(line: 85, column: 25, scope: !232)
!238 = !DILocation(line: 86, column: 18, scope: !232)
!239 = !DILocation(line: 86, column: 5, scope: !232)
!240 = !DILocation(line: 86, column: 11, scope: !232)
!241 = !DILocation(line: 86, column: 16, scope: !232)
!242 = !DILocation(line: 87, column: 24, scope: !232)
!243 = !DILocation(line: 87, column: 5, scope: !232)
!244 = !DILocation(line: 87, column: 11, scope: !232)
!245 = !DILocation(line: 87, column: 17, scope: !232)
!246 = !DILocation(line: 87, column: 22, scope: !232)
!247 = !DILocation(line: 88, column: 24, scope: !232)
!248 = !DILocation(line: 88, column: 5, scope: !232)
!249 = !DILocation(line: 88, column: 11, scope: !232)
!250 = !DILocation(line: 88, column: 17, scope: !232)
!251 = !DILocation(line: 88, column: 22, scope: !232)
!252 = !DILocation(line: 89, column: 30, scope: !232)
!253 = !DILocation(line: 89, column: 36, scope: !232)
!254 = !DILocation(line: 89, column: 5, scope: !232)
!255 = !DILocation(line: 89, column: 11, scope: !232)
!256 = !DILocation(line: 89, column: 17, scope: !232)
!257 = !DILocation(line: 89, column: 23, scope: !232)
!258 = !DILocation(line: 89, column: 28, scope: !232)
!259 = !DILocation(line: 90, column: 30, scope: !232)
!260 = !DILocation(line: 90, column: 5, scope: !232)
!261 = !DILocation(line: 90, column: 11, scope: !232)
!262 = !DILocation(line: 90, column: 17, scope: !232)
!263 = !DILocation(line: 90, column: 23, scope: !232)
!264 = !DILocation(line: 90, column: 28, scope: !232)
!265 = !DILocation(line: 91, column: 36, scope: !232)
!266 = !DILocation(line: 91, column: 42, scope: !232)
!267 = !DILocation(line: 91, column: 48, scope: !232)
!268 = !DILocation(line: 91, column: 5, scope: !232)
!269 = !DILocation(line: 91, column: 11, scope: !232)
!270 = !DILocation(line: 91, column: 17, scope: !232)
!271 = !DILocation(line: 91, column: 23, scope: !232)
!272 = !DILocation(line: 91, column: 29, scope: !232)
!273 = !DILocation(line: 91, column: 34, scope: !232)
!274 = !DILocation(line: 93, column: 5, scope: !232)
!275 = !DILocation(line: 94, column: 15, scope: !232)
!276 = !DILocation(line: 94, column: 5, scope: !232)
!277 = !DILocation(line: 96, column: 22, scope: !232)
!278 = !DILocation(line: 96, column: 12, scope: !232)
!279 = !DILocation(line: 96, column: 10, scope: !232)
!280 = !DILocation(line: 98, column: 5, scope: !232)
!281 = !DILocation(line: 99, column: 15, scope: !232)
!282 = !DILocation(line: 99, column: 5, scope: !232)
!283 = !DILocation(line: 102, column: 14, scope: !232)
!284 = !DILocation(line: 102, column: 5, scope: !232)
!285 = !DILocation(line: 104, column: 5, scope: !232)
