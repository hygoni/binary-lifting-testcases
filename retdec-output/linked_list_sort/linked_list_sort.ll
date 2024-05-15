source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [4 x i8] c"%d \00"
@global_var_402014 = constant [16 x i8] c"Original List: \00"
@global_var_402024 = constant [14 x i8] c"Sorted List: \00"

define i32* @createNode(i32 %data) local_unnamed_addr {
dec_label_pc_401156:
  %0 = call i64* @malloc(i32 24), !insn.addr !0
  %1 = ptrtoint i64* %0 to i64, !insn.addr !0
  %2 = bitcast i64* %0 to i32*, !insn.addr !1
  store i32 %data, i32* %2, align 4, !insn.addr !1
  %3 = add i64 %1, 8, !insn.addr !2
  %4 = inttoptr i64 %3 to i64*, !insn.addr !2
  store i64 0, i64* %4, align 8, !insn.addr !2
  %5 = add i64 %1, 16, !insn.addr !3
  %6 = inttoptr i64 %5 to i64*, !insn.addr !3
  store i64 0, i64* %6, align 8, !insn.addr !3
  ret i32* %2, !insn.addr !4
}

define i32* @merge(i32* %left, i32* %right) local_unnamed_addr {
dec_label_pc_401196:
  %0 = alloca i64
  %rax.0.in.reg2mem = alloca i32*, !insn.addr !5
  %1 = load i64, i64* %0
  %2 = load i64, i64* %0
  %3 = icmp eq i32* %left, null, !insn.addr !6
  %4 = icmp eq i1 %3, false, !insn.addr !7
  store i32* %right, i32** %rax.0.in.reg2mem, !insn.addr !7
  br i1 %4, label %dec_label_pc_4011b6, label %dec_label_pc_401252, !insn.addr !7

dec_label_pc_4011b6:                              ; preds = %dec_label_pc_401196
  %5 = icmp eq i32* %right, null, !insn.addr !8
  %6 = icmp eq i1 %5, false, !insn.addr !9
  store i32* %left, i32** %rax.0.in.reg2mem, !insn.addr !9
  br i1 %6, label %dec_label_pc_4011c6, label %dec_label_pc_401252, !insn.addr !9

dec_label_pc_4011c6:                              ; preds = %dec_label_pc_4011b6
  %7 = trunc i64 %1 to i32
  %8 = trunc i64 %2 to i32
  %9 = icmp ugt i32 %7, %8, !insn.addr !10
  br i1 %9, label %dec_label_pc_401217, label %dec_label_pc_4011de, !insn.addr !10

dec_label_pc_4011de:                              ; preds = %dec_label_pc_4011c6
  %10 = ptrtoint i32* %left to i64, !insn.addr !11
  %11 = add i64 %10, 16, !insn.addr !12
  %12 = inttoptr i64 %11 to i64*, !insn.addr !12
  %13 = load i64, i64* %12, align 8, !insn.addr !12
  %14 = inttoptr i64 %13 to i32*, !insn.addr !13
  %15 = call i32* @merge(i32* %14, i32* %right), !insn.addr !13
  %16 = ptrtoint i32* %15 to i64, !insn.addr !13
  store i64 %16, i64* %12, align 8, !insn.addr !14
  %17 = add i64 %16, 8, !insn.addr !15
  %18 = inttoptr i64 %17 to i64*, !insn.addr !15
  store i64 %10, i64* %18, align 8, !insn.addr !15
  store i32* %left, i32** %rax.0.in.reg2mem, !insn.addr !16
  br label %dec_label_pc_401252, !insn.addr !16

dec_label_pc_401217:                              ; preds = %dec_label_pc_4011c6
  %19 = ptrtoint i32* %right to i64, !insn.addr !17
  %20 = add i64 %19, 16, !insn.addr !18
  %21 = inttoptr i64 %20 to i64*, !insn.addr !18
  %22 = load i64, i64* %21, align 8, !insn.addr !18
  %23 = inttoptr i64 %22 to i32*, !insn.addr !19
  %24 = call i32* @merge(i32* %left, i32* %23), !insn.addr !19
  %25 = ptrtoint i32* %24 to i64, !insn.addr !19
  store i64 %25, i64* %21, align 8, !insn.addr !20
  %26 = add i64 %25, 8, !insn.addr !21
  %27 = inttoptr i64 %26 to i64*, !insn.addr !21
  store i64 %19, i64* %27, align 8, !insn.addr !21
  store i32* %right, i32** %rax.0.in.reg2mem, !insn.addr !21
  br label %dec_label_pc_401252, !insn.addr !21

dec_label_pc_401252:                              ; preds = %dec_label_pc_4011de, %dec_label_pc_401217, %dec_label_pc_4011b6, %dec_label_pc_401196
  %rax.0.in.reload = load i32*, i32** %rax.0.in.reg2mem
  ret i32* %rax.0.in.reload, !insn.addr !22

; uselistorder directives
  uselistorder i64 %19, { 1, 0 }
  uselistorder i64 %10, { 1, 0 }
  uselistorder i32** %rax.0.in.reg2mem, { 0, 2, 1, 3, 4 }
  uselistorder i64* %0, { 1, 0 }
  uselistorder i32* %right, { 0, 3, 2, 4, 1 }
  uselistorder i32* %left, { 3, 0, 2, 1, 4 }
  uselistorder label %dec_label_pc_401252, { 1, 0, 2, 3 }
}

define i32* @mergeSort(i32* %head) local_unnamed_addr {
dec_label_pc_401254:
  %storemerge.in.reg2mem = alloca i32*, !insn.addr !23
  %.reg2mem11 = alloca i32*, !insn.addr !23
  %storemerge2.in6.reg2mem = alloca i64, !insn.addr !23
  %.reg2mem = alloca i32*, !insn.addr !23
  %0 = icmp eq i32* %head, null, !insn.addr !24
  store i32* null, i32** %storemerge.in.reg2mem, !insn.addr !25
  br i1 %0, label %dec_label_pc_401322, label %dec_label_pc_401267, !insn.addr !25

dec_label_pc_401267:                              ; preds = %dec_label_pc_401254
  %1 = ptrtoint i32* %head to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to i64*
  %4 = load i64, i64* %3, align 8, !insn.addr !26
  %5 = icmp eq i64 %4, 0, !insn.addr !27
  %6 = icmp eq i1 %5, false, !insn.addr !28
  store i32* %head, i32** %.reg2mem, !insn.addr !28
  store i64 %4, i64* %storemerge2.in6.reg2mem, !insn.addr !28
  store i32* %head, i32** %storemerge.in.reg2mem, !insn.addr !28
  br i1 %6, label %dec_label_pc_4012b6, label %dec_label_pc_401322, !insn.addr !28

dec_label_pc_401293:                              ; preds = %dec_label_pc_4012b6
  %7 = ptrtoint i32* %.reload to i64, !insn.addr !29
  %8 = add i64 %7, 16, !insn.addr !30
  %9 = inttoptr i64 %8 to i64*, !insn.addr !30
  %10 = load i64, i64* %9, align 8, !insn.addr !30
  %11 = inttoptr i64 %10 to i32*
  %storemerge2.in.in.in = add i64 %15, 16
  %storemerge2.in.in = inttoptr i64 %storemerge2.in.in.in to i64*
  %storemerge2.in = load i64, i64* %storemerge2.in.in, align 8
  %12 = icmp eq i64 %storemerge2.in, 0, !insn.addr !31
  store i32* %11, i32** %.reg2mem, !insn.addr !32
  store i64 %storemerge2.in, i64* %storemerge2.in6.reg2mem, !insn.addr !32
  store i32* %11, i32** %.reg2mem11, !insn.addr !32
  br i1 %12, label %dec_label_pc_4012c3, label %dec_label_pc_4012b6, !insn.addr !32

dec_label_pc_4012b6:                              ; preds = %dec_label_pc_401267, %dec_label_pc_401293
  %storemerge2.in6.reload = load i64, i64* %storemerge2.in6.reg2mem
  %.reload = load i32*, i32** %.reg2mem
  %13 = add i64 %storemerge2.in6.reload, 16, !insn.addr !33
  %14 = inttoptr i64 %13 to i64*, !insn.addr !33
  %15 = load i64, i64* %14, align 8, !insn.addr !33
  %16 = icmp eq i64 %15, 0, !insn.addr !34
  %17 = icmp eq i1 %16, false, !insn.addr !35
  store i32* %.reload, i32** %.reg2mem11, !insn.addr !35
  br i1 %17, label %dec_label_pc_401293, label %dec_label_pc_4012c3, !insn.addr !35

dec_label_pc_4012c3:                              ; preds = %dec_label_pc_4012b6, %dec_label_pc_401293
  %.reload12 = load i32*, i32** %.reg2mem11, !insn.addr !36
  %18 = ptrtoint i32* %.reload12 to i64, !insn.addr !37
  %19 = add i64 %18, 16, !insn.addr !38
  %20 = inttoptr i64 %19 to i64*, !insn.addr !38
  %21 = load i64, i64* %20, align 8, !insn.addr !38
  %22 = inttoptr i64 %21 to i32*, !insn.addr !39
  store i64 0, i64* %20, align 8, !insn.addr !40
  %23 = add i64 %21, 8, !insn.addr !41
  %24 = inttoptr i64 %23 to i64*, !insn.addr !41
  store i64 0, i64* %24, align 8, !insn.addr !41
  %25 = call i32* @mergeSort(i32* nonnull %head), !insn.addr !42
  %26 = call i32* @mergeSort(i32* %22), !insn.addr !43
  %27 = call i32* @merge(i32* %25, i32* %26), !insn.addr !44
  store i32* %27, i32** %storemerge.in.reg2mem, !insn.addr !44
  br label %dec_label_pc_401322, !insn.addr !44

dec_label_pc_401322:                              ; preds = %dec_label_pc_401254, %dec_label_pc_401267, %dec_label_pc_4012c3
  %storemerge.in.reload = load i32*, i32** %storemerge.in.reg2mem
  ret i32* %storemerge.in.reload, !insn.addr !45

; uselistorder directives
  uselistorder i64 %15, { 1, 0 }
  uselistorder i32** %.reg2mem, { 0, 2, 1 }
  uselistorder i64* %storemerge2.in6.reg2mem, { 0, 2, 1 }
  uselistorder i32** %storemerge.in.reg2mem, { 0, 3, 2, 1 }
  uselistorder i32* (i32*, i32*)* @merge, { 2, 1, 0 }
  uselistorder i32* %head, { 2, 0, 1, 3, 4 }
  uselistorder label %dec_label_pc_401322, { 2, 1, 0 }
  uselistorder label %dec_label_pc_4012b6, { 1, 0 }
}

define void @printList(i32* %head) local_unnamed_addr {
dec_label_pc_401324:
  %storemerge2.reg2mem = alloca i32*, !insn.addr !46
  %0 = icmp eq i32* %head, null, !insn.addr !47
  %1 = icmp eq i1 %0, false, !insn.addr !48
  store i32* %head, i32** %storemerge2.reg2mem, !insn.addr !48
  br i1 %1, label %dec_label_pc_40133a, label %dec_label_pc_401364, !insn.addr !48

dec_label_pc_40133a:                              ; preds = %dec_label_pc_401324, %dec_label_pc_40133a
  %storemerge2.reload = load i32*, i32** %storemerge2.reg2mem
  %2 = load i32, i32* %storemerge2.reload, align 4, !insn.addr !49
  %3 = zext i32 %2 to i64, !insn.addr !50
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_402010, i64 0, i64 0), i64 %3), !insn.addr !51
  %5 = ptrtoint i32* %storemerge2.reload to i64, !insn.addr !52
  %6 = add i64 %5, 16, !insn.addr !53
  %7 = inttoptr i64 %6 to i64*, !insn.addr !53
  %8 = load i64, i64* %7, align 8, !insn.addr !53
  %9 = inttoptr i64 %8 to i32*, !insn.addr !54
  %10 = icmp eq i64 %8, 0, !insn.addr !47
  %11 = icmp eq i1 %10, false, !insn.addr !48
  store i32* %9, i32** %storemerge2.reg2mem, !insn.addr !48
  br i1 %11, label %dec_label_pc_40133a, label %dec_label_pc_401364, !insn.addr !48

dec_label_pc_401364:                              ; preds = %dec_label_pc_40133a, %dec_label_pc_401324
  %12 = call i32 @putchar(i32 10), !insn.addr !55
  ret void, !insn.addr !56

; uselistorder directives
  uselistorder i32* %storemerge2.reload, { 1, 0 }
  uselistorder i32** %storemerge2.reg2mem, { 2, 0, 1 }
  uselistorder label %dec_label_pc_40133a, { 1, 0 }
}

define void @freeList(i32* %head) local_unnamed_addr {
dec_label_pc_401371:
  %temp_-32.01.reg2mem = alloca i32*, !insn.addr !57
  %0 = icmp eq i32* %head, null, !insn.addr !58
  %1 = icmp eq i1 %0, false, !insn.addr !59
  store i32* %head, i32** %temp_-32.01.reg2mem, !insn.addr !59
  br i1 %1, label %dec_label_pc_40137f, label %dec_label_pc_4013a6, !insn.addr !59

dec_label_pc_40137f:                              ; preds = %dec_label_pc_401371, %dec_label_pc_40137f
  %temp_-32.01.reload = load i32*, i32** %temp_-32.01.reg2mem
  %2 = ptrtoint i32* %temp_-32.01.reload to i64, !insn.addr !60
  %3 = add i64 %2, 16, !insn.addr !61
  %4 = inttoptr i64 %3 to i64*, !insn.addr !61
  %5 = load i64, i64* %4, align 8, !insn.addr !61
  %6 = inttoptr i64 %5 to i32*, !insn.addr !62
  %7 = bitcast i32* %temp_-32.01.reload to i64*, !insn.addr !63
  call void @free(i64* %7), !insn.addr !63
  %8 = icmp eq i64 %5, 0, !insn.addr !58
  %9 = icmp eq i1 %8, false, !insn.addr !59
  store i32* %6, i32** %temp_-32.01.reg2mem, !insn.addr !59
  br i1 %9, label %dec_label_pc_40137f, label %dec_label_pc_4013a6, !insn.addr !59

dec_label_pc_4013a6:                              ; preds = %dec_label_pc_40137f, %dec_label_pc_401371
  ret void, !insn.addr !64

; uselistorder directives
  uselistorder i32* %temp_-32.01.reload, { 1, 0 }
  uselistorder i32** %temp_-32.01.reg2mem, { 2, 0, 1 }
  uselistorder i1 false, { 2, 0, 3, 1, 4, 5, 6, 7 }
  uselistorder i32* null, { 1, 2, 0, 3, 4, 5 }
  uselistorder label %dec_label_pc_40137f, { 1, 0 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_4013aa:
  %0 = call i32* @createNode(i32 5), !insn.addr !65
  %1 = ptrtoint i32* %0 to i64, !insn.addr !65
  %2 = call i32* @createNode(i32 3), !insn.addr !66
  %3 = ptrtoint i32* %2 to i64, !insn.addr !66
  %4 = add i64 %1, 16, !insn.addr !67
  %5 = inttoptr i64 %4 to i64*, !insn.addr !67
  store i64 %3, i64* %5, align 8, !insn.addr !67
  %6 = add i64 %3, 8, !insn.addr !68
  %7 = inttoptr i64 %6 to i64*, !insn.addr !68
  store i64 %1, i64* %7, align 8, !insn.addr !68
  %8 = load i64, i64* %5, align 8, !insn.addr !69
  %9 = call i32* @createNode(i32 9), !insn.addr !70
  %10 = ptrtoint i32* %9 to i64, !insn.addr !70
  %11 = add i64 %8, 16, !insn.addr !71
  %12 = inttoptr i64 %11 to i64*, !insn.addr !71
  store i64 %10, i64* %12, align 8, !insn.addr !71
  %13 = load i64, i64* %5, align 8, !insn.addr !72
  %14 = add i64 %13, 16, !insn.addr !73
  %15 = inttoptr i64 %14 to i64*, !insn.addr !73
  %16 = load i64, i64* %15, align 8, !insn.addr !73
  %17 = add i64 %16, 8, !insn.addr !74
  %18 = inttoptr i64 %17 to i64*, !insn.addr !74
  store i64 %13, i64* %18, align 8, !insn.addr !74
  %19 = load i64, i64* %5, align 8, !insn.addr !75
  %20 = add i64 %19, 16, !insn.addr !76
  %21 = inttoptr i64 %20 to i64*, !insn.addr !76
  %22 = load i64, i64* %21, align 8, !insn.addr !76
  %23 = call i32* @createNode(i32 1), !insn.addr !77
  %24 = ptrtoint i32* %23 to i64, !insn.addr !77
  %25 = add i64 %22, 16, !insn.addr !78
  %26 = inttoptr i64 %25 to i64*, !insn.addr !78
  store i64 %24, i64* %26, align 8, !insn.addr !78
  %27 = load i64, i64* %5, align 8, !insn.addr !79
  %28 = add i64 %27, 16, !insn.addr !80
  %29 = inttoptr i64 %28 to i64*, !insn.addr !80
  %30 = load i64, i64* %29, align 8, !insn.addr !80
  %31 = add i64 %30, 16, !insn.addr !81
  %32 = inttoptr i64 %31 to i64*, !insn.addr !81
  %33 = load i64, i64* %32, align 8, !insn.addr !81
  %34 = add i64 %33, 8, !insn.addr !82
  %35 = inttoptr i64 %34 to i64*, !insn.addr !82
  store i64 %30, i64* %35, align 8, !insn.addr !82
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_402014, i64 0, i64 0)), !insn.addr !83
  call void @printList(i32* %0), !insn.addr !84
  %37 = call i32* @mergeSort(i32* %0), !insn.addr !85
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_var_402024, i64 0, i64 0)), !insn.addr !86
  call void @printList(i32* %37), !insn.addr !87
  call void @freeList(i32* %37), !insn.addr !88
  ret i32 0, !insn.addr !89

; uselistorder directives
  uselistorder i32* (i32*)* @mergeSort, { 2, 1, 0 }
  uselistorder void (i32*)* @printList, { 1, 0 }
  uselistorder i32 (i8*, ...)* @printf, { 1, 0, 2 }
  uselistorder i64 0, { 2, 3, 4, 5, 0, 1, 6, 7, 10, 11, 12, 8, 13, 14, 15, 9 }
  uselistorder i32 1, { 8, 1, 2, 6, 5, 4, 3, 7, 0 }
  uselistorder i64 16, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 0, 10, 13, 14, 15, 16 }
  uselistorder i32* (i32)* @createNode, { 3, 2, 1, 0 }
}

declare void @free(i64*) local_unnamed_addr

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

!0 = !{i64 4198758}
!1 = !{i64 4198774}
!2 = !{i64 4198780}
!3 = !{i64 4198792}
!4 = !{i64 4198805}
!5 = !{i64 4198806}
!6 = !{i64 4198822}
!7 = !{i64 4198827}
!8 = !{i64 4198838}
!9 = !{i64 4198843}
!10 = !{i64 4198876}
!11 = !{i64 4198878}
!12 = !{i64 4198890}
!13 = !{i64 4198904}
!14 = !{i64 4198913}
!15 = !{i64 4198929}
!16 = !{i64 4198933}
!17 = !{i64 4198935}
!18 = !{i64 4198947}
!19 = !{i64 4198961}
!20 = !{i64 4198970}
!21 = !{i64 4198986}
!22 = !{i64 4198995}
!23 = !{i64 4198996}
!24 = !{i64 4199008}
!25 = !{i64 4199013}
!26 = !{i64 4199019}
!27 = !{i64 4199023}
!28 = !{i64 4199026}
!29 = !{i64 4199059}
!30 = !{i64 4199063}
!31 = !{i64 4199087}
!32 = !{i64 4199092}
!33 = !{i64 4199098}
!34 = !{i64 4199102}
!35 = !{i64 4199105}
!36 = !{i64 4199107}
!37 = !{i64 4199115}
!38 = !{i64 4199119}
!39 = !{i64 4199123}
!40 = !{i64 4199131}
!41 = !{i64 4199143}
!42 = !{i64 4199158}
!43 = !{i64 4199174}
!44 = !{i64 4199197}
!45 = !{i64 4199203}
!46 = !{i64 4199204}
!47 = !{i64 4199261}
!48 = !{i64 4199266}
!49 = !{i64 4199230}
!50 = !{i64 4199232}
!51 = !{i64 4199244}
!52 = !{i64 4199249}
!53 = !{i64 4199253}
!54 = !{i64 4199257}
!55 = !{i64 4199273}
!56 = !{i64 4199280}
!57 = !{i64 4199281}
!58 = !{i64 4199327}
!59 = !{i64 4199332}
!60 = !{i64 4199303}
!61 = !{i64 4199307}
!62 = !{i64 4199311}
!63 = !{i64 4199322}
!64 = !{i64 4199337}
!65 = !{i64 4199352}
!66 = !{i64 4199366}
!67 = !{i64 4199375}
!68 = !{i64 4199391}
!69 = !{i64 4199399}
!70 = !{i64 4199408}
!71 = !{i64 4199413}
!72 = !{i64 4199421}
!73 = !{i64 4199425}
!74 = !{i64 4199437}
!75 = !{i64 4199445}
!76 = !{i64 4199449}
!77 = !{i64 4199458}
!78 = !{i64 4199463}
!79 = !{i64 4199471}
!80 = !{i64 4199483}
!81 = !{i64 4199487}
!82 = !{i64 4199495}
!83 = !{i64 4199509}
!84 = !{i64 4199521}
!85 = !{i64 4199533}
!86 = !{i64 4199552}
!87 = !{i64 4199564}
!88 = !{i64 4199576}
!89 = !{i64 4199591}
