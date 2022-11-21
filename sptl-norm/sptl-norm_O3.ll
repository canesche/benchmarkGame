; ModuleID = 'sptl-norm/sptl-norm.c'
source_filename = "sptl-norm/sptl-norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @eval_A(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, %0
  %4 = add nsw i32 %3, 1
  %5 = mul nsw i32 %4, %3
  %6 = sdiv i32 %5, 2
  %7 = add i32 %0, 1
  %8 = add i32 %7, %6
  %9 = sitofp i32 %8 to double
  %10 = fdiv double 1.000000e+00, %9
  ret double %10
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @eval_A_times_u(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  %6 = zext i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %31
  %8 = phi i64 [ 0, %5 ], [ %10, %31 ]
  %9 = getelementptr inbounds double, double* %2, i64 %8
  store double 0.000000e+00, double* %9, align 8, !tbaa !5
  %10 = add nuw nsw i64 %8, 1
  %11 = trunc i64 %8 to i32
  %12 = trunc i64 %10 to i32
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi double [ 0.000000e+00, %7 ], [ %28, %13 ]
  %15 = phi i64 [ 0, %7 ], [ %29, %13 ]
  %16 = trunc i64 %15 to i32
  %17 = add nuw nsw i64 %15, %8
  %18 = add nuw nsw i32 %16, %11
  %19 = add nuw nsw i32 %18, 1
  %20 = trunc i64 %17 to i32
  %21 = mul nsw i32 %19, %20
  %22 = lshr i32 %21, 1
  %23 = add i32 %22, %12
  %24 = sitofp i32 %23 to double
  %25 = fdiv double 1.000000e+00, %24
  %26 = getelementptr inbounds double, double* %1, i64 %15
  %27 = load double, double* %26, align 8, !tbaa !5
  %28 = tail call double @llvm.fmuladd.f64(double %25, double %27, double %14)
  store double %28, double* %9, align 8, !tbaa !5
  %29 = add nuw nsw i64 %15, 1
  %30 = icmp eq i64 %29, %6
  br i1 %30, label %31, label %13, !llvm.loop !9

31:                                               ; preds = %13
  %32 = icmp eq i64 %10, %6
  br i1 %32, label %33, label %7, !llvm.loop !11

33:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @eval_At_times_u(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  %6 = zext i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi i64 [ 0, %5 ], [ %31, %30 ]
  %9 = getelementptr inbounds double, double* %2, i64 %8
  store double 0.000000e+00, double* %9, align 8, !tbaa !5
  %10 = trunc i64 %8 to i32
  br label %11

11:                                               ; preds = %7, %11
  %12 = phi double [ 0.000000e+00, %7 ], [ %28, %11 ]
  %13 = phi i64 [ 0, %7 ], [ %21, %11 ]
  %14 = trunc i64 %13 to i32
  %15 = add nuw nsw i64 %13, %8
  %16 = add nuw nsw i32 %14, %10
  %17 = add nuw nsw i32 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = mul nsw i32 %17, %18
  %20 = lshr i32 %19, 1
  %21 = add nuw nsw i64 %13, 1
  %22 = trunc i64 %21 to i32
  %23 = add nuw i32 %20, %22
  %24 = sitofp i32 %23 to double
  %25 = fdiv double 1.000000e+00, %24
  %26 = getelementptr inbounds double, double* %1, i64 %13
  %27 = load double, double* %26, align 8, !tbaa !5
  %28 = tail call double @llvm.fmuladd.f64(double %25, double %27, double %12)
  store double %28, double* %9, align 8, !tbaa !5
  %29 = icmp eq i64 %21, %6
  br i1 %29, label %30, label %11, !llvm.loop !12

30:                                               ; preds = %11
  %31 = add nuw nsw i64 %8, 1
  %32 = icmp eq i64 %31, %6
  br i1 %32, label %33, label %7, !llvm.loop !13

33:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @eval_AtA_times_u(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = zext i32 %0 to i64
  %5 = alloca double, i64 %4, align 16
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %3, %31
  %8 = phi i64 [ %10, %31 ], [ 0, %3 ]
  %9 = getelementptr inbounds double, double* %5, i64 %8
  %10 = add nuw nsw i64 %8, 1
  %11 = trunc i64 %8 to i32
  %12 = trunc i64 %10 to i32
  %13 = add i32 %11, 1
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi double [ 0.000000e+00, %7 ], [ %28, %14 ]
  %16 = phi i64 [ 0, %7 ], [ %29, %14 ]
  %17 = trunc i64 %16 to i32
  %18 = add nuw nsw i64 %16, %8
  %19 = add i32 %13, %17
  %20 = trunc i64 %18 to i32
  %21 = mul nsw i32 %19, %20
  %22 = lshr i32 %21, 1
  %23 = add i32 %22, %12
  %24 = sitofp i32 %23 to double
  %25 = fdiv double 1.000000e+00, %24
  %26 = getelementptr inbounds double, double* %1, i64 %16
  %27 = load double, double* %26, align 8, !tbaa !5
  %28 = tail call double @llvm.fmuladd.f64(double %25, double %27, double %15) #8
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, %4
  br i1 %30, label %31, label %14, !llvm.loop !9

31:                                               ; preds = %14
  store double %28, double* %9, align 8, !tbaa !5
  %32 = icmp eq i64 %10, %4
  br i1 %32, label %33, label %7, !llvm.loop !11

33:                                               ; preds = %31, %56
  %34 = phi i64 [ %57, %56 ], [ 0, %31 ]
  %35 = getelementptr inbounds double, double* %2, i64 %34
  %36 = trunc i64 %34 to i32
  %37 = add i32 %36, 1
  br label %38

38:                                               ; preds = %38, %33
  %39 = phi double [ 0.000000e+00, %33 ], [ %54, %38 ]
  %40 = phi i64 [ 0, %33 ], [ %47, %38 ]
  %41 = trunc i64 %40 to i32
  %42 = add nuw nsw i64 %40, %34
  %43 = add i32 %37, %41
  %44 = trunc i64 %42 to i32
  %45 = mul nsw i32 %43, %44
  %46 = lshr i32 %45, 1
  %47 = add nuw nsw i64 %40, 1
  %48 = trunc i64 %47 to i32
  %49 = add nuw i32 %46, %48
  %50 = sitofp i32 %49 to double
  %51 = fdiv double 1.000000e+00, %50
  %52 = getelementptr inbounds double, double* %5, i64 %40
  %53 = load double, double* %52, align 8, !tbaa !5
  %54 = tail call double @llvm.fmuladd.f64(double %51, double %53, double %39) #8
  %55 = icmp eq i64 %47, %4
  br i1 %55, label %56, label %38, !llvm.loop !12

56:                                               ; preds = %38
  store double %54, double* %35, align 8, !tbaa !5
  %57 = add nuw nsw i64 %34, 1
  %58 = icmp eq i64 %57, %4
  br i1 %58, label %59, label %33, !llvm.loop !13

59:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = alloca [2000 x double], align 16
  %6 = alloca [2000 x double], align 16
  %7 = getelementptr inbounds [2000 x double], [2000 x double]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [2000 x double], [2000 x double]* %5, i64 0, i64 0
  br label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1
  %11 = load i8*, i8** %10, align 8, !tbaa !14
  %12 = tail call i64 @strtol(i8* nocapture noundef nonnull %11, i8** noundef null, i32 noundef 10) #8
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  %15 = alloca double, i64 %14, align 16
  %16 = alloca double, i64 %14, align 16
  %17 = icmp sgt i32 %13, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %4, %9
  %19 = phi double* [ %7, %4 ], [ %16, %9 ]
  %20 = phi double* [ %8, %4 ], [ %15, %9 ]
  %21 = phi i64 [ 2000, %4 ], [ %14, %9 ]
  %22 = phi i32 [ 2000, %4 ], [ %13, %9 ]
  %23 = icmp ult i64 %21, 4
  br i1 %23, label %93, label %24

24:                                               ; preds = %18
  %25 = and i64 %21, 4294967292
  %26 = add nsw i64 %25, -4
  %27 = lshr exact i64 %26, 2
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 7
  %30 = icmp ult i64 %26, 28
  br i1 %30, label %78, label %31

31:                                               ; preds = %24
  %32 = and i64 %28, 9223372036854775800
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %75, %33 ]
  %35 = phi i64 [ 0, %31 ], [ %76, %33 ]
  %36 = getelementptr inbounds double, double* %20, i64 %34
  %37 = bitcast double* %36 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %37, align 8, !tbaa !5
  %38 = getelementptr inbounds double, double* %36, i64 2
  %39 = bitcast double* %38 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %39, align 8, !tbaa !5
  %40 = or i64 %34, 4
  %41 = getelementptr inbounds double, double* %20, i64 %40
  %42 = bitcast double* %41 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %42, align 8, !tbaa !5
  %43 = getelementptr inbounds double, double* %41, i64 2
  %44 = bitcast double* %43 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %44, align 8, !tbaa !5
  %45 = or i64 %34, 8
  %46 = getelementptr inbounds double, double* %20, i64 %45
  %47 = bitcast double* %46 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %47, align 8, !tbaa !5
  %48 = getelementptr inbounds double, double* %46, i64 2
  %49 = bitcast double* %48 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %49, align 8, !tbaa !5
  %50 = or i64 %34, 12
  %51 = getelementptr inbounds double, double* %20, i64 %50
  %52 = bitcast double* %51 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %52, align 8, !tbaa !5
  %53 = getelementptr inbounds double, double* %51, i64 2
  %54 = bitcast double* %53 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %54, align 8, !tbaa !5
  %55 = or i64 %34, 16
  %56 = getelementptr inbounds double, double* %20, i64 %55
  %57 = bitcast double* %56 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %57, align 8, !tbaa !5
  %58 = getelementptr inbounds double, double* %56, i64 2
  %59 = bitcast double* %58 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %59, align 8, !tbaa !5
  %60 = or i64 %34, 20
  %61 = getelementptr inbounds double, double* %20, i64 %60
  %62 = bitcast double* %61 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %62, align 8, !tbaa !5
  %63 = getelementptr inbounds double, double* %61, i64 2
  %64 = bitcast double* %63 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %64, align 8, !tbaa !5
  %65 = or i64 %34, 24
  %66 = getelementptr inbounds double, double* %20, i64 %65
  %67 = bitcast double* %66 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %67, align 8, !tbaa !5
  %68 = getelementptr inbounds double, double* %66, i64 2
  %69 = bitcast double* %68 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %69, align 8, !tbaa !5
  %70 = or i64 %34, 28
  %71 = getelementptr inbounds double, double* %20, i64 %70
  %72 = bitcast double* %71 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %72, align 8, !tbaa !5
  %73 = getelementptr inbounds double, double* %71, i64 2
  %74 = bitcast double* %73 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %74, align 8, !tbaa !5
  %75 = add nuw i64 %34, 32
  %76 = add i64 %35, 8
  %77 = icmp eq i64 %76, %32
  br i1 %77, label %78, label %33, !llvm.loop !16

78:                                               ; preds = %33, %24
  %79 = phi i64 [ 0, %24 ], [ %75, %33 ]
  %80 = icmp eq i64 %29, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ %88, %81 ], [ %79, %78 ]
  %83 = phi i64 [ %89, %81 ], [ 0, %78 ]
  %84 = getelementptr inbounds double, double* %20, i64 %82
  %85 = bitcast double* %84 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %85, align 8, !tbaa !5
  %86 = getelementptr inbounds double, double* %84, i64 2
  %87 = bitcast double* %86 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %87, align 8, !tbaa !5
  %88 = add nuw i64 %82, 4
  %89 = add i64 %83, 1
  %90 = icmp eq i64 %89, %29
  br i1 %90, label %91, label %81, !llvm.loop !18

91:                                               ; preds = %81, %78
  %92 = icmp eq i64 %21, %25
  br i1 %92, label %95, label %93

93:                                               ; preds = %18, %91
  %94 = phi i64 [ 0, %18 ], [ %25, %91 ]
  br label %106

95:                                               ; preds = %106, %91, %9
  %96 = phi i1 [ false, %9 ], [ true, %91 ], [ true, %106 ]
  %97 = phi double* [ %16, %9 ], [ %19, %91 ], [ %19, %106 ]
  %98 = phi double* [ %15, %9 ], [ %20, %91 ], [ %20, %106 ]
  %99 = phi i64 [ %14, %9 ], [ %21, %91 ], [ %21, %106 ]
  %100 = phi i32 [ %13, %9 ], [ %22, %91 ], [ %22, %106 ]
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %98, double* noundef nonnull %97)
  call void @eval_AtA_times_u(i32 noundef %100, double* noundef nonnull %97, double* noundef nonnull %98)
  br i1 %96, label %101, label %154

101:                                              ; preds = %95
  %102 = and i64 %99, 1
  %103 = icmp eq i64 %99, 1
  br i1 %103, label %135, label %104

104:                                              ; preds = %101
  %105 = and i64 %99, -2
  br label %111

106:                                              ; preds = %93, %106
  %107 = phi i64 [ %109, %106 ], [ %94, %93 ]
  %108 = getelementptr inbounds double, double* %20, i64 %107
  store double 1.000000e+00, double* %108, align 8, !tbaa !5
  %109 = add nuw nsw i64 %107, 1
  %110 = icmp eq i64 %109, %21
  br i1 %110, label %95, label %106, !llvm.loop !20

111:                                              ; preds = %111, %104
  %112 = phi i64 [ 0, %104 ], [ %132, %111 ]
  %113 = phi <2 x double> [ zeroinitializer, %104 ], [ %131, %111 ]
  %114 = phi i64 [ 0, %104 ], [ %133, %111 ]
  %115 = getelementptr inbounds double, double* %98, i64 %112
  %116 = load double, double* %115, align 8, !tbaa !5
  %117 = getelementptr inbounds double, double* %97, i64 %112
  %118 = load double, double* %117, align 8, !tbaa !5
  %119 = insertelement <2 x double> poison, double %118, i64 0
  %120 = insertelement <2 x double> %119, double %116, i64 1
  %121 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> zeroinitializer
  %122 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %120, <2 x double> %121, <2 x double> %113)
  %123 = or i64 %112, 1
  %124 = getelementptr inbounds double, double* %98, i64 %123
  %125 = load double, double* %124, align 8, !tbaa !5
  %126 = getelementptr inbounds double, double* %97, i64 %123
  %127 = load double, double* %126, align 8, !tbaa !5
  %128 = insertelement <2 x double> poison, double %127, i64 0
  %129 = insertelement <2 x double> %128, double %125, i64 1
  %130 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> zeroinitializer
  %131 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %129, <2 x double> %130, <2 x double> %122)
  %132 = add nuw nsw i64 %112, 2
  %133 = add i64 %114, 2
  %134 = icmp eq i64 %133, %105
  br i1 %134, label %135, label %111, !llvm.loop !22

135:                                              ; preds = %111, %101
  %136 = phi <2 x double> [ undef, %101 ], [ %131, %111 ]
  %137 = phi i64 [ 0, %101 ], [ %132, %111 ]
  %138 = phi <2 x double> [ zeroinitializer, %101 ], [ %131, %111 ]
  %139 = icmp eq i64 %102, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds double, double* %98, i64 %137
  %142 = load double, double* %141, align 8, !tbaa !5
  %143 = getelementptr inbounds double, double* %97, i64 %137
  %144 = load double, double* %143, align 8, !tbaa !5
  %145 = insertelement <2 x double> poison, double %144, i64 0
  %146 = insertelement <2 x double> %145, double %142, i64 1
  %147 = shufflevector <2 x double> %145, <2 x double> poison, <2 x i32> zeroinitializer
  %148 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %146, <2 x double> %147, <2 x double> %138)
  br label %149

149:                                              ; preds = %135, %140
  %150 = phi <2 x double> [ %136, %135 ], [ %148, %140 ]
  %151 = extractelement <2 x double> %150, i64 0
  %152 = extractelement <2 x double> %150, i64 1
  %153 = fdiv double %152, %151
  br label %154

154:                                              ; preds = %149, %95
  %155 = phi double [ %153, %149 ], [ 0x7FF8000000000000, %95 ]
  %156 = tail call double @sqrt(double noundef %155) #8
  %157 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double noundef %156)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = distinct !{!16, !10, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !10, !21, !17}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !10}
