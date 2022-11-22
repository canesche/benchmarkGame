; ModuleID = 'sptl-norm/sptl-norm.c'
source_filename = "sptl-norm/sptl-norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

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
  %28 = tail call double @llvm.fmuladd.f64(double %25, double %27, double %15) #10
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
  %54 = tail call double @llvm.fmuladd.f64(double %51, double %53, double %39) #10
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

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = alloca [5000 x double], align 16
  %4 = alloca [5000 x double], align 16
  %5 = alloca [5000 x double], align 16
  %6 = alloca [5000 x double], align 16
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %33, %7 ]
  %9 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %8
  %10 = bitcast double* %9 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %10, align 16, !tbaa !5
  %11 = getelementptr inbounds double, double* %9, i64 2
  %12 = bitcast double* %11 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %12, align 16, !tbaa !5
  %13 = add nuw nsw i64 %8, 4
  %14 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %13
  %15 = bitcast double* %14 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %15, align 16, !tbaa !5
  %16 = getelementptr inbounds double, double* %14, i64 2
  %17 = bitcast double* %16 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %17, align 16, !tbaa !5
  %18 = add nuw nsw i64 %8, 8
  %19 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %18
  %20 = bitcast double* %19 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %20, align 16, !tbaa !5
  %21 = getelementptr inbounds double, double* %19, i64 2
  %22 = bitcast double* %21 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %22, align 16, !tbaa !5
  %23 = add nuw nsw i64 %8, 12
  %24 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %23
  %25 = bitcast double* %24 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %25, align 16, !tbaa !5
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %27, align 16, !tbaa !5
  %28 = add nuw nsw i64 %8, 16
  %29 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %28
  %30 = bitcast double* %29 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %30, align 16, !tbaa !5
  %31 = getelementptr inbounds double, double* %29, i64 2
  %32 = bitcast double* %31 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %32, align 16, !tbaa !5
  %33 = add nuw nsw i64 %8, 20
  %34 = icmp eq i64 %33, 5000
  br i1 %34, label %35, label %7, !llvm.loop !14

35:                                               ; preds = %7
  %36 = tail call i64 @clock() #10
  %37 = bitcast [5000 x double]* %4 to i8*
  %38 = bitcast [5000 x double]* %3 to i8*
  br label %39

39:                                               ; preds = %35, %148
  %40 = phi i32 [ 0, %35 ], [ %149, %148 ]
  %41 = tail call i8* @llvm.stacksave()
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %37)
  br label %42

42:                                               ; preds = %65, %39
  %43 = phi i64 [ %44, %65 ], [ 0, %39 ]
  %44 = add nuw nsw i64 %43, 1
  %45 = trunc i64 %43 to i32
  %46 = trunc i64 %44 to i32
  %47 = add i32 %45, 1
  br label %48

48:                                               ; preds = %48, %42
  %49 = phi double [ 0.000000e+00, %42 ], [ %62, %48 ]
  %50 = phi i64 [ 0, %42 ], [ %63, %48 ]
  %51 = trunc i64 %50 to i32
  %52 = add nuw nsw i64 %50, %43
  %53 = add i32 %47, %51
  %54 = trunc i64 %52 to i32
  %55 = mul nsw i32 %53, %54
  %56 = lshr i32 %55, 1
  %57 = add i32 %56, %46
  %58 = sitofp i32 %57 to double
  %59 = fdiv double 1.000000e+00, %58
  %60 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %50
  %61 = load double, double* %60, align 8, !tbaa !5
  %62 = tail call double @llvm.fmuladd.f64(double %59, double %61, double %49) #10
  %63 = add nuw nsw i64 %50, 1
  %64 = icmp eq i64 %63, 5000
  br i1 %64, label %65, label %48, !llvm.loop !9

65:                                               ; preds = %48
  %66 = getelementptr inbounds [5000 x double], [5000 x double]* %4, i64 0, i64 %43
  store double %62, double* %66, align 8, !tbaa !5
  %67 = icmp eq i64 %44, 5000
  br i1 %67, label %68, label %42, !llvm.loop !11

68:                                               ; preds = %65, %90
  %69 = phi i64 [ %92, %90 ], [ 0, %65 ]
  %70 = trunc i64 %69 to i32
  %71 = add i32 %70, 1
  br label %72

72:                                               ; preds = %72, %68
  %73 = phi double [ 0.000000e+00, %68 ], [ %88, %72 ]
  %74 = phi i64 [ 0, %68 ], [ %81, %72 ]
  %75 = trunc i64 %74 to i32
  %76 = add nuw nsw i64 %74, %69
  %77 = add i32 %71, %75
  %78 = trunc i64 %76 to i32
  %79 = mul nsw i32 %77, %78
  %80 = lshr i32 %79, 1
  %81 = add nuw nsw i64 %74, 1
  %82 = trunc i64 %81 to i32
  %83 = add nuw i32 %80, %82
  %84 = sitofp i32 %83 to double
  %85 = fdiv double 1.000000e+00, %84
  %86 = getelementptr inbounds [5000 x double], [5000 x double]* %4, i64 0, i64 %74
  %87 = load double, double* %86, align 8, !tbaa !5
  %88 = tail call double @llvm.fmuladd.f64(double %85, double %87, double %73) #10
  %89 = icmp eq i64 %81, 5000
  br i1 %89, label %90, label %72, !llvm.loop !12

90:                                               ; preds = %72
  %91 = getelementptr inbounds [5000 x double], [5000 x double]* %6, i64 0, i64 %69
  store double %88, double* %91, align 8, !tbaa !5
  %92 = add nuw nsw i64 %69, 1
  %93 = icmp eq i64 %92, 5000
  br i1 %93, label %94, label %68, !llvm.loop !13

94:                                               ; preds = %90
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %37)
  tail call void @llvm.stackrestore(i8* %41)
  %95 = tail call i8* @llvm.stacksave()
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %38)
  br label %96

96:                                               ; preds = %119, %94
  %97 = phi i64 [ %98, %119 ], [ 0, %94 ]
  %98 = add nuw nsw i64 %97, 1
  %99 = trunc i64 %97 to i32
  %100 = trunc i64 %98 to i32
  %101 = add i32 %99, 1
  br label %102

102:                                              ; preds = %102, %96
  %103 = phi double [ 0.000000e+00, %96 ], [ %116, %102 ]
  %104 = phi i64 [ 0, %96 ], [ %117, %102 ]
  %105 = trunc i64 %104 to i32
  %106 = add nuw nsw i64 %104, %97
  %107 = add i32 %101, %105
  %108 = trunc i64 %106 to i32
  %109 = mul nsw i32 %107, %108
  %110 = lshr i32 %109, 1
  %111 = add i32 %110, %100
  %112 = sitofp i32 %111 to double
  %113 = fdiv double 1.000000e+00, %112
  %114 = getelementptr inbounds [5000 x double], [5000 x double]* %6, i64 0, i64 %104
  %115 = load double, double* %114, align 8, !tbaa !5
  %116 = tail call double @llvm.fmuladd.f64(double %113, double %115, double %103) #10
  %117 = add nuw nsw i64 %104, 1
  %118 = icmp eq i64 %117, 5000
  br i1 %118, label %119, label %102, !llvm.loop !9

119:                                              ; preds = %102
  %120 = getelementptr inbounds [5000 x double], [5000 x double]* %3, i64 0, i64 %97
  store double %116, double* %120, align 8, !tbaa !5
  %121 = icmp eq i64 %98, 5000
  br i1 %121, label %122, label %96, !llvm.loop !11

122:                                              ; preds = %119, %144
  %123 = phi i64 [ %146, %144 ], [ 0, %119 ]
  %124 = trunc i64 %123 to i32
  %125 = add i32 %124, 1
  br label %126

126:                                              ; preds = %126, %122
  %127 = phi double [ 0.000000e+00, %122 ], [ %142, %126 ]
  %128 = phi i64 [ 0, %122 ], [ %135, %126 ]
  %129 = trunc i64 %128 to i32
  %130 = add nuw nsw i64 %128, %123
  %131 = add i32 %125, %129
  %132 = trunc i64 %130 to i32
  %133 = mul nsw i32 %131, %132
  %134 = lshr i32 %133, 1
  %135 = add nuw nsw i64 %128, 1
  %136 = trunc i64 %135 to i32
  %137 = add nuw i32 %134, %136
  %138 = sitofp i32 %137 to double
  %139 = fdiv double 1.000000e+00, %138
  %140 = getelementptr inbounds [5000 x double], [5000 x double]* %3, i64 0, i64 %128
  %141 = load double, double* %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %141, double %127) #10
  %143 = icmp eq i64 %135, 5000
  br i1 %143, label %144, label %126, !llvm.loop !12

144:                                              ; preds = %126
  %145 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %123
  store double %142, double* %145, align 8, !tbaa !5
  %146 = add nuw nsw i64 %123, 1
  %147 = icmp eq i64 %146, 5000
  br i1 %147, label %148, label %122, !llvm.loop !13

148:                                              ; preds = %144
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %38)
  tail call void @llvm.stackrestore(i8* %95)
  %149 = add nuw nsw i32 %40, 1
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %39, !llvm.loop !16

151:                                              ; preds = %148, %151
  %152 = phi i64 [ %171, %151 ], [ 0, %148 ]
  %153 = phi <2 x double> [ %170, %151 ], [ zeroinitializer, %148 ]
  %154 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %152
  %155 = load double, double* %154, align 16, !tbaa !5
  %156 = getelementptr inbounds [5000 x double], [5000 x double]* %6, i64 0, i64 %152
  %157 = load double, double* %156, align 16, !tbaa !5
  %158 = insertelement <2 x double> poison, double %157, i64 0
  %159 = insertelement <2 x double> %158, double %155, i64 1
  %160 = shufflevector <2 x double> %158, <2 x double> poison, <2 x i32> zeroinitializer
  %161 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %159, <2 x double> %160, <2 x double> %153)
  %162 = or i64 %152, 1
  %163 = getelementptr inbounds [5000 x double], [5000 x double]* %5, i64 0, i64 %162
  %164 = load double, double* %163, align 8, !tbaa !5
  %165 = getelementptr inbounds [5000 x double], [5000 x double]* %6, i64 0, i64 %162
  %166 = load double, double* %165, align 8, !tbaa !5
  %167 = insertelement <2 x double> poison, double %166, i64 0
  %168 = insertelement <2 x double> %167, double %164, i64 1
  %169 = shufflevector <2 x double> %167, <2 x double> poison, <2 x i32> zeroinitializer
  %170 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %168, <2 x double> %169, <2 x double> %161)
  %171 = add nuw nsw i64 %152, 2
  %172 = icmp eq i64 %171, 5000
  br i1 %172, label %173, label %151, !llvm.loop !17

173:                                              ; preds = %151
  %174 = extractelement <2 x double> %170, i64 0
  %175 = extractelement <2 x double> %170, i64 1
  %176 = fdiv double %175, %174
  %177 = tail call double @sqrt(double noundef %176) #10
  %178 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double noundef %177)
  %179 = tail call i64 @clock() #10
  %180 = sub nsw i64 %179, %36
  %181 = sitofp i64 %180 to double
  %182 = fdiv double %181, 1.000000e+06
  %183 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %182)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

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
!14 = distinct !{!14, !10, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
