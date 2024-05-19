; ModuleID = 'struct_1'
source_filename = "struct_1"

@rodata_16 = private unnamed_addr constant [19 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00%s\00", align 8, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

declare dso_local i32 @printf(ptr, ...)

declare dso_local void @free(ptr)

define dso_local i32 @main() {
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
  %4 = zext i32 48 to i64
  %5 = call ptr @malloc(i64 %4)
  %RAX = ptrtoint ptr %5 to i64
  store i64 %RAX, ptr %RBP_N.8, align 1
  %6 = zext i32 48 to i64
  %7 = call ptr @malloc(i64 %6)
  %RAX1 = ptrtoint ptr %7 to i64
  store i64 %RAX1, ptr %RBP_N.16, align 1
  %8 = zext i32 48 to i64
  %9 = call ptr @malloc(i64 %8)
  %RAX2 = ptrtoint ptr %9 to i64
  store i64 %RAX2, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %10 = inttoptr i64 %memload to ptr
  store i64 2851464966991703, ptr %10, align 1
  %memload3 = load i64, ptr %RBP_N.16, align 1
  %11 = inttoptr i64 %memload3 to ptr
  store i64 9056056326776136, ptr %11, align 1
  %memload4 = load i64, ptr %RBP_N.24, align 1
  %12 = inttoptr i64 %memload4 to ptr
  store i64 2338328219631577172, ptr %12, align 1
  %memref-disp = add i64 %memload4, 8
  %13 = inttoptr i64 %memref-disp to ptr
  store i64 729976100997046369, ptr %13, align 1
  %memref-disp5 = add i64 %memload4, 16
  %14 = inttoptr i64 %memref-disp5 to ptr
  store i8 0, ptr %14, align 1
  %memload6 = load i64, ptr %RBP_N.8, align 1
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memref-disp8 = add i64 %memload6, 32
  %15 = inttoptr i64 %memref-disp8 to ptr
  store i64 %memload7, ptr %15, align 1
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %memload10 = load i64, ptr %RBP_N.24, align 1
  %memref-disp11 = add i64 %memload9, 40
  %16 = inttoptr i64 %memref-disp11 to ptr
  store i64 %memload10, ptr %16, align 1
  %memload12 = load i64, ptr %RBP_N.8, align 1
  %memref-disp13 = add i64 %memload12, 32
  %17 = inttoptr i64 %memref-disp13 to ptr
  %memload14 = load i64, ptr %17, align 1
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([19 x i8], ptr @rodata_16, i32 0, i32 16), i64 %memload14, i64 %memload10, i64 9056056326776136)
  %memload15 = load i64, ptr %RBP_N.8, align 1
  %EAX16 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([19 x i8], ptr @rodata_16, i32 0, i32 16), i64 %memload15)
  %memload17 = load i64, ptr %RBP_N.8, align 1
  %memref-disp18 = add i64 %memload17, 40
  %18 = inttoptr i64 %memref-disp18 to ptr
  %memload19 = load i64, ptr %18, align 1
  %EAX20 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([19 x i8], ptr @rodata_16, i32 0, i32 16), i64 %memload19)
  %memload21 = load i64, ptr %RBP_N.8, align 1
  %19 = inttoptr i64 %memload21 to ptr
  call void @free(ptr %19)
  %memload22 = load i64, ptr %RBP_N.16, align 1
  %20 = inttoptr i64 %memload22 to ptr
  call void @free(ptr %20)
  %memload23 = load i64, ptr %RBP_N.24, align 1
  %21 = inttoptr i64 %memload23 to ptr
  call void @free(ptr %21)
  ret i32 0
}

!0 = !{i64 4202496}
