; ModuleID = 'calc_1'
source_filename = "calc_1"

@rodata_16 = private unnamed_addr constant [20 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00%d\0A\00", align 8, !ROData_SecInfo !0

declare dso_local i32 @printf(ptr, ...)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 19
  %RBP_N.5 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 1, ptr %RBP_N.4, align 1
  store i8 2, ptr %RBP_N.5, align 1
  %memload = load i32, ptr %RBP_N.5, align 1
  %3 = trunc i32 %memload to i8
  %EDX = sext i8 %3 to i32
  %memload1 = load i32, ptr %RBP_N.4, align 1
  %EAX = add nsw i32 %memload1, %EDX
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %ZF = icmp eq i32 %EAX, 0
  %4 = ptrtoint ptr %stktop_8 to i64
  %5 = add i64 %4, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 %EAX, ptr %6, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  %memload2 = load i32, ptr %9, align 1
  %EAX3 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([20 x i8], ptr @rodata_16, i32 0, i32 16), i32 %memload2, i32 %EDX)
  ret i32 0
}

!0 = !{i64 4202496}
