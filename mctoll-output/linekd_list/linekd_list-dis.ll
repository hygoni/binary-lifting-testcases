; ModuleID = 'linekd_list'
source_filename = "linekd_list"

@rodata_16 = private unnamed_addr constant [89 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00Memory allocation failed.\00%d -> \00NULL\00Linked List: \00Linked list deleted.\00", align 8, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

declare dso_local i32 @puts(ptr)

declare dso_local void @exit(i32)

define dso_local i64 @createNode(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.20, align 1
  %3 = zext i32 16 to i64
  %4 = call ptr @malloc(i64 %3)
  %RAX = ptrtoint ptr %4 to i64
  store i64 %RAX, ptr %RBP_N.8, align 1
  %5 = load i64, ptr %RBP_N.8, align 1
  %6 = sub i64 %5, 0
  %7 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %5, i64 0)
  %CF = extractvalue { i64, i1 } %7, 1
  %ZF = icmp eq i64 %6, 0
  %highbit = and i64 -9223372036854775808, %6
  %SF = icmp ne i64 %highbit, 0
  %8 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 0)
  %OF = extractvalue { i64, i1 } %8, 1
  %9 = and i64 %6, 255
  %10 = call i64 @llvm.ctpop.i64(i64 %9)
  %11 = and i64 %10, 1
  %PF = icmp eq i64 %11, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %EAX = call i32 @puts(ptr getelementptr inbounds ([89 x i8], ptr @rodata_16, i32 0, i32 16))
  tail call void @exit(i32 1)
  unreachable

bb.2:                                             ; preds = %entry
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i32, ptr %RBP_N.20, align 1
  %12 = inttoptr i64 %memload to ptr
  store i32 %memload1, ptr %12, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memref-disp = add i64 %memload2, 8
  %13 = inttoptr i64 %memref-disp to ptr
  %14 = sext i32 0 to i64
  store i64 %14, ptr %13, align 1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload3
}

define dso_local i64 @insertAtBeginning(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.24, align 1
  %3 = ptrtoint ptr %stktop_8 to i64
  %4 = add i64 %3, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 %arg2, ptr %5, align 1
  %6 = ptrtoint ptr %stktop_8 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  %memload = load i32, ptr %8, align 1
  %RAX = call i64 @createNode(i32 %memload)
  store i64 %RAX, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %9 = inttoptr i64 %memload1 to ptr
  %memload2 = load i64, ptr %9, align 1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memref-disp = add i64 %memload3, 8
  %10 = inttoptr i64 %memref-disp to ptr
  store i64 %memload2, ptr %10, align 1
  %memload4 = load i64, ptr %RBP_N.24, align 1
  %memload5 = load i64, ptr %RBP_N.8, align 1
  %11 = inttoptr i64 %memload4 to ptr
  store i64 %memload5, ptr %11, align 1
  ret i64 %memload4
}

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @displayList(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  store i64 %memload, ptr %RBP_N.8, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %3 = load i64, ptr %RBP_N.8, align 1
  %4 = sub i64 %3, 0
  %5 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %3, i64 0)
  %CF = extractvalue { i64, i1 } %5, 1
  %ZF = icmp eq i64 %4, 0
  %highbit = and i64 -9223372036854775808, %4
  %SF = icmp ne i64 %highbit, 0
  %6 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 0)
  %OF = extractvalue { i64, i1 } %6, 1
  %7 = and i64 %4, 255
  %8 = call i64 @llvm.ctpop.i64(i64 %7)
  %9 = and i64 %8, 1
  %PF = icmp eq i64 %9, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  %EAX = call i32 @puts(ptr getelementptr inbounds ([89 x i8], ptr @rodata_16, i32 0, i32 49))
  ret i32 %EAX

bb.1:                                             ; preds = %bb.2
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %10 = inttoptr i64 %memload1 to ptr
  %memload2 = load i32, ptr %10, align 1
  %EAX3 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([89 x i8], ptr @rodata_16, i32 0, i32 42), i32 %memload2)
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memref-disp = add i64 %memload4, 8
  %11 = inttoptr i64 %memref-disp to ptr
  %memload5 = load i64, ptr %11, align 1
  store i64 %memload5, ptr %RBP_N.8, align 1
  br label %bb.2
}

declare dso_local void @free(ptr)

define dso_local i64 @deleteList(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %4 = inttoptr i64 %memload to ptr
  %memload1 = load i64, ptr %4, align 1
  store i64 %memload1, ptr %RBP_N.8, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %5 = load i64, ptr %RBP_N.8, align 1
  %6 = sub i64 %5, 0
  %7 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %5, i64 0)
  %CF = extractvalue { i64, i1 } %7, 1
  %ZF = icmp eq i64 %6, 0
  %highbit = and i64 -9223372036854775808, %6
  %SF = icmp ne i64 %highbit, 0
  %8 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 0)
  %OF = extractvalue { i64, i1 } %8, 1
  %9 = and i64 %6, 255
  %10 = call i64 @llvm.ctpop.i64(i64 %9)
  %11 = and i64 %10, 1
  %PF = icmp eq i64 %11, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.1, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload2 = load i64, ptr %RBP_N.24, align 1
  %12 = inttoptr i64 %memload2 to ptr
  %13 = sext i32 0 to i64
  store i64 %13, ptr %12, align 1
  ret i64 %memload2

bb.1:                                             ; preds = %bb.2
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memref-disp = add i64 %memload3, 8
  %14 = inttoptr i64 %memref-disp to ptr
  %memload4 = load i64, ptr %14, align 1
  store i64 %memload4, ptr %RBP_N.16, align 1
  %memload5 = load i64, ptr %RBP_N.8, align 1
  %15 = inttoptr i64 %memload5 to ptr
  call void @free(ptr %15)
  %memload6 = load i64, ptr %RBP_N.16, align 1
  store i64 %memload6, ptr %RBP_N.8, align 1
  br label %bb.2
}

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %2 = sext i32 0 to i64
  store i64 %2, ptr %RBP_N.8, align 1
  %RAX = ptrtoint ptr %RBP_N.8 to i64
  %RAX1 = call i64 @insertAtBeginning(i64 %RAX, i32 3)
  %RAX2 = ptrtoint ptr %RBP_N.8 to i64
  %RAX3 = call i64 @insertAtBeginning(i64 %RAX2, i32 5)
  %RAX4 = ptrtoint ptr %RBP_N.8 to i64
  %RAX5 = call i64 @insertAtBeginning(i64 %RAX4, i32 7)
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([89 x i8], ptr @rodata_16, i32 0, i32 54))
  %memload = load i64, ptr %RBP_N.8, align 1
  %EAX6 = call i32 @displayList(i64 %memload)
  %RAX7 = ptrtoint ptr %RBP_N.8 to i64
  %RAX8 = call i64 @deleteList(i64 %RAX7)
  %EAX9 = call i32 @puts(ptr getelementptr inbounds ([89 x i8], ptr @rodata_16, i32 0, i32 68))
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 4202496}
