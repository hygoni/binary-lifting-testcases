; ModuleID = 'pointer_1'
source_filename = "pointer_1"

@rodata_16 = private unnamed_addr constant [30 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00a\EC\9D\98 \EA\B0\92: %d\0A\00", align 8, !ROData_SecInfo !0

define dso_local i64 @increment(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 16, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %0 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %stktop_8, align 1
  %memload = load i64, ptr %stktop_8, align 1
  %1 = inttoptr i64 %memload to ptr
  %memload1 = load i32, ptr %1, align 1
  %memref-disp = add i32 %memload1, 1
  %memload2 = load i64, ptr %stktop_8, align 1
  %2 = inttoptr i64 %memload2 to ptr
  store i32 %memref-disp, ptr %2, align 1
  ret i64 %memload2
}

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 10, ptr %RBP_N.4, align 1
  %RAX = ptrtoint ptr %RBP_N.4 to i64
  %RAX1 = call i64 @increment(i64 %RAX)
  %memload = load i32, ptr %RBP_N.4, align 1
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([30 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload)
  ret i32 0
}

!0 = !{i64 4202496}
