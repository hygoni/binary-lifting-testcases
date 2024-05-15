source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [26 x i8] c"Memory allocation failed.\00"
@global_var_40202a = constant [7 x i8] c"%d -> \00"
@global_var_402031 = constant [5 x i8] c"NULL\00"
@global_var_402036 = constant [14 x i8] c"Linked List: \00"
@global_var_402044 = constant [21 x i8] c"Linked list deleted.\00"

define i32* @createNode(i32 %data) local_unnamed_addr {
dec_label_pc_401166:
  %0 = call i64* @malloc(i32 16), !insn.addr !0
  %1 = icmp eq i64* %0, null, !insn.addr !1
  %2 = icmp eq i1 %1, false, !insn.addr !2
  br i1 %2, label %dec_label_pc_40119a, label %dec_label_pc_401186, !insn.addr !2

dec_label_pc_401186:                              ; preds = %dec_label_pc_401166
  %3 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_var_402010, i64 0, i64 0)), !insn.addr !3
  call void @exit(i32 1), !insn.addr !4
  unreachable, !insn.addr !4

dec_label_pc_40119a:                              ; preds = %dec_label_pc_401166
  %4 = bitcast i64* %0 to i32*
  store i32 %data, i32* %4, align 4, !insn.addr !5
  %5 = ptrtoint i64* %0 to i64, !insn.addr !6
  %6 = add i64 %5, 8, !insn.addr !7
  %7 = inttoptr i64 %6 to i64*, !insn.addr !7
  store i64 0, i64* %7, align 8, !insn.addr !7
  ret i32* %4, !insn.addr !8

; uselistorder directives
  uselistorder i64* %0, { 0, 2, 1 }
}

define void @insertAtBeginning(i32** %head, i32 %data) local_unnamed_addr {
dec_label_pc_4011b5:
  %0 = zext i32 %data to i64, !insn.addr !9
  %1 = call i32* @createNode(i32 %data), !insn.addr !10
  %2 = ptrtoint i32* %1 to i64, !insn.addr !10
  %3 = add i64 %2, 8, !insn.addr !11
  %4 = inttoptr i64 %3 to i64*, !insn.addr !11
  store i64 %0, i64* %4, align 8, !insn.addr !11
  %5 = bitcast i32** %head to i64*, !insn.addr !12
  store i64 %2, i64* %5, align 8, !insn.addr !12
  ret void, !insn.addr !13
}

define void @displayList(i32* %head) local_unnamed_addr {
dec_label_pc_4011ef:
  %storemerge2.reg2mem = alloca i32*, !insn.addr !14
  %0 = icmp eq i32* %head, null, !insn.addr !15
  %1 = icmp eq i1 %0, false, !insn.addr !16
  store i32* %head, i32** %storemerge2.reg2mem, !insn.addr !16
  br i1 %1, label %dec_label_pc_401205, label %dec_label_pc_40122f, !insn.addr !16

dec_label_pc_401205:                              ; preds = %dec_label_pc_4011ef, %dec_label_pc_401205
  %storemerge2.reload = load i32*, i32** %storemerge2.reg2mem
  %2 = load i32, i32* %storemerge2.reload, align 4, !insn.addr !17
  %3 = zext i32 %2 to i64, !insn.addr !18
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_40202a, i64 0, i64 0), i64 %3), !insn.addr !19
  %5 = ptrtoint i32* %storemerge2.reload to i64, !insn.addr !20
  %6 = add i64 %5, 8, !insn.addr !21
  %7 = inttoptr i64 %6 to i64*, !insn.addr !21
  %8 = load i64, i64* %7, align 8, !insn.addr !21
  %9 = inttoptr i64 %8 to i32*, !insn.addr !22
  %10 = icmp eq i64 %8, 0, !insn.addr !15
  %11 = icmp eq i1 %10, false, !insn.addr !16
  store i32* %9, i32** %storemerge2.reg2mem, !insn.addr !16
  br i1 %11, label %dec_label_pc_401205, label %dec_label_pc_40122f, !insn.addr !16

dec_label_pc_40122f:                              ; preds = %dec_label_pc_401205, %dec_label_pc_4011ef
  %12 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_var_402031, i64 0, i64 0)), !insn.addr !23
  ret void, !insn.addr !24

; uselistorder directives
  uselistorder i32* %storemerge2.reload, { 1, 0 }
  uselistorder i32** %storemerge2.reg2mem, { 2, 0, 1 }
  uselistorder label %dec_label_pc_401205, { 1, 0 }
}

define void @deleteList(i32** %head) local_unnamed_addr {
dec_label_pc_40123c:
  %storemerge2.reg2mem = alloca i32*, !insn.addr !25
  %0 = icmp eq i32** %head, null, !insn.addr !26
  %1 = icmp eq i1 %0, false, !insn.addr !27
  br i1 %1, label %dec_label_pc_401255.lr.ph, label %dec_label_pc_40127c, !insn.addr !27

dec_label_pc_401255.lr.ph:                        ; preds = %dec_label_pc_40123c
  %2 = bitcast i32** %head to i32*, !insn.addr !28
  store i32* %2, i32** %storemerge2.reg2mem
  br label %dec_label_pc_401255

dec_label_pc_401255:                              ; preds = %dec_label_pc_401255.lr.ph, %dec_label_pc_401255
  %storemerge2.reload = load i32*, i32** %storemerge2.reg2mem
  %3 = ptrtoint i32* %storemerge2.reload to i64, !insn.addr !29
  %4 = add i64 %3, 8, !insn.addr !30
  %5 = inttoptr i64 %4 to i64*, !insn.addr !30
  %6 = load i64, i64* %5, align 8, !insn.addr !30
  %7 = inttoptr i64 %6 to i32*, !insn.addr !31
  %8 = bitcast i32* %storemerge2.reload to i64*
  call void @free(i64* %8), !insn.addr !32
  %9 = icmp eq i64 %6, 0, !insn.addr !26
  %10 = icmp eq i1 %9, false, !insn.addr !27
  store i32* %7, i32** %storemerge2.reg2mem, !insn.addr !27
  br i1 %10, label %dec_label_pc_401255, label %dec_label_pc_40127c, !insn.addr !27

dec_label_pc_40127c:                              ; preds = %dec_label_pc_401255, %dec_label_pc_40123c
  %11 = bitcast i32** %head to i64*, !insn.addr !33
  store i64 0, i64* %11, align 8, !insn.addr !33
  ret void, !insn.addr !34

; uselistorder directives
  uselistorder i32* %storemerge2.reload, { 1, 0 }
  uselistorder i32** %storemerge2.reg2mem, { 1, 0, 2 }
  uselistorder i1 false, { 2, 0, 3, 1, 4 }
  uselistorder i32** %head, { 1, 2, 0 }
  uselistorder label %dec_label_pc_401255, { 1, 0 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_40128a:
  %stack_var_-16 = alloca i32*, align 8
  store i32* null, i32** %stack_var_-16, align 8, !insn.addr !35
  call void @insertAtBeginning(i32** nonnull %stack_var_-16, i32 3), !insn.addr !36
  call void @insertAtBeginning(i32** nonnull %stack_var_-16, i32 5), !insn.addr !37
  call void @insertAtBeginning(i32** nonnull %stack_var_-16, i32 7), !insn.addr !38
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @global_var_402036, i64 0, i64 0)), !insn.addr !39
  %1 = load i32*, i32** %stack_var_-16, align 8, !insn.addr !40
  call void @displayList(i32* %1), !insn.addr !41
  call void @deleteList(i32** nonnull %stack_var_-16), !insn.addr !42
  %2 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_402044, i64 0, i64 0)), !insn.addr !43
  ret i32 0, !insn.addr !44

; uselistorder directives
  uselistorder i32** %stack_var_-16, { 5, 1, 4, 3, 2, 0 }
  uselistorder i32 (i8*)* @puts, { 2, 1, 0 }
  uselistorder i64 0, { 2, 3, 4, 5, 13, 0, 8, 9, 1, 6, 7, 14, 10, 11, 12 }
  uselistorder void (i32**, i32)* @insertAtBeginning, { 2, 1, 0 }
  uselistorder i32* null, { 1, 0 }
  uselistorder i32 1, { 3, 0, 1, 2 }
}

declare void @free(i64*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

!0 = !{i64 4198774}
!1 = !{i64 4198783}
!2 = !{i64 4198788}
!3 = !{i64 4198795}
!4 = !{i64 4198805}
!5 = !{i64 4198817}
!6 = !{i64 4198819}
!7 = !{i64 4198823}
!8 = !{i64 4198836}
!9 = !{i64 4198855}
!10 = !{i64 4198857}
!11 = !{i64 4198877}
!12 = !{i64 4198889}
!13 = !{i64 4198894}
!14 = !{i64 4198895}
!15 = !{i64 4198952}
!16 = !{i64 4198957}
!17 = !{i64 4198921}
!18 = !{i64 4198923}
!19 = !{i64 4198935}
!20 = !{i64 4198940}
!21 = !{i64 4198944}
!22 = !{i64 4198948}
!23 = !{i64 4198964}
!24 = !{i64 4198971}
!25 = !{i64 4198972}
!26 = !{i64 4199029}
!27 = !{i64 4199034}
!28 = !{i64 4198980}
!29 = !{i64 4198997}
!30 = !{i64 4199001}
!31 = !{i64 4199005}
!32 = !{i64 4199016}
!33 = !{i64 4199040}
!34 = !{i64 4199049}
!35 = !{i64 4199058}
!36 = !{i64 4199078}
!37 = !{i64 4199095}
!38 = !{i64 4199112}
!39 = !{i64 4199127}
!40 = !{i64 4199132}
!41 = !{i64 4199139}
!42 = !{i64 4199151}
!43 = !{i64 4199161}
!44 = !{i64 4199172}
