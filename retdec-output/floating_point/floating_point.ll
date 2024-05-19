source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_403ff8 = local_unnamed_addr global i64 0
@global_var_402010 = constant [21 x i8] c"x = %.2f, y = %.2f\0A\0A\00"
@global_var_402025 = constant [16 x i8] c"Addition: %.2f\0A\00"
@global_var_402035 = constant [19 x i8] c"Subtraction: %.2f\0A\00"
@global_var_402048 = constant [22 x i8] c"Multiplication: %.2f\0A\00"
@global_var_40205e = constant [11 x i8] c"Division: \00"
@global_var_402069 = constant [6 x i8] c"%.2f\0A\00"
@global_var_40206f = constant [18 x i8] c"Division by zero!\00"

define i32 @main() local_unnamed_addr {
dec_label_pc_401166:
  %0 = alloca i128
  %1 = load i128, i128* %0
  %2 = load i128, i128* %0
  %3 = load i128, i128* %0
  %4 = load i128, i128* %0
  %5 = load i128, i128* %0
  %6 = load i128, i128* %0
  %7 = call i32 @time(i32* null), !insn.addr !0
  call void @srand(i32 %7), !insn.addr !1
  %8 = call i32 @rand(), !insn.addr !2
  %9 = srem i32 %8, 100
  %10 = call i128 @__asm_pxor(i128 %6, i128 %6), !insn.addr !3
  %11 = call i128 @__asm_cvtsi2ss(i32 %9), !insn.addr !4
  %12 = call i64 @__asm_movss(i128 %11), !insn.addr !5
  %13 = trunc i64 %12 to i32, !insn.addr !5
  %14 = call i32 @rand(), !insn.addr !6
  %15 = srem i32 %14, 100
  %16 = trunc i32 %15 to i8, !insn.addr !7
  %17 = call i8 @llvm.ctpop.i8(i8 %16), !range !8, !insn.addr !7
  %18 = urem i8 %17, 2, !insn.addr !7
  %19 = icmp eq i8 %18, 0, !insn.addr !7
  %20 = call i128 @__asm_pxor(i128 %11, i128 %11), !insn.addr !9
  %21 = call i128 @__asm_cvtsi2ss(i32 %15), !insn.addr !10
  %22 = call i64 @__asm_movss(i128 %21), !insn.addr !11
  %23 = trunc i64 %22 to i32, !insn.addr !11
  %24 = call i128 @__asm_pxor(i128 %21, i128 %21), !insn.addr !12
  %25 = call i128 @__asm_cvtss2sd(i32 %23), !insn.addr !13
  %26 = call i128 @__asm_pxor(i128 %5, i128 %5), !insn.addr !14
  %27 = call i128 @__asm_cvtss2sd(i32 %13), !insn.addr !15
  %28 = call i64 @__asm_movq(i128 %27), !insn.addr !16
  %29 = call i128 @__asm_movapd(i128 %25), !insn.addr !17
  %30 = call i128 @__asm_movq.1(i64 %28), !insn.addr !18
  %31 = trunc i128 %30 to i64, !insn.addr !19
  %32 = bitcast i64 %31 to double, !insn.addr !19
  %33 = trunc i128 %29 to i64, !insn.addr !19
  %34 = bitcast i64 %33 to double, !insn.addr !19
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_402010, i64 0, i64 0), double %32, double %34), !insn.addr !19
  %36 = call i128 @__asm_movss.2(i32 %23), !insn.addr !20
  %37 = call i128 @__asm_movaps(i128 %36), !insn.addr !21
  %38 = call i128 @__asm_movd(i32 %13), !insn.addr !22
  %39 = trunc i128 %38 to i32, !insn.addr !23
  %40 = bitcast i32 %39 to float, !insn.addr !23
  %41 = trunc i128 %37 to i32, !insn.addr !23
  %42 = bitcast i32 %41 to float, !insn.addr !23
  %43 = call float @add(float %40, float %42), !insn.addr !23
  %44 = bitcast float %43 to i32, !insn.addr !23
  %45 = sext i32 %44 to i128, !insn.addr !23
  %46 = call i128 @__asm_pxor(i128 %4, i128 %4), !insn.addr !24
  %47 = call i128 @__asm_cvtss2sd.3(i128 %45), !insn.addr !25
  %48 = call i64 @__asm_movq(i128 %47), !insn.addr !26
  %49 = call i128 @__asm_movq.1(i64 %48), !insn.addr !27
  %50 = trunc i128 %49 to i64, !insn.addr !28
  %51 = bitcast i64 %50 to double, !insn.addr !28
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @global_var_402025, i64 0, i64 0), double %51), !insn.addr !28
  %53 = call i128 @__asm_movss.2(i32 %23), !insn.addr !29
  %54 = call i128 @__asm_movaps(i128 %53), !insn.addr !30
  %55 = call i128 @__asm_movd(i32 %13), !insn.addr !31
  %56 = trunc i128 %55 to i32, !insn.addr !32
  %57 = bitcast i32 %56 to float, !insn.addr !32
  %58 = trunc i128 %54 to i32, !insn.addr !32
  %59 = bitcast i32 %58 to float, !insn.addr !32
  %60 = call float @subtract(float %57, float %59), !insn.addr !32
  %61 = bitcast float %60 to i32, !insn.addr !32
  %62 = sext i32 %61 to i128, !insn.addr !32
  %63 = call i128 @__asm_pxor(i128 %3, i128 %3), !insn.addr !33
  %64 = call i128 @__asm_cvtss2sd.3(i128 %62), !insn.addr !34
  %65 = call i64 @__asm_movq(i128 %64), !insn.addr !35
  %66 = call i128 @__asm_movq.1(i64 %65), !insn.addr !36
  %67 = trunc i128 %66 to i64, !insn.addr !37
  %68 = bitcast i64 %67 to double, !insn.addr !37
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @global_var_402035, i64 0, i64 0), double %68), !insn.addr !37
  %70 = call i128 @__asm_movss.2(i32 %23), !insn.addr !38
  %71 = call i128 @__asm_movaps(i128 %70), !insn.addr !39
  %72 = call i128 @__asm_movd(i32 %13), !insn.addr !40
  %73 = trunc i128 %72 to i32, !insn.addr !41
  %74 = bitcast i32 %73 to float, !insn.addr !41
  %75 = trunc i128 %71 to i32, !insn.addr !41
  %76 = bitcast i32 %75 to float, !insn.addr !41
  %77 = call float @multiply(float %74, float %76), !insn.addr !41
  %78 = bitcast float %77 to i32, !insn.addr !41
  %79 = sext i32 %78 to i128, !insn.addr !41
  %80 = call i128 @__asm_pxor(i128 %2, i128 %2), !insn.addr !42
  %81 = call i128 @__asm_cvtss2sd.3(i128 %79), !insn.addr !43
  %82 = call i64 @__asm_movq(i128 %81), !insn.addr !44
  %83 = call i128 @__asm_movq.1(i64 %82), !insn.addr !45
  %84 = trunc i128 %83 to i64, !insn.addr !46
  %85 = bitcast i64 %84 to double, !insn.addr !46
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @global_var_402048, i64 0, i64 0), double %85), !insn.addr !46
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_var_40205e, i64 0, i64 0)), !insn.addr !47
  %88 = call i128 @__asm_pxor(i128 %83, i128 %83), !insn.addr !48
  call void @__asm_ucomiss(i128 %88, i32 %23), !insn.addr !49
  br i1 %19, label %dec_label_pc_4012d2, label %dec_label_pc_4012c8, !insn.addr !50

dec_label_pc_4012c8:                              ; preds = %dec_label_pc_401166
  %89 = icmp eq i32 %15, 0, !insn.addr !7
  %90 = call i128 @__asm_pxor(i128 %88, i128 %88), !insn.addr !51
  call void @__asm_ucomiss(i128 %90, i32 %23), !insn.addr !52
  br i1 %89, label %dec_label_pc_401309, label %dec_label_pc_4012d2, !insn.addr !53

dec_label_pc_4012d2:                              ; preds = %dec_label_pc_4012c8, %dec_label_pc_401166
  %91 = call i128 @__asm_movss.2(i32 %23), !insn.addr !54
  %92 = call i128 @__asm_movaps(i128 %91), !insn.addr !55
  %93 = call i128 @__asm_movd(i32 %13), !insn.addr !56
  %94 = trunc i128 %93 to i32, !insn.addr !57
  %95 = bitcast i32 %94 to float, !insn.addr !57
  %96 = trunc i128 %92 to i32, !insn.addr !57
  %97 = bitcast i32 %96 to float, !insn.addr !57
  %98 = call float @divide(float %95, float %97), !insn.addr !57
  %99 = bitcast float %98 to i32, !insn.addr !57
  %100 = sext i32 %99 to i128, !insn.addr !57
  %101 = call i128 @__asm_pxor(i128 %1, i128 %1), !insn.addr !58
  %102 = call i128 @__asm_cvtss2sd.3(i128 %100), !insn.addr !59
  %103 = call i64 @__asm_movq(i128 %102), !insn.addr !60
  %104 = call i128 @__asm_movq.1(i64 %103), !insn.addr !61
  %105 = trunc i128 %104 to i64, !insn.addr !62
  %106 = bitcast i64 %105 to double, !insn.addr !62
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_var_402069, i64 0, i64 0), double %106), !insn.addr !62
  br label %dec_label_pc_401313, !insn.addr !63

dec_label_pc_401309:                              ; preds = %dec_label_pc_4012c8
  %108 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @global_var_40206f, i64 0, i64 0)), !insn.addr !64
  br label %dec_label_pc_401313, !insn.addr !64

dec_label_pc_401313:                              ; preds = %dec_label_pc_401309, %dec_label_pc_4012d2
  ret i32 0, !insn.addr !65

; uselistorder directives
  uselistorder i128 %88, { 1, 0, 2 }
  uselistorder i128 %83, { 2, 1, 0 }
  uselistorder i32 %23, { 1, 0, 6, 5, 4, 3, 2 }
  uselistorder i128 %21, { 2, 1, 0 }
  uselistorder i32 %15, { 1, 2, 0 }
  uselistorder i128 %11, { 2, 1, 0 }
  uselistorder i128* %0, { 5, 4, 3, 2, 1, 0 }
  uselistorder i32 (i8*, ...)* @printf, { 5, 4, 3, 2, 1, 0 }
}

define float @add(float %a, float %b) local_unnamed_addr {
dec_label_pc_40131a:
  %0 = bitcast float %b to i32
  %1 = sext i32 %0 to i128
  %2 = bitcast float %a to i32
  %3 = sext i32 %2 to i128
  %4 = call i64 @__asm_movss(i128 %3), !insn.addr !66
  %5 = trunc i64 %4 to i32, !insn.addr !66
  %6 = call i64 @__asm_movss(i128 %1), !insn.addr !67
  %7 = trunc i64 %6 to i32, !insn.addr !67
  %8 = call i128 @__asm_movss.2(i32 %5), !insn.addr !68
  %9 = call i128 @__asm_addss(i128 %8, i32 %7), !insn.addr !69
  %10 = trunc i128 %9 to i32, !insn.addr !70
  %11 = bitcast i32 %10 to float, !insn.addr !70
  ret float %11, !insn.addr !70
}

define float @subtract(float %a, float %b) local_unnamed_addr {
dec_label_pc_401334:
  %0 = bitcast float %b to i32
  %1 = sext i32 %0 to i128
  %2 = bitcast float %a to i32
  %3 = sext i32 %2 to i128
  %4 = call i64 @__asm_movss(i128 %3), !insn.addr !71
  %5 = trunc i64 %4 to i32, !insn.addr !71
  %6 = call i64 @__asm_movss(i128 %1), !insn.addr !72
  %7 = trunc i64 %6 to i32, !insn.addr !72
  %8 = call i128 @__asm_movss.2(i32 %5), !insn.addr !73
  %9 = call i128 @__asm_subss(i128 %8, i32 %7), !insn.addr !74
  %10 = trunc i128 %9 to i32, !insn.addr !75
  %11 = bitcast i32 %10 to float, !insn.addr !75
  ret float %11, !insn.addr !75
}

define float @multiply(float %a, float %b) local_unnamed_addr {
dec_label_pc_40134e:
  %0 = bitcast float %b to i32
  %1 = sext i32 %0 to i128
  %2 = bitcast float %a to i32
  %3 = sext i32 %2 to i128
  %4 = call i64 @__asm_movss(i128 %3), !insn.addr !76
  %5 = trunc i64 %4 to i32, !insn.addr !76
  %6 = call i64 @__asm_movss(i128 %1), !insn.addr !77
  %7 = trunc i64 %6 to i32, !insn.addr !77
  %8 = call i128 @__asm_movss.2(i32 %5), !insn.addr !78
  %9 = call i128 @__asm_mulss(i128 %8, i32 %7), !insn.addr !79
  %10 = trunc i128 %9 to i32, !insn.addr !80
  %11 = bitcast i32 %10 to float, !insn.addr !80
  ret float %11, !insn.addr !80
}

define float @divide(float %a, float %b) local_unnamed_addr {
dec_label_pc_401368:
  %0 = alloca i1
  %storemerge.off0.reg2mem = alloca i32, !insn.addr !81
  %1 = load i1, i1* %0
  %2 = load i1, i1* %0
  %3 = bitcast float %b to i32
  %4 = sext i32 %3 to i128
  %5 = bitcast float %a to i32
  %6 = sext i32 %5 to i128
  %7 = call i64 @__asm_movss(i128 %6), !insn.addr !82
  %8 = call i64 @__asm_movss(i128 %4), !insn.addr !83
  %9 = trunc i64 %8 to i32, !insn.addr !83
  %10 = call i128 @__asm_pxor(i128 %6, i128 %6), !insn.addr !84
  call void @__asm_ucomiss(i128 %10, i32 %9), !insn.addr !85
  br i1 %2, label %dec_label_pc_40138a, label %dec_label_pc_401380, !insn.addr !86

dec_label_pc_401380:                              ; preds = %dec_label_pc_401368
  %11 = call i128 @__asm_pxor(i128 %10, i128 %10), !insn.addr !87
  call void @__asm_ucomiss(i128 %11, i32 %9), !insn.addr !88
  br i1 %1, label %dec_label_pc_401396, label %dec_label_pc_40138a, !insn.addr !89

dec_label_pc_40138a:                              ; preds = %dec_label_pc_401380, %dec_label_pc_401368
  %12 = trunc i64 %7 to i32, !insn.addr !82
  %13 = call i128 @__asm_movss.2(i32 %12), !insn.addr !90
  %14 = call i128 @__asm_divss(i128 %13, i32 %9), !insn.addr !91
  %extract.t1 = trunc i128 %14 to i32
  store i32 %extract.t1, i32* %storemerge.off0.reg2mem, !insn.addr !92
  br label %dec_label_pc_40139a, !insn.addr !92

dec_label_pc_401396:                              ; preds = %dec_label_pc_401380
  %15 = call i128 @__asm_pxor(i128 %11, i128 %11), !insn.addr !93
  %extract.t = trunc i128 %15 to i32
  store i32 %extract.t, i32* %storemerge.off0.reg2mem, !insn.addr !93
  br label %dec_label_pc_40139a, !insn.addr !93

dec_label_pc_40139a:                              ; preds = %dec_label_pc_401396, %dec_label_pc_40138a
  %storemerge.off0.reload = load i32, i32* %storemerge.off0.reg2mem
  %16 = bitcast i32 %storemerge.off0.reload to float, !insn.addr !94
  ret float %16, !insn.addr !94

; uselistorder directives
  uselistorder i128 %11, { 1, 0, 2 }
  uselistorder i128 %10, { 1, 0, 2 }
  uselistorder i32 %9, { 1, 0, 2 }
  uselistorder i128 %6, { 2, 1, 0 }
  uselistorder i32* %storemerge.off0.reg2mem, { 0, 2, 1 }
  uselistorder i1* %0, { 1, 0 }
  uselistorder i32 1, { 2, 1, 0 }
}

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare void @srand(i32) local_unnamed_addr

declare i32 @time(i32*) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

; Function Attrs: nounwind readnone speculatable
declare i8 @llvm.ctpop.i8(i8) #0

declare i128 @__asm_pxor(i128, i128) local_unnamed_addr

declare i128 @__asm_cvtsi2ss(i32) local_unnamed_addr

declare i64 @__asm_movss(i128) local_unnamed_addr

declare i128 @__asm_cvtss2sd(i32) local_unnamed_addr

declare i64 @__asm_movq(i128) local_unnamed_addr

declare i128 @__asm_movapd(i128) local_unnamed_addr

declare i128 @__asm_movq.1(i64) local_unnamed_addr

declare i128 @__asm_movss.2(i32) local_unnamed_addr

declare i128 @__asm_movaps(i128) local_unnamed_addr

declare i128 @__asm_movd(i32) local_unnamed_addr

declare i128 @__asm_cvtss2sd.3(i128) local_unnamed_addr

declare void @__asm_ucomiss(i128, i32) local_unnamed_addr

declare i128 @__asm_addss(i128, i32) local_unnamed_addr

declare i128 @__asm_subss(i128, i32) local_unnamed_addr

declare i128 @__asm_mulss(i128, i32) local_unnamed_addr

declare i128 @__asm_divss(i128, i32) local_unnamed_addr

attributes #0 = { nounwind readnone speculatable }

!0 = !{i64 4198771}
!1 = !{i64 4198778}
!2 = !{i64 4198783}
!3 = !{i64 4198819}
!4 = !{i64 4198823}
!5 = !{i64 4198827}
!6 = !{i64 4198832}
!7 = !{i64 4198864}
!8 = !{i8 0, i8 9}
!9 = !{i64 4198868}
!10 = !{i64 4198872}
!11 = !{i64 4198876}
!12 = !{i64 4198881}
!13 = !{i64 4198885}
!14 = !{i64 4198890}
!15 = !{i64 4198894}
!16 = !{i64 4198899}
!17 = !{i64 4198904}
!18 = !{i64 4198908}
!19 = !{i64 4198923}
!20 = !{i64 4198928}
!21 = !{i64 4198936}
!22 = !{i64 4198939}
!23 = !{i64 4198943}
!24 = !{i64 4198948}
!25 = !{i64 4198952}
!26 = !{i64 4198956}
!27 = !{i64 4198961}
!28 = !{i64 4198976}
!29 = !{i64 4198981}
!30 = !{i64 4198989}
!31 = !{i64 4198992}
!32 = !{i64 4198996}
!33 = !{i64 4199001}
!34 = !{i64 4199005}
!35 = !{i64 4199009}
!36 = !{i64 4199014}
!37 = !{i64 4199029}
!38 = !{i64 4199034}
!39 = !{i64 4199042}
!40 = !{i64 4199045}
!41 = !{i64 4199049}
!42 = !{i64 4199054}
!43 = !{i64 4199058}
!44 = !{i64 4199062}
!45 = !{i64 4199067}
!46 = !{i64 4199082}
!47 = !{i64 4199097}
!48 = !{i64 4199102}
!49 = !{i64 4199106}
!50 = !{i64 4199110}
!51 = !{i64 4199112}
!52 = !{i64 4199116}
!53 = !{i64 4199120}
!54 = !{i64 4199122}
!55 = !{i64 4199130}
!56 = !{i64 4199133}
!57 = !{i64 4199137}
!58 = !{i64 4199142}
!59 = !{i64 4199146}
!60 = !{i64 4199150}
!61 = !{i64 4199155}
!62 = !{i64 4199170}
!63 = !{i64 4199175}
!64 = !{i64 4199182}
!65 = !{i64 4199193}
!66 = !{i64 4199198}
!67 = !{i64 4199203}
!68 = !{i64 4199208}
!69 = !{i64 4199213}
!70 = !{i64 4199219}
!71 = !{i64 4199224}
!72 = !{i64 4199229}
!73 = !{i64 4199234}
!74 = !{i64 4199239}
!75 = !{i64 4199245}
!76 = !{i64 4199250}
!77 = !{i64 4199255}
!78 = !{i64 4199260}
!79 = !{i64 4199265}
!80 = !{i64 4199271}
!81 = !{i64 4199272}
!82 = !{i64 4199276}
!83 = !{i64 4199281}
!84 = !{i64 4199286}
!85 = !{i64 4199290}
!86 = !{i64 4199294}
!87 = !{i64 4199296}
!88 = !{i64 4199300}
!89 = !{i64 4199304}
!90 = !{i64 4199306}
!91 = !{i64 4199311}
!92 = !{i64 4199316}
!93 = !{i64 4199318}
!94 = !{i64 4199323}
