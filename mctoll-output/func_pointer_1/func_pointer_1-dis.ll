; ModuleID = 'func_pointer_1'
source_filename = "func_pointer_1"

@rodata_16 = private unnamed_addr constant [30 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00Hello, World!\00", align 8, !ROData_SecInfo !0

declare dso_local i32 @puts(ptr)

define dso_local i32 @greet() {
entry:
  %RSP_P.0 = alloca i64, align 1
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %EAX = call i32 @puts(ptr getelementptr inbounds ([30 x i8], ptr @rodata_16, i32 0, i32 16))
  ret i32 %EAX
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
  store ptr @greet, ptr %RBP_N.8, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %2 = inttoptr i64 %memload to ptr
  %RAX = call i32 %2()
  ret i32 0
}

!0 = !{i64 4202496}
