; ModuleID = 'matrix/matrix.c'
source_filename = "matrix/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i32** @mkmatrix(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias i8* @malloc(i64 noundef %4) #8
  %6 = bitcast i8* %5 to i32**
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %111

8:                                                ; preds = %2
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 2
  %11 = icmp sgt i32 %1, 0
  %12 = zext i32 %0 to i64
  br i1 %11, label %13, label %104

13:                                               ; preds = %8
  %14 = zext i32 %1 to i64
  %15 = and i64 %14, 4294967288
  %16 = add nsw i64 %15, -8
  %17 = lshr exact i64 %16, 3
  %18 = add nuw nsw i64 %17, 1
  %19 = icmp ult i32 %1, 8
  %20 = and i64 %14, 4294967288
  %21 = trunc i64 %20 to i32
  %22 = and i64 %18, 3
  %23 = icmp ult i64 %16, 24
  %24 = and i64 %18, 4611686018427387900
  %25 = icmp eq i64 %22, 0
  %26 = icmp eq i64 %20, %14
  br label %27

27:                                               ; preds = %13, %100
  %28 = phi i64 [ 0, %13 ], [ %102, %100 ]
  %29 = phi i32 [ 1, %13 ], [ %101, %100 ]
  %30 = tail call noalias i8* @malloc(i64 noundef %10) #8
  %31 = getelementptr inbounds i32*, i32** %6, i64 %28
  %32 = bitcast i32** %31 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !5
  %33 = bitcast i8* %30 to i32*
  br i1 %19, label %90, label %34

34:                                               ; preds = %27
  %35 = add i32 %29, %21
  %36 = insertelement <4 x i32> poison, i32 %29, i64 0
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> zeroinitializer
  %38 = add <4 x i32> %37, <i32 0, i32 1, i32 2, i32 3>
  br i1 %23, label %73, label %39

39:                                               ; preds = %34, %39
  %40 = phi i64 [ %69, %39 ], [ 0, %34 ]
  %41 = phi <4 x i32> [ %70, %39 ], [ %38, %34 ]
  %42 = phi i64 [ %71, %39 ], [ 0, %34 ]
  %43 = add <4 x i32> %41, <i32 4, i32 4, i32 4, i32 4>
  %44 = getelementptr inbounds i32, i32* %33, i64 %40
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %45, align 4, !tbaa !9
  %46 = getelementptr inbounds i32, i32* %44, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  store <4 x i32> %43, <4 x i32>* %47, align 4, !tbaa !9
  %48 = or i64 %40, 8
  %49 = add <4 x i32> %41, <i32 8, i32 8, i32 8, i32 8>
  %50 = add <4 x i32> %41, <i32 12, i32 12, i32 12, i32 12>
  %51 = getelementptr inbounds i32, i32* %33, i64 %48
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %49, <4 x i32>* %52, align 4, !tbaa !9
  %53 = getelementptr inbounds i32, i32* %51, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %50, <4 x i32>* %54, align 4, !tbaa !9
  %55 = or i64 %40, 16
  %56 = add <4 x i32> %41, <i32 16, i32 16, i32 16, i32 16>
  %57 = add <4 x i32> %41, <i32 20, i32 20, i32 20, i32 20>
  %58 = getelementptr inbounds i32, i32* %33, i64 %55
  %59 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> %56, <4 x i32>* %59, align 4, !tbaa !9
  %60 = getelementptr inbounds i32, i32* %58, i64 4
  %61 = bitcast i32* %60 to <4 x i32>*
  store <4 x i32> %57, <4 x i32>* %61, align 4, !tbaa !9
  %62 = or i64 %40, 24
  %63 = add <4 x i32> %41, <i32 24, i32 24, i32 24, i32 24>
  %64 = add <4 x i32> %41, <i32 28, i32 28, i32 28, i32 28>
  %65 = getelementptr inbounds i32, i32* %33, i64 %62
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> %63, <4 x i32>* %66, align 4, !tbaa !9
  %67 = getelementptr inbounds i32, i32* %65, i64 4
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %68, align 4, !tbaa !9
  %69 = add nuw i64 %40, 32
  %70 = add <4 x i32> %41, <i32 32, i32 32, i32 32, i32 32>
  %71 = add i64 %42, 4
  %72 = icmp eq i64 %71, %24
  br i1 %72, label %73, label %39, !llvm.loop !11

73:                                               ; preds = %39, %34
  %74 = phi i64 [ 0, %34 ], [ %69, %39 ]
  %75 = phi <4 x i32> [ %38, %34 ], [ %70, %39 ]
  br i1 %25, label %89, label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ %85, %76 ], [ %74, %73 ]
  %78 = phi <4 x i32> [ %86, %76 ], [ %75, %73 ]
  %79 = phi i64 [ %87, %76 ], [ 0, %73 ]
  %80 = add <4 x i32> %78, <i32 4, i32 4, i32 4, i32 4>
  %81 = getelementptr inbounds i32, i32* %33, i64 %77
  %82 = bitcast i32* %81 to <4 x i32>*
  store <4 x i32> %78, <4 x i32>* %82, align 4, !tbaa !9
  %83 = getelementptr inbounds i32, i32* %81, i64 4
  %84 = bitcast i32* %83 to <4 x i32>*
  store <4 x i32> %80, <4 x i32>* %84, align 4, !tbaa !9
  %85 = add nuw i64 %77, 8
  %86 = add <4 x i32> %78, <i32 8, i32 8, i32 8, i32 8>
  %87 = add i64 %79, 1
  %88 = icmp eq i64 %87, %22
  br i1 %88, label %89, label %76, !llvm.loop !14

89:                                               ; preds = %76, %73
  br i1 %26, label %100, label %90

90:                                               ; preds = %27, %89
  %91 = phi i64 [ 0, %27 ], [ %20, %89 ]
  %92 = phi i32 [ %29, %27 ], [ %35, %89 ]
  br label %93

93:                                               ; preds = %90, %93
  %94 = phi i64 [ %98, %93 ], [ %91, %90 ]
  %95 = phi i32 [ %96, %93 ], [ %92, %90 ]
  %96 = add nsw i32 %95, 1
  %97 = getelementptr inbounds i32, i32* %33, i64 %94
  store i32 %95, i32* %97, align 4, !tbaa !9
  %98 = add nuw nsw i64 %94, 1
  %99 = icmp eq i64 %98, %14
  br i1 %99, label %100, label %93, !llvm.loop !16

100:                                              ; preds = %93, %89
  %101 = phi i32 [ %35, %89 ], [ %96, %93 ]
  %102 = add nuw nsw i64 %28, 1
  %103 = icmp eq i64 %102, %12
  br i1 %103, label %111, label %27, !llvm.loop !18

104:                                              ; preds = %8, %104
  %105 = phi i64 [ %109, %104 ], [ 0, %8 ]
  %106 = tail call noalias i8* @malloc(i64 noundef %10) #8
  %107 = getelementptr inbounds i32*, i32** %6, i64 %105
  %108 = bitcast i32** %107 to i8**
  store i8* %106, i8** %108, align 8, !tbaa !5
  %109 = add nuw nsw i64 %105, 1
  %110 = icmp eq i64 %109, %12
  br i1 %110, label %111, label %104, !llvm.loop !18

111:                                              ; preds = %104, %100, %2
  ret i32** %6
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @zeromatrix(i32 noundef %0, i32 noundef %1, i32** nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp sgt i32 %0, 0
  %5 = icmp sgt i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  %8 = zext i32 %1 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = zext i32 %0 to i64
  %11 = add nsw i64 %10, -1
  %12 = and i64 %10, 7
  %13 = icmp ult i64 %11, 7
  br i1 %13, label %53, label %14

14:                                               ; preds = %7
  %15 = and i64 %10, 4294967288
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %50, %16 ]
  %18 = phi i64 [ 0, %14 ], [ %51, %16 ]
  %19 = getelementptr inbounds i32*, i32** %2, i64 %17
  %20 = bitcast i32** %19 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 %9, i1 false), !tbaa !9
  %22 = or i64 %17, 1
  %23 = getelementptr inbounds i32*, i32** %2, i64 %22
  %24 = bitcast i32** %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 %9, i1 false), !tbaa !9
  %26 = or i64 %17, 2
  %27 = getelementptr inbounds i32*, i32** %2, i64 %26
  %28 = bitcast i32** %27 to i8**
  %29 = load i8*, i8** %28, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 %9, i1 false), !tbaa !9
  %30 = or i64 %17, 3
  %31 = getelementptr inbounds i32*, i32** %2, i64 %30
  %32 = bitcast i32** %31 to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 %9, i1 false), !tbaa !9
  %34 = or i64 %17, 4
  %35 = getelementptr inbounds i32*, i32** %2, i64 %34
  %36 = bitcast i32** %35 to i8**
  %37 = load i8*, i8** %36, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 %9, i1 false), !tbaa !9
  %38 = or i64 %17, 5
  %39 = getelementptr inbounds i32*, i32** %2, i64 %38
  %40 = bitcast i32** %39 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 %9, i1 false), !tbaa !9
  %42 = or i64 %17, 6
  %43 = getelementptr inbounds i32*, i32** %2, i64 %42
  %44 = bitcast i32** %43 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 %9, i1 false), !tbaa !9
  %46 = or i64 %17, 7
  %47 = getelementptr inbounds i32*, i32** %2, i64 %46
  %48 = bitcast i32** %47 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 %9, i1 false), !tbaa !9
  %50 = add nuw nsw i64 %17, 8
  %51 = add i64 %18, 8
  %52 = icmp eq i64 %51, %15
  br i1 %52, label %53, label %16, !llvm.loop !19

53:                                               ; preds = %16, %7
  %54 = phi i64 [ 0, %7 ], [ %50, %16 ]
  %55 = icmp eq i64 %12, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %62, %56 ], [ %54, %53 ]
  %58 = phi i64 [ %63, %56 ], [ 0, %53 ]
  %59 = getelementptr inbounds i32*, i32** %2, i64 %57
  %60 = bitcast i32** %59 to i8**
  %61 = load i8*, i8** %60, align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* align 4 %61, i8 0, i64 %9, i1 false), !tbaa !9
  %62 = add nuw nsw i64 %57, 1
  %63 = add i64 %58, 1
  %64 = icmp eq i64 %63, %12
  br i1 %64, label %65, label %56, !llvm.loop !20

65:                                               ; preds = %53, %56, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freematrix(i32 noundef %0, i32** nocapture noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %5, %4 ], [ %8, %6 ]
  %8 = add nsw i64 %7, -1
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds i32*, i32** %1, i64 %9
  %11 = bitcast i32** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !5
  tail call void @free(i8* noundef %12) #8
  %13 = icmp ugt i64 %7, 1
  br i1 %13, label %6, label %14, !llvm.loop !21

14:                                               ; preds = %6, %2
  %15 = bitcast i32** %1 to i8*
  tail call void @free(i8* noundef %15) #8
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32** @mmult(i32 noundef %0, i32 noundef %1, i32** nocapture noundef readonly %2, i32** nocapture noundef readonly %3, i32** noundef readonly returned %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %0, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %94

9:                                                ; preds = %5
  %10 = zext i32 %0 to i64
  %11 = zext i32 %1 to i64
  %12 = add nsw i64 %11, -1
  %13 = and i64 %11, 3
  %14 = icmp ult i64 %12, 3
  %15 = and i64 %11, 4294967292
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %9, %91
  %18 = phi i64 [ 0, %9 ], [ %92, %91 ]
  %19 = getelementptr inbounds i32*, i32** %2, i64 %18
  %20 = getelementptr inbounds i32*, i32** %4, i64 %18
  %21 = load i32*, i32** %20, align 8, !tbaa !5
  %22 = load i32*, i32** %19, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %86, %17
  %24 = phi i64 [ %89, %86 ], [ 0, %17 ]
  br i1 %14, label %67, label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %64, %25 ], [ 0, %23 ]
  %27 = phi i32 [ %63, %25 ], [ 0, %23 ]
  %28 = phi i64 [ %65, %25 ], [ 0, %23 ]
  %29 = getelementptr inbounds i32, i32* %22, i64 %26
  %30 = load i32, i32* %29, align 4, !tbaa !9
  %31 = getelementptr inbounds i32*, i32** %3, i64 %26
  %32 = load i32*, i32** %31, align 8, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %32, i64 %24
  %34 = load i32, i32* %33, align 4, !tbaa !9
  %35 = mul nsw i32 %34, %30
  %36 = add nsw i32 %35, %27
  %37 = or i64 %26, 1
  %38 = getelementptr inbounds i32, i32* %22, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !9
  %40 = getelementptr inbounds i32*, i32** %3, i64 %37
  %41 = load i32*, i32** %40, align 8, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %41, i64 %24
  %43 = load i32, i32* %42, align 4, !tbaa !9
  %44 = mul nsw i32 %43, %39
  %45 = add nsw i32 %44, %36
  %46 = or i64 %26, 2
  %47 = getelementptr inbounds i32, i32* %22, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !9
  %49 = getelementptr inbounds i32*, i32** %3, i64 %46
  %50 = load i32*, i32** %49, align 8, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %50, i64 %24
  %52 = load i32, i32* %51, align 4, !tbaa !9
  %53 = mul nsw i32 %52, %48
  %54 = add nsw i32 %53, %45
  %55 = or i64 %26, 3
  %56 = getelementptr inbounds i32, i32* %22, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !9
  %58 = getelementptr inbounds i32*, i32** %3, i64 %55
  %59 = load i32*, i32** %58, align 8, !tbaa !5
  %60 = getelementptr inbounds i32, i32* %59, i64 %24
  %61 = load i32, i32* %60, align 4, !tbaa !9
  %62 = mul nsw i32 %61, %57
  %63 = add nsw i32 %62, %54
  %64 = add nuw nsw i64 %26, 4
  %65 = add nuw i64 %28, 4
  %66 = icmp eq i64 %65, %15
  br i1 %66, label %67, label %25, !llvm.loop !22

67:                                               ; preds = %25, %23
  %68 = phi i32 [ undef, %23 ], [ %63, %25 ]
  %69 = phi i64 [ 0, %23 ], [ %64, %25 ]
  %70 = phi i32 [ 0, %23 ], [ %63, %25 ]
  br i1 %16, label %86, label %71

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %83, %71 ], [ %69, %67 ]
  %73 = phi i32 [ %82, %71 ], [ %70, %67 ]
  %74 = phi i64 [ %84, %71 ], [ 0, %67 ]
  %75 = getelementptr inbounds i32, i32* %22, i64 %72
  %76 = load i32, i32* %75, align 4, !tbaa !9
  %77 = getelementptr inbounds i32*, i32** %3, i64 %72
  %78 = load i32*, i32** %77, align 8, !tbaa !5
  %79 = getelementptr inbounds i32, i32* %78, i64 %24
  %80 = load i32, i32* %79, align 4, !tbaa !9
  %81 = mul nsw i32 %80, %76
  %82 = add nsw i32 %81, %73
  %83 = add nuw nsw i64 %72, 1
  %84 = add i64 %74, 1
  %85 = icmp eq i64 %84, %13
  br i1 %85, label %86, label %71, !llvm.loop !23

86:                                               ; preds = %71, %67
  %87 = phi i32 [ %68, %67 ], [ %82, %71 ]
  %88 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %87, i32* %88, align 4, !tbaa !9
  %89 = add nuw nsw i64 %24, 1
  %90 = icmp eq i64 %89, %11
  br i1 %90, label %91, label %23, !llvm.loop !24

91:                                               ; preds = %86
  %92 = add nuw nsw i64 %18, 1
  %93 = icmp eq i64 %92, %10
  br i1 %93, label %94, label %17, !llvm.loop !25

94:                                               ; preds = %91, %5
  ret i32** %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #8
  %4 = bitcast i8* %3 to i32**
  %5 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %6 = bitcast i8* %3 to i8**
  store i8* %5, i8** %6, align 8, !tbaa !5
  %7 = bitcast i8* %5 to i32*
  %8 = bitcast i8* %5 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %8, align 4, !tbaa !9
  %9 = getelementptr inbounds i32, i32* %7, i64 4
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %10, align 4, !tbaa !9
  %11 = getelementptr inbounds i32, i32* %7, i64 8
  store i32 9, i32* %11, align 4, !tbaa !9
  %12 = getelementptr inbounds i32, i32* %7, i64 9
  store i32 10, i32* %12, align 4, !tbaa !9
  %13 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %14 = getelementptr inbounds i32*, i32** %4, i64 1
  %15 = bitcast i32** %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !5
  %16 = bitcast i8* %13 to i32*
  %17 = bitcast i8* %13 to <4 x i32>*
  store <4 x i32> <i32 11, i32 12, i32 13, i32 14>, <4 x i32>* %17, align 4, !tbaa !9
  %18 = getelementptr inbounds i32, i32* %16, i64 4
  %19 = bitcast i32* %18 to <4 x i32>*
  store <4 x i32> <i32 15, i32 16, i32 17, i32 18>, <4 x i32>* %19, align 4, !tbaa !9
  %20 = getelementptr inbounds i32, i32* %16, i64 8
  store i32 19, i32* %20, align 4, !tbaa !9
  %21 = getelementptr inbounds i32, i32* %16, i64 9
  store i32 20, i32* %21, align 4, !tbaa !9
  %22 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %23 = getelementptr inbounds i32*, i32** %4, i64 2
  %24 = bitcast i32** %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !5
  %25 = bitcast i8* %22 to i32*
  %26 = bitcast i8* %22 to <4 x i32>*
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %26, align 4, !tbaa !9
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %28, align 4, !tbaa !9
  %29 = getelementptr inbounds i32, i32* %25, i64 8
  store i32 29, i32* %29, align 4, !tbaa !9
  %30 = getelementptr inbounds i32, i32* %25, i64 9
  store i32 30, i32* %30, align 4, !tbaa !9
  %31 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %32 = getelementptr inbounds i32*, i32** %4, i64 3
  %33 = bitcast i32** %32 to i8**
  store i8* %31, i8** %33, align 8, !tbaa !5
  %34 = bitcast i8* %31 to i32*
  %35 = bitcast i8* %31 to <4 x i32>*
  store <4 x i32> <i32 31, i32 32, i32 33, i32 34>, <4 x i32>* %35, align 4, !tbaa !9
  %36 = getelementptr inbounds i32, i32* %34, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> <i32 35, i32 36, i32 37, i32 38>, <4 x i32>* %37, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %34, i64 8
  store i32 39, i32* %38, align 4, !tbaa !9
  %39 = getelementptr inbounds i32, i32* %34, i64 9
  store i32 40, i32* %39, align 4, !tbaa !9
  %40 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %41 = getelementptr inbounds i32*, i32** %4, i64 4
  %42 = bitcast i32** %41 to i8**
  store i8* %40, i8** %42, align 8, !tbaa !5
  %43 = bitcast i8* %40 to i32*
  %44 = bitcast i8* %40 to <4 x i32>*
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %44, align 4, !tbaa !9
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %46, align 4, !tbaa !9
  %47 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 49, i32* %47, align 4, !tbaa !9
  %48 = getelementptr inbounds i32, i32* %43, i64 9
  store i32 50, i32* %48, align 4, !tbaa !9
  %49 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %50 = getelementptr inbounds i32*, i32** %4, i64 5
  %51 = bitcast i32** %50 to i8**
  store i8* %49, i8** %51, align 8, !tbaa !5
  %52 = bitcast i8* %49 to i32*
  %53 = bitcast i8* %49 to <4 x i32>*
  store <4 x i32> <i32 51, i32 52, i32 53, i32 54>, <4 x i32>* %53, align 4, !tbaa !9
  %54 = getelementptr inbounds i32, i32* %52, i64 4
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> <i32 55, i32 56, i32 57, i32 58>, <4 x i32>* %55, align 4, !tbaa !9
  %56 = getelementptr inbounds i32, i32* %52, i64 8
  store i32 59, i32* %56, align 4, !tbaa !9
  %57 = getelementptr inbounds i32, i32* %52, i64 9
  store i32 60, i32* %57, align 4, !tbaa !9
  %58 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %59 = getelementptr inbounds i32*, i32** %4, i64 6
  %60 = bitcast i32** %59 to i8**
  store i8* %58, i8** %60, align 8, !tbaa !5
  %61 = bitcast i8* %58 to i32*
  %62 = bitcast i8* %58 to <4 x i32>*
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %62, align 4, !tbaa !9
  %63 = getelementptr inbounds i32, i32* %61, i64 4
  %64 = bitcast i32* %63 to <4 x i32>*
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %64, align 4, !tbaa !9
  %65 = getelementptr inbounds i32, i32* %61, i64 8
  store i32 69, i32* %65, align 4, !tbaa !9
  %66 = getelementptr inbounds i32, i32* %61, i64 9
  store i32 70, i32* %66, align 4, !tbaa !9
  %67 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %68 = getelementptr inbounds i32*, i32** %4, i64 7
  %69 = bitcast i32** %68 to i8**
  store i8* %67, i8** %69, align 8, !tbaa !5
  %70 = bitcast i8* %67 to i32*
  %71 = bitcast i8* %67 to <4 x i32>*
  store <4 x i32> <i32 71, i32 72, i32 73, i32 74>, <4 x i32>* %71, align 4, !tbaa !9
  %72 = getelementptr inbounds i32, i32* %70, i64 4
  %73 = bitcast i32* %72 to <4 x i32>*
  store <4 x i32> <i32 75, i32 76, i32 77, i32 78>, <4 x i32>* %73, align 4, !tbaa !9
  %74 = getelementptr inbounds i32, i32* %70, i64 8
  store i32 79, i32* %74, align 4, !tbaa !9
  %75 = getelementptr inbounds i32, i32* %70, i64 9
  store i32 80, i32* %75, align 4, !tbaa !9
  %76 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %77 = getelementptr inbounds i32*, i32** %4, i64 8
  %78 = bitcast i32** %77 to i8**
  store i8* %76, i8** %78, align 8, !tbaa !5
  %79 = bitcast i8* %76 to i32*
  %80 = bitcast i8* %76 to <4 x i32>*
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %80, align 4, !tbaa !9
  %81 = getelementptr inbounds i32, i32* %79, i64 4
  %82 = bitcast i32* %81 to <4 x i32>*
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %82, align 4, !tbaa !9
  %83 = getelementptr inbounds i32, i32* %79, i64 8
  store i32 89, i32* %83, align 4, !tbaa !9
  %84 = getelementptr inbounds i32, i32* %79, i64 9
  store i32 90, i32* %84, align 4, !tbaa !9
  %85 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %86 = getelementptr inbounds i32*, i32** %4, i64 9
  %87 = bitcast i32** %86 to i8**
  store i8* %85, i8** %87, align 8, !tbaa !5
  %88 = bitcast i8* %85 to i32*
  %89 = bitcast i8* %85 to <4 x i32>*
  store <4 x i32> <i32 91, i32 92, i32 93, i32 94>, <4 x i32>* %89, align 4, !tbaa !9
  %90 = getelementptr inbounds i32, i32* %88, i64 4
  %91 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> <i32 95, i32 96, i32 97, i32 98>, <4 x i32>* %91, align 4, !tbaa !9
  %92 = getelementptr inbounds i32, i32* %88, i64 8
  store i32 99, i32* %92, align 4, !tbaa !9
  %93 = getelementptr inbounds i32, i32* %88, i64 9
  store i32 100, i32* %93, align 4, !tbaa !9
  %94 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #8
  %95 = bitcast i8* %94 to i32**
  %96 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %97 = bitcast i8* %94 to i8**
  store i8* %96, i8** %97, align 8, !tbaa !5
  %98 = bitcast i8* %96 to i32*
  %99 = bitcast i8* %96 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %99, align 4, !tbaa !9
  %100 = getelementptr inbounds i32, i32* %98, i64 4
  %101 = bitcast i32* %100 to <4 x i32>*
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %101, align 4, !tbaa !9
  %102 = getelementptr inbounds i32, i32* %98, i64 8
  store i32 9, i32* %102, align 4, !tbaa !9
  %103 = getelementptr inbounds i32, i32* %98, i64 9
  store i32 10, i32* %103, align 4, !tbaa !9
  %104 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %105 = getelementptr inbounds i32*, i32** %95, i64 1
  %106 = bitcast i32** %105 to i8**
  store i8* %104, i8** %106, align 8, !tbaa !5
  %107 = bitcast i8* %104 to i32*
  %108 = bitcast i8* %104 to <4 x i32>*
  store <4 x i32> <i32 11, i32 12, i32 13, i32 14>, <4 x i32>* %108, align 4, !tbaa !9
  %109 = getelementptr inbounds i32, i32* %107, i64 4
  %110 = bitcast i32* %109 to <4 x i32>*
  store <4 x i32> <i32 15, i32 16, i32 17, i32 18>, <4 x i32>* %110, align 4, !tbaa !9
  %111 = getelementptr inbounds i32, i32* %107, i64 8
  store i32 19, i32* %111, align 4, !tbaa !9
  %112 = getelementptr inbounds i32, i32* %107, i64 9
  store i32 20, i32* %112, align 4, !tbaa !9
  %113 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %114 = getelementptr inbounds i32*, i32** %95, i64 2
  %115 = bitcast i32** %114 to i8**
  store i8* %113, i8** %115, align 8, !tbaa !5
  %116 = bitcast i8* %113 to i32*
  %117 = bitcast i8* %113 to <4 x i32>*
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %117, align 4, !tbaa !9
  %118 = getelementptr inbounds i32, i32* %116, i64 4
  %119 = bitcast i32* %118 to <4 x i32>*
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %119, align 4, !tbaa !9
  %120 = getelementptr inbounds i32, i32* %116, i64 8
  store i32 29, i32* %120, align 4, !tbaa !9
  %121 = getelementptr inbounds i32, i32* %116, i64 9
  store i32 30, i32* %121, align 4, !tbaa !9
  %122 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %123 = getelementptr inbounds i32*, i32** %95, i64 3
  %124 = bitcast i32** %123 to i8**
  store i8* %122, i8** %124, align 8, !tbaa !5
  %125 = bitcast i8* %122 to i32*
  %126 = bitcast i8* %122 to <4 x i32>*
  store <4 x i32> <i32 31, i32 32, i32 33, i32 34>, <4 x i32>* %126, align 4, !tbaa !9
  %127 = getelementptr inbounds i32, i32* %125, i64 4
  %128 = bitcast i32* %127 to <4 x i32>*
  store <4 x i32> <i32 35, i32 36, i32 37, i32 38>, <4 x i32>* %128, align 4, !tbaa !9
  %129 = getelementptr inbounds i32, i32* %125, i64 8
  store i32 39, i32* %129, align 4, !tbaa !9
  %130 = getelementptr inbounds i32, i32* %125, i64 9
  store i32 40, i32* %130, align 4, !tbaa !9
  %131 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %132 = getelementptr inbounds i32*, i32** %95, i64 4
  %133 = bitcast i32** %132 to i8**
  store i8* %131, i8** %133, align 8, !tbaa !5
  %134 = bitcast i8* %131 to i32*
  %135 = bitcast i8* %131 to <4 x i32>*
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %135, align 4, !tbaa !9
  %136 = getelementptr inbounds i32, i32* %134, i64 4
  %137 = bitcast i32* %136 to <4 x i32>*
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %137, align 4, !tbaa !9
  %138 = getelementptr inbounds i32, i32* %134, i64 8
  store i32 49, i32* %138, align 4, !tbaa !9
  %139 = getelementptr inbounds i32, i32* %134, i64 9
  store i32 50, i32* %139, align 4, !tbaa !9
  %140 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %141 = getelementptr inbounds i32*, i32** %95, i64 5
  %142 = bitcast i32** %141 to i8**
  store i8* %140, i8** %142, align 8, !tbaa !5
  %143 = bitcast i8* %140 to i32*
  %144 = bitcast i8* %140 to <4 x i32>*
  store <4 x i32> <i32 51, i32 52, i32 53, i32 54>, <4 x i32>* %144, align 4, !tbaa !9
  %145 = getelementptr inbounds i32, i32* %143, i64 4
  %146 = bitcast i32* %145 to <4 x i32>*
  store <4 x i32> <i32 55, i32 56, i32 57, i32 58>, <4 x i32>* %146, align 4, !tbaa !9
  %147 = getelementptr inbounds i32, i32* %143, i64 8
  store i32 59, i32* %147, align 4, !tbaa !9
  %148 = getelementptr inbounds i32, i32* %143, i64 9
  store i32 60, i32* %148, align 4, !tbaa !9
  %149 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %150 = getelementptr inbounds i32*, i32** %95, i64 6
  %151 = bitcast i32** %150 to i8**
  store i8* %149, i8** %151, align 8, !tbaa !5
  %152 = bitcast i8* %149 to i32*
  %153 = bitcast i8* %149 to <4 x i32>*
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %153, align 4, !tbaa !9
  %154 = getelementptr inbounds i32, i32* %152, i64 4
  %155 = bitcast i32* %154 to <4 x i32>*
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %155, align 4, !tbaa !9
  %156 = getelementptr inbounds i32, i32* %152, i64 8
  store i32 69, i32* %156, align 4, !tbaa !9
  %157 = getelementptr inbounds i32, i32* %152, i64 9
  store i32 70, i32* %157, align 4, !tbaa !9
  %158 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %159 = getelementptr inbounds i32*, i32** %95, i64 7
  %160 = bitcast i32** %159 to i8**
  store i8* %158, i8** %160, align 8, !tbaa !5
  %161 = bitcast i8* %158 to i32*
  %162 = bitcast i8* %158 to <4 x i32>*
  store <4 x i32> <i32 71, i32 72, i32 73, i32 74>, <4 x i32>* %162, align 4, !tbaa !9
  %163 = getelementptr inbounds i32, i32* %161, i64 4
  %164 = bitcast i32* %163 to <4 x i32>*
  store <4 x i32> <i32 75, i32 76, i32 77, i32 78>, <4 x i32>* %164, align 4, !tbaa !9
  %165 = getelementptr inbounds i32, i32* %161, i64 8
  store i32 79, i32* %165, align 4, !tbaa !9
  %166 = getelementptr inbounds i32, i32* %161, i64 9
  store i32 80, i32* %166, align 4, !tbaa !9
  %167 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %168 = getelementptr inbounds i32*, i32** %95, i64 8
  %169 = bitcast i32** %168 to i8**
  store i8* %167, i8** %169, align 8, !tbaa !5
  %170 = bitcast i8* %167 to i32*
  %171 = bitcast i8* %167 to <4 x i32>*
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %171, align 4, !tbaa !9
  %172 = getelementptr inbounds i32, i32* %170, i64 4
  %173 = bitcast i32* %172 to <4 x i32>*
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %173, align 4, !tbaa !9
  %174 = getelementptr inbounds i32, i32* %170, i64 8
  store i32 89, i32* %174, align 4, !tbaa !9
  %175 = getelementptr inbounds i32, i32* %170, i64 9
  store i32 90, i32* %175, align 4, !tbaa !9
  %176 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %177 = getelementptr inbounds i32*, i32** %95, i64 9
  %178 = bitcast i32** %177 to i8**
  store i8* %176, i8** %178, align 8, !tbaa !5
  %179 = bitcast i8* %176 to i32*
  %180 = bitcast i8* %176 to <4 x i32>*
  store <4 x i32> <i32 91, i32 92, i32 93, i32 94>, <4 x i32>* %180, align 4, !tbaa !9
  %181 = getelementptr inbounds i32, i32* %179, i64 4
  %182 = bitcast i32* %181 to <4 x i32>*
  store <4 x i32> <i32 95, i32 96, i32 97, i32 98>, <4 x i32>* %182, align 4, !tbaa !9
  %183 = getelementptr inbounds i32, i32* %179, i64 8
  store i32 99, i32* %183, align 4, !tbaa !9
  %184 = getelementptr inbounds i32, i32* %179, i64 9
  store i32 100, i32* %184, align 4, !tbaa !9
  %185 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #8
  %186 = bitcast i8* %185 to i32**
  %187 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %188 = bitcast i8* %185 to i8**
  store i8* %187, i8** %188, align 8, !tbaa !5
  %189 = bitcast i8* %187 to i32*
  %190 = bitcast i8* %187 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %190, align 4, !tbaa !9
  %191 = getelementptr inbounds i32, i32* %189, i64 4
  %192 = bitcast i32* %191 to <4 x i32>*
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %192, align 4, !tbaa !9
  %193 = getelementptr inbounds i32, i32* %189, i64 8
  store i32 9, i32* %193, align 4, !tbaa !9
  %194 = getelementptr inbounds i32, i32* %189, i64 9
  store i32 10, i32* %194, align 4, !tbaa !9
  %195 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %196 = getelementptr inbounds i32*, i32** %186, i64 1
  %197 = bitcast i32** %196 to i8**
  store i8* %195, i8** %197, align 8, !tbaa !5
  %198 = bitcast i8* %195 to i32*
  %199 = bitcast i8* %195 to <4 x i32>*
  store <4 x i32> <i32 11, i32 12, i32 13, i32 14>, <4 x i32>* %199, align 4, !tbaa !9
  %200 = getelementptr inbounds i32, i32* %198, i64 4
  %201 = bitcast i32* %200 to <4 x i32>*
  store <4 x i32> <i32 15, i32 16, i32 17, i32 18>, <4 x i32>* %201, align 4, !tbaa !9
  %202 = getelementptr inbounds i32, i32* %198, i64 8
  store i32 19, i32* %202, align 4, !tbaa !9
  %203 = getelementptr inbounds i32, i32* %198, i64 9
  store i32 20, i32* %203, align 4, !tbaa !9
  %204 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %205 = getelementptr inbounds i32*, i32** %186, i64 2
  %206 = bitcast i32** %205 to i8**
  store i8* %204, i8** %206, align 8, !tbaa !5
  %207 = bitcast i8* %204 to i32*
  %208 = bitcast i8* %204 to <4 x i32>*
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %208, align 4, !tbaa !9
  %209 = getelementptr inbounds i32, i32* %207, i64 4
  %210 = bitcast i32* %209 to <4 x i32>*
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %210, align 4, !tbaa !9
  %211 = getelementptr inbounds i32, i32* %207, i64 8
  store i32 29, i32* %211, align 4, !tbaa !9
  %212 = getelementptr inbounds i32, i32* %207, i64 9
  store i32 30, i32* %212, align 4, !tbaa !9
  %213 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %214 = getelementptr inbounds i32*, i32** %186, i64 3
  %215 = bitcast i32** %214 to i8**
  store i8* %213, i8** %215, align 8, !tbaa !5
  %216 = bitcast i8* %213 to i32*
  %217 = bitcast i8* %213 to <4 x i32>*
  store <4 x i32> <i32 31, i32 32, i32 33, i32 34>, <4 x i32>* %217, align 4, !tbaa !9
  %218 = getelementptr inbounds i32, i32* %216, i64 4
  %219 = bitcast i32* %218 to <4 x i32>*
  store <4 x i32> <i32 35, i32 36, i32 37, i32 38>, <4 x i32>* %219, align 4, !tbaa !9
  %220 = getelementptr inbounds i32, i32* %216, i64 8
  store i32 39, i32* %220, align 4, !tbaa !9
  %221 = getelementptr inbounds i32, i32* %216, i64 9
  store i32 40, i32* %221, align 4, !tbaa !9
  %222 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %223 = getelementptr inbounds i32*, i32** %186, i64 4
  %224 = bitcast i32** %223 to i8**
  store i8* %222, i8** %224, align 8, !tbaa !5
  %225 = bitcast i8* %222 to i32*
  %226 = bitcast i8* %222 to <4 x i32>*
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %226, align 4, !tbaa !9
  %227 = getelementptr inbounds i32, i32* %225, i64 4
  %228 = bitcast i32* %227 to <4 x i32>*
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %228, align 4, !tbaa !9
  %229 = getelementptr inbounds i32, i32* %225, i64 8
  store i32 49, i32* %229, align 4, !tbaa !9
  %230 = getelementptr inbounds i32, i32* %225, i64 9
  store i32 50, i32* %230, align 4, !tbaa !9
  %231 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %232 = getelementptr inbounds i32*, i32** %186, i64 5
  %233 = bitcast i32** %232 to i8**
  store i8* %231, i8** %233, align 8, !tbaa !5
  %234 = bitcast i8* %231 to i32*
  %235 = bitcast i8* %231 to <4 x i32>*
  store <4 x i32> <i32 51, i32 52, i32 53, i32 54>, <4 x i32>* %235, align 4, !tbaa !9
  %236 = getelementptr inbounds i32, i32* %234, i64 4
  %237 = bitcast i32* %236 to <4 x i32>*
  store <4 x i32> <i32 55, i32 56, i32 57, i32 58>, <4 x i32>* %237, align 4, !tbaa !9
  %238 = getelementptr inbounds i32, i32* %234, i64 8
  store i32 59, i32* %238, align 4, !tbaa !9
  %239 = getelementptr inbounds i32, i32* %234, i64 9
  store i32 60, i32* %239, align 4, !tbaa !9
  %240 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %241 = getelementptr inbounds i32*, i32** %186, i64 6
  %242 = bitcast i32** %241 to i8**
  store i8* %240, i8** %242, align 8, !tbaa !5
  %243 = bitcast i8* %240 to i32*
  %244 = bitcast i8* %240 to <4 x i32>*
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %244, align 4, !tbaa !9
  %245 = getelementptr inbounds i32, i32* %243, i64 4
  %246 = bitcast i32* %245 to <4 x i32>*
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %246, align 4, !tbaa !9
  %247 = getelementptr inbounds i32, i32* %243, i64 8
  store i32 69, i32* %247, align 4, !tbaa !9
  %248 = getelementptr inbounds i32, i32* %243, i64 9
  store i32 70, i32* %248, align 4, !tbaa !9
  %249 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %250 = getelementptr inbounds i32*, i32** %186, i64 7
  %251 = bitcast i32** %250 to i8**
  store i8* %249, i8** %251, align 8, !tbaa !5
  %252 = bitcast i8* %249 to i32*
  %253 = bitcast i8* %249 to <4 x i32>*
  store <4 x i32> <i32 71, i32 72, i32 73, i32 74>, <4 x i32>* %253, align 4, !tbaa !9
  %254 = getelementptr inbounds i32, i32* %252, i64 4
  %255 = bitcast i32* %254 to <4 x i32>*
  store <4 x i32> <i32 75, i32 76, i32 77, i32 78>, <4 x i32>* %255, align 4, !tbaa !9
  %256 = getelementptr inbounds i32, i32* %252, i64 8
  store i32 79, i32* %256, align 4, !tbaa !9
  %257 = getelementptr inbounds i32, i32* %252, i64 9
  store i32 80, i32* %257, align 4, !tbaa !9
  %258 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %259 = getelementptr inbounds i32*, i32** %186, i64 8
  %260 = bitcast i32** %259 to i8**
  store i8* %258, i8** %260, align 8, !tbaa !5
  %261 = bitcast i8* %258 to i32*
  %262 = bitcast i8* %258 to <4 x i32>*
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %262, align 4, !tbaa !9
  %263 = getelementptr inbounds i32, i32* %261, i64 4
  %264 = bitcast i32* %263 to <4 x i32>*
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %264, align 4, !tbaa !9
  %265 = getelementptr inbounds i32, i32* %261, i64 8
  store i32 89, i32* %265, align 4, !tbaa !9
  %266 = getelementptr inbounds i32, i32* %261, i64 9
  store i32 90, i32* %266, align 4, !tbaa !9
  %267 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %268 = getelementptr inbounds i32*, i32** %186, i64 9
  %269 = bitcast i32** %268 to i8**
  store i8* %267, i8** %269, align 8, !tbaa !5
  %270 = bitcast i8* %267 to i32*
  %271 = bitcast i8* %267 to <4 x i32>*
  store <4 x i32> <i32 91, i32 92, i32 93, i32 94>, <4 x i32>* %271, align 4, !tbaa !9
  %272 = getelementptr inbounds i32, i32* %270, i64 4
  %273 = bitcast i32* %272 to <4 x i32>*
  store <4 x i32> <i32 95, i32 96, i32 97, i32 98>, <4 x i32>* %273, align 4, !tbaa !9
  %274 = getelementptr inbounds i32, i32* %270, i64 8
  store i32 99, i32* %274, align 4, !tbaa !9
  %275 = getelementptr inbounds i32, i32* %270, i64 9
  store i32 100, i32* %275, align 4, !tbaa !9
  %276 = tail call i64 @clock() #8
  %277 = load i32*, i32** %95, align 8, !tbaa !5
  %278 = load i32*, i32** %105, align 8, !tbaa !5
  %279 = load i32*, i32** %114, align 8, !tbaa !5
  %280 = load i32*, i32** %123, align 8, !tbaa !5
  %281 = load i32*, i32** %132, align 8, !tbaa !5
  %282 = load i32*, i32** %141, align 8, !tbaa !5
  %283 = load i32*, i32** %150, align 8, !tbaa !5
  %284 = load i32*, i32** %159, align 8, !tbaa !5
  %285 = load i32*, i32** %168, align 8, !tbaa !5
  %286 = load i32*, i32** %177, align 8, !tbaa !5
  br label %287

287:                                              ; preds = %2, %361
  %288 = phi i32 [ 0, %2 ], [ %362, %361 ]
  br label %289

289:                                              ; preds = %287, %358
  %290 = phi i64 [ %359, %358 ], [ 0, %287 ]
  %291 = getelementptr inbounds i32*, i32** %4, i64 %290
  %292 = getelementptr inbounds i32*, i32** %186, i64 %290
  %293 = load i32*, i32** %292, align 8, !tbaa !5
  %294 = load i32*, i32** %291, align 8, !tbaa !5
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = getelementptr inbounds i32, i32* %294, i64 2
  %297 = getelementptr inbounds i32, i32* %294, i64 3
  %298 = getelementptr inbounds i32, i32* %294, i64 4
  %299 = getelementptr inbounds i32, i32* %294, i64 5
  %300 = getelementptr inbounds i32, i32* %294, i64 6
  %301 = getelementptr inbounds i32, i32* %294, i64 7
  %302 = getelementptr inbounds i32, i32* %294, i64 8
  %303 = getelementptr inbounds i32, i32* %294, i64 9
  br label %304

304:                                              ; preds = %304, %289
  %305 = phi i64 [ %356, %304 ], [ 0, %289 ]
  %306 = load i32, i32* %294, align 4, !tbaa !9
  %307 = getelementptr inbounds i32, i32* %277, i64 %305
  %308 = load i32, i32* %307, align 4, !tbaa !9
  %309 = mul nsw i32 %308, %306
  %310 = load i32, i32* %295, align 4, !tbaa !9
  %311 = getelementptr inbounds i32, i32* %278, i64 %305
  %312 = load i32, i32* %311, align 4, !tbaa !9
  %313 = mul nsw i32 %312, %310
  %314 = add nsw i32 %313, %309
  %315 = load i32, i32* %296, align 4, !tbaa !9
  %316 = getelementptr inbounds i32, i32* %279, i64 %305
  %317 = load i32, i32* %316, align 4, !tbaa !9
  %318 = mul nsw i32 %317, %315
  %319 = add nsw i32 %318, %314
  %320 = load i32, i32* %297, align 4, !tbaa !9
  %321 = getelementptr inbounds i32, i32* %280, i64 %305
  %322 = load i32, i32* %321, align 4, !tbaa !9
  %323 = mul nsw i32 %322, %320
  %324 = add nsw i32 %323, %319
  %325 = load i32, i32* %298, align 4, !tbaa !9
  %326 = getelementptr inbounds i32, i32* %281, i64 %305
  %327 = load i32, i32* %326, align 4, !tbaa !9
  %328 = mul nsw i32 %327, %325
  %329 = add nsw i32 %328, %324
  %330 = load i32, i32* %299, align 4, !tbaa !9
  %331 = getelementptr inbounds i32, i32* %282, i64 %305
  %332 = load i32, i32* %331, align 4, !tbaa !9
  %333 = mul nsw i32 %332, %330
  %334 = add nsw i32 %333, %329
  %335 = load i32, i32* %300, align 4, !tbaa !9
  %336 = getelementptr inbounds i32, i32* %283, i64 %305
  %337 = load i32, i32* %336, align 4, !tbaa !9
  %338 = mul nsw i32 %337, %335
  %339 = add nsw i32 %338, %334
  %340 = load i32, i32* %301, align 4, !tbaa !9
  %341 = getelementptr inbounds i32, i32* %284, i64 %305
  %342 = load i32, i32* %341, align 4, !tbaa !9
  %343 = mul nsw i32 %342, %340
  %344 = add nsw i32 %343, %339
  %345 = load i32, i32* %302, align 4, !tbaa !9
  %346 = getelementptr inbounds i32, i32* %285, i64 %305
  %347 = load i32, i32* %346, align 4, !tbaa !9
  %348 = mul nsw i32 %347, %345
  %349 = add nsw i32 %348, %344
  %350 = load i32, i32* %303, align 4, !tbaa !9
  %351 = getelementptr inbounds i32, i32* %286, i64 %305
  %352 = load i32, i32* %351, align 4, !tbaa !9
  %353 = mul nsw i32 %352, %350
  %354 = add nsw i32 %353, %349
  %355 = getelementptr inbounds i32, i32* %293, i64 %305
  store i32 %354, i32* %355, align 4, !tbaa !9
  %356 = add nuw nsw i64 %305, 1
  %357 = icmp eq i64 %356, 10
  br i1 %357, label %358, label %304, !llvm.loop !24

358:                                              ; preds = %304
  %359 = add nuw nsw i64 %290, 1
  %360 = icmp eq i64 %359, 10
  br i1 %360, label %361, label %289, !llvm.loop !25

361:                                              ; preds = %358
  %362 = add nuw nsw i32 %288, 1
  %363 = icmp eq i32 %362, 3000000
  br i1 %363, label %364, label %287, !llvm.loop !26

364:                                              ; preds = %361
  %365 = bitcast i32* %277 to i8*
  %366 = bitcast i32* %278 to i8*
  %367 = bitcast i32* %279 to i8*
  %368 = bitcast i32* %280 to i8*
  %369 = bitcast i32* %281 to i8*
  %370 = bitcast i32* %282 to i8*
  %371 = bitcast i32* %283 to i8*
  %372 = bitcast i32* %284 to i8*
  %373 = bitcast i32* %285 to i8*
  %374 = bitcast i32* %286 to i8*
  %375 = load i32*, i32** %186, align 8, !tbaa !5
  %376 = load i32, i32* %375, align 4, !tbaa !9
  %377 = load i32*, i32** %205, align 8, !tbaa !5
  %378 = getelementptr inbounds i32, i32* %377, i64 3
  %379 = load i32, i32* %378, align 4, !tbaa !9
  %380 = load i32*, i32** %214, align 8, !tbaa !5
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  %382 = load i32, i32* %381, align 4, !tbaa !9
  %383 = load i32*, i32** %223, align 8, !tbaa !5
  %384 = getelementptr inbounds i32, i32* %383, i64 4
  %385 = load i32, i32* %384, align 4, !tbaa !9
  %386 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %376, i32 noundef %379, i32 noundef %382, i32 noundef %385)
  %387 = tail call i64 @clock() #8
  %388 = sub nsw i64 %387, %276
  %389 = sitofp i64 %388 to double
  %390 = fdiv double %389, 1.000000e+06
  %391 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %390)
  %392 = load i8*, i8** %87, align 8, !tbaa !5
  tail call void @free(i8* noundef %392) #8
  %393 = load i8*, i8** %78, align 8, !tbaa !5
  tail call void @free(i8* noundef %393) #8
  %394 = load i8*, i8** %69, align 8, !tbaa !5
  tail call void @free(i8* noundef %394) #8
  %395 = load i8*, i8** %60, align 8, !tbaa !5
  tail call void @free(i8* noundef %395) #8
  %396 = load i8*, i8** %51, align 8, !tbaa !5
  tail call void @free(i8* noundef %396) #8
  %397 = load i8*, i8** %42, align 8, !tbaa !5
  tail call void @free(i8* noundef %397) #8
  %398 = load i8*, i8** %33, align 8, !tbaa !5
  tail call void @free(i8* noundef %398) #8
  %399 = load i8*, i8** %24, align 8, !tbaa !5
  tail call void @free(i8* noundef %399) #8
  %400 = load i8*, i8** %15, align 8, !tbaa !5
  tail call void @free(i8* noundef %400) #8
  %401 = load i8*, i8** %6, align 8, !tbaa !5
  tail call void @free(i8* noundef %401) #8
  tail call void @free(i8* noundef nonnull %3) #8
  tail call void @free(i8* noundef %374) #8
  tail call void @free(i8* noundef %373) #8
  tail call void @free(i8* noundef %372) #8
  tail call void @free(i8* noundef %371) #8
  tail call void @free(i8* noundef %370) #8
  tail call void @free(i8* noundef %369) #8
  tail call void @free(i8* noundef %368) #8
  tail call void @free(i8* noundef %367) #8
  tail call void @free(i8* noundef %366) #8
  tail call void @free(i8* noundef %365) #8
  tail call void @free(i8* noundef nonnull %94) #8
  %402 = load i8*, i8** %269, align 8, !tbaa !5
  tail call void @free(i8* noundef %402) #8
  tail call void @free(i8* noundef %258) #8
  tail call void @free(i8* noundef %249) #8
  tail call void @free(i8* noundef %240) #8
  %403 = load i8*, i8** %233, align 8, !tbaa !5
  tail call void @free(i8* noundef %403) #8
  %404 = bitcast i32* %383 to i8*
  tail call void @free(i8* noundef %404) #8
  %405 = bitcast i32* %380 to i8*
  tail call void @free(i8* noundef %405) #8
  %406 = bitcast i32* %377 to i8*
  tail call void @free(i8* noundef %406) #8
  %407 = load i8*, i8** %197, align 8, !tbaa !5
  tail call void @free(i8* noundef %407) #8
  %408 = bitcast i32* %375 to i8*
  tail call void @free(i8* noundef %408) #8
  tail call void @free(i8* noundef nonnull %185) #8
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !12, !17, !13}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
