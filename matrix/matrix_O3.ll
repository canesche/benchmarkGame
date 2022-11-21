; ModuleID = 'matrix/matrix.c'
source_filename = "matrix/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1

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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #8
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ 3000000, %2 ]
  %11 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #8
  %12 = bitcast i8* %11 to i32**
  %13 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %14 = bitcast i8* %11 to i8**
  store i8* %13, i8** %14, align 8, !tbaa !5
  %15 = bitcast i8* %13 to i32*
  %16 = bitcast i8* %13 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %16, align 4, !tbaa !9
  %17 = getelementptr inbounds i32, i32* %15, i64 4
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %18, align 4, !tbaa !9
  %19 = getelementptr inbounds i32, i32* %15, i64 8
  store i32 9, i32* %19, align 4, !tbaa !9
  %20 = getelementptr inbounds i32, i32* %15, i64 9
  store i32 10, i32* %20, align 4, !tbaa !9
  %21 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %22 = getelementptr inbounds i32*, i32** %12, i64 1
  %23 = bitcast i32** %22 to i8**
  store i8* %21, i8** %23, align 8, !tbaa !5
  %24 = bitcast i8* %21 to i32*
  %25 = bitcast i8* %21 to <4 x i32>*
  store <4 x i32> <i32 11, i32 12, i32 13, i32 14>, <4 x i32>* %25, align 4, !tbaa !9
  %26 = getelementptr inbounds i32, i32* %24, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> <i32 15, i32 16, i32 17, i32 18>, <4 x i32>* %27, align 4, !tbaa !9
  %28 = getelementptr inbounds i32, i32* %24, i64 8
  store i32 19, i32* %28, align 4, !tbaa !9
  %29 = getelementptr inbounds i32, i32* %24, i64 9
  store i32 20, i32* %29, align 4, !tbaa !9
  %30 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %31 = getelementptr inbounds i32*, i32** %12, i64 2
  %32 = bitcast i32** %31 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !5
  %33 = bitcast i8* %30 to i32*
  %34 = bitcast i8* %30 to <4 x i32>*
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %34, align 4, !tbaa !9
  %35 = getelementptr inbounds i32, i32* %33, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %36, align 4, !tbaa !9
  %37 = getelementptr inbounds i32, i32* %33, i64 8
  store i32 29, i32* %37, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %33, i64 9
  store i32 30, i32* %38, align 4, !tbaa !9
  %39 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %40 = getelementptr inbounds i32*, i32** %12, i64 3
  %41 = bitcast i32** %40 to i8**
  store i8* %39, i8** %41, align 8, !tbaa !5
  %42 = bitcast i8* %39 to i32*
  %43 = bitcast i8* %39 to <4 x i32>*
  store <4 x i32> <i32 31, i32 32, i32 33, i32 34>, <4 x i32>* %43, align 4, !tbaa !9
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> <i32 35, i32 36, i32 37, i32 38>, <4 x i32>* %45, align 4, !tbaa !9
  %46 = getelementptr inbounds i32, i32* %42, i64 8
  store i32 39, i32* %46, align 4, !tbaa !9
  %47 = getelementptr inbounds i32, i32* %42, i64 9
  store i32 40, i32* %47, align 4, !tbaa !9
  %48 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %49 = getelementptr inbounds i32*, i32** %12, i64 4
  %50 = bitcast i32** %49 to i8**
  store i8* %48, i8** %50, align 8, !tbaa !5
  %51 = bitcast i8* %48 to i32*
  %52 = bitcast i8* %48 to <4 x i32>*
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %52, align 4, !tbaa !9
  %53 = getelementptr inbounds i32, i32* %51, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %54, align 4, !tbaa !9
  %55 = getelementptr inbounds i32, i32* %51, i64 8
  store i32 49, i32* %55, align 4, !tbaa !9
  %56 = getelementptr inbounds i32, i32* %51, i64 9
  store i32 50, i32* %56, align 4, !tbaa !9
  %57 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %58 = getelementptr inbounds i32*, i32** %12, i64 5
  %59 = bitcast i32** %58 to i8**
  store i8* %57, i8** %59, align 8, !tbaa !5
  %60 = bitcast i8* %57 to i32*
  %61 = bitcast i8* %57 to <4 x i32>*
  store <4 x i32> <i32 51, i32 52, i32 53, i32 54>, <4 x i32>* %61, align 4, !tbaa !9
  %62 = getelementptr inbounds i32, i32* %60, i64 4
  %63 = bitcast i32* %62 to <4 x i32>*
  store <4 x i32> <i32 55, i32 56, i32 57, i32 58>, <4 x i32>* %63, align 4, !tbaa !9
  %64 = getelementptr inbounds i32, i32* %60, i64 8
  store i32 59, i32* %64, align 4, !tbaa !9
  %65 = getelementptr inbounds i32, i32* %60, i64 9
  store i32 60, i32* %65, align 4, !tbaa !9
  %66 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %67 = getelementptr inbounds i32*, i32** %12, i64 6
  %68 = bitcast i32** %67 to i8**
  store i8* %66, i8** %68, align 8, !tbaa !5
  %69 = bitcast i8* %66 to i32*
  %70 = bitcast i8* %66 to <4 x i32>*
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %70, align 4, !tbaa !9
  %71 = getelementptr inbounds i32, i32* %69, i64 4
  %72 = bitcast i32* %71 to <4 x i32>*
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %72, align 4, !tbaa !9
  %73 = getelementptr inbounds i32, i32* %69, i64 8
  store i32 69, i32* %73, align 4, !tbaa !9
  %74 = getelementptr inbounds i32, i32* %69, i64 9
  store i32 70, i32* %74, align 4, !tbaa !9
  %75 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %76 = getelementptr inbounds i32*, i32** %12, i64 7
  %77 = bitcast i32** %76 to i8**
  store i8* %75, i8** %77, align 8, !tbaa !5
  %78 = bitcast i8* %75 to i32*
  %79 = bitcast i8* %75 to <4 x i32>*
  store <4 x i32> <i32 71, i32 72, i32 73, i32 74>, <4 x i32>* %79, align 4, !tbaa !9
  %80 = getelementptr inbounds i32, i32* %78, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  store <4 x i32> <i32 75, i32 76, i32 77, i32 78>, <4 x i32>* %81, align 4, !tbaa !9
  %82 = getelementptr inbounds i32, i32* %78, i64 8
  store i32 79, i32* %82, align 4, !tbaa !9
  %83 = getelementptr inbounds i32, i32* %78, i64 9
  store i32 80, i32* %83, align 4, !tbaa !9
  %84 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %85 = getelementptr inbounds i32*, i32** %12, i64 8
  %86 = bitcast i32** %85 to i8**
  store i8* %84, i8** %86, align 8, !tbaa !5
  %87 = bitcast i8* %84 to i32*
  %88 = bitcast i8* %84 to <4 x i32>*
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %88, align 4, !tbaa !9
  %89 = getelementptr inbounds i32, i32* %87, i64 4
  %90 = bitcast i32* %89 to <4 x i32>*
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %90, align 4, !tbaa !9
  %91 = getelementptr inbounds i32, i32* %87, i64 8
  store i32 89, i32* %91, align 4, !tbaa !9
  %92 = getelementptr inbounds i32, i32* %87, i64 9
  store i32 90, i32* %92, align 4, !tbaa !9
  %93 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %94 = getelementptr inbounds i32*, i32** %12, i64 9
  %95 = bitcast i32** %94 to i8**
  store i8* %93, i8** %95, align 8, !tbaa !5
  %96 = bitcast i8* %93 to i32*
  %97 = bitcast i8* %93 to <4 x i32>*
  store <4 x i32> <i32 91, i32 92, i32 93, i32 94>, <4 x i32>* %97, align 4, !tbaa !9
  %98 = getelementptr inbounds i32, i32* %96, i64 4
  %99 = bitcast i32* %98 to <4 x i32>*
  store <4 x i32> <i32 95, i32 96, i32 97, i32 98>, <4 x i32>* %99, align 4, !tbaa !9
  %100 = getelementptr inbounds i32, i32* %96, i64 8
  store i32 99, i32* %100, align 4, !tbaa !9
  %101 = getelementptr inbounds i32, i32* %96, i64 9
  store i32 100, i32* %101, align 4, !tbaa !9
  %102 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #8
  %103 = bitcast i8* %102 to i32**
  %104 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %105 = bitcast i8* %102 to i8**
  store i8* %104, i8** %105, align 8, !tbaa !5
  %106 = bitcast i8* %104 to i32*
  %107 = bitcast i8* %104 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %107, align 4, !tbaa !9
  %108 = getelementptr inbounds i32, i32* %106, i64 4
  %109 = bitcast i32* %108 to <4 x i32>*
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %109, align 4, !tbaa !9
  %110 = getelementptr inbounds i32, i32* %106, i64 8
  store i32 9, i32* %110, align 4, !tbaa !9
  %111 = getelementptr inbounds i32, i32* %106, i64 9
  store i32 10, i32* %111, align 4, !tbaa !9
  %112 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %113 = getelementptr inbounds i32*, i32** %103, i64 1
  %114 = bitcast i32** %113 to i8**
  store i8* %112, i8** %114, align 8, !tbaa !5
  %115 = bitcast i8* %112 to i32*
  %116 = bitcast i8* %112 to <4 x i32>*
  store <4 x i32> <i32 11, i32 12, i32 13, i32 14>, <4 x i32>* %116, align 4, !tbaa !9
  %117 = getelementptr inbounds i32, i32* %115, i64 4
  %118 = bitcast i32* %117 to <4 x i32>*
  store <4 x i32> <i32 15, i32 16, i32 17, i32 18>, <4 x i32>* %118, align 4, !tbaa !9
  %119 = getelementptr inbounds i32, i32* %115, i64 8
  store i32 19, i32* %119, align 4, !tbaa !9
  %120 = getelementptr inbounds i32, i32* %115, i64 9
  store i32 20, i32* %120, align 4, !tbaa !9
  %121 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %122 = getelementptr inbounds i32*, i32** %103, i64 2
  %123 = bitcast i32** %122 to i8**
  store i8* %121, i8** %123, align 8, !tbaa !5
  %124 = bitcast i8* %121 to i32*
  %125 = bitcast i8* %121 to <4 x i32>*
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %125, align 4, !tbaa !9
  %126 = getelementptr inbounds i32, i32* %124, i64 4
  %127 = bitcast i32* %126 to <4 x i32>*
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %127, align 4, !tbaa !9
  %128 = getelementptr inbounds i32, i32* %124, i64 8
  store i32 29, i32* %128, align 4, !tbaa !9
  %129 = getelementptr inbounds i32, i32* %124, i64 9
  store i32 30, i32* %129, align 4, !tbaa !9
  %130 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %131 = getelementptr inbounds i32*, i32** %103, i64 3
  %132 = bitcast i32** %131 to i8**
  store i8* %130, i8** %132, align 8, !tbaa !5
  %133 = bitcast i8* %130 to i32*
  %134 = bitcast i8* %130 to <4 x i32>*
  store <4 x i32> <i32 31, i32 32, i32 33, i32 34>, <4 x i32>* %134, align 4, !tbaa !9
  %135 = getelementptr inbounds i32, i32* %133, i64 4
  %136 = bitcast i32* %135 to <4 x i32>*
  store <4 x i32> <i32 35, i32 36, i32 37, i32 38>, <4 x i32>* %136, align 4, !tbaa !9
  %137 = getelementptr inbounds i32, i32* %133, i64 8
  store i32 39, i32* %137, align 4, !tbaa !9
  %138 = getelementptr inbounds i32, i32* %133, i64 9
  store i32 40, i32* %138, align 4, !tbaa !9
  %139 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %140 = getelementptr inbounds i32*, i32** %103, i64 4
  %141 = bitcast i32** %140 to i8**
  store i8* %139, i8** %141, align 8, !tbaa !5
  %142 = bitcast i8* %139 to i32*
  %143 = bitcast i8* %139 to <4 x i32>*
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %143, align 4, !tbaa !9
  %144 = getelementptr inbounds i32, i32* %142, i64 4
  %145 = bitcast i32* %144 to <4 x i32>*
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %145, align 4, !tbaa !9
  %146 = getelementptr inbounds i32, i32* %142, i64 8
  store i32 49, i32* %146, align 4, !tbaa !9
  %147 = getelementptr inbounds i32, i32* %142, i64 9
  store i32 50, i32* %147, align 4, !tbaa !9
  %148 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %149 = getelementptr inbounds i32*, i32** %103, i64 5
  %150 = bitcast i32** %149 to i8**
  store i8* %148, i8** %150, align 8, !tbaa !5
  %151 = bitcast i8* %148 to i32*
  %152 = bitcast i8* %148 to <4 x i32>*
  store <4 x i32> <i32 51, i32 52, i32 53, i32 54>, <4 x i32>* %152, align 4, !tbaa !9
  %153 = getelementptr inbounds i32, i32* %151, i64 4
  %154 = bitcast i32* %153 to <4 x i32>*
  store <4 x i32> <i32 55, i32 56, i32 57, i32 58>, <4 x i32>* %154, align 4, !tbaa !9
  %155 = getelementptr inbounds i32, i32* %151, i64 8
  store i32 59, i32* %155, align 4, !tbaa !9
  %156 = getelementptr inbounds i32, i32* %151, i64 9
  store i32 60, i32* %156, align 4, !tbaa !9
  %157 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %158 = getelementptr inbounds i32*, i32** %103, i64 6
  %159 = bitcast i32** %158 to i8**
  store i8* %157, i8** %159, align 8, !tbaa !5
  %160 = bitcast i8* %157 to i32*
  %161 = bitcast i8* %157 to <4 x i32>*
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %161, align 4, !tbaa !9
  %162 = getelementptr inbounds i32, i32* %160, i64 4
  %163 = bitcast i32* %162 to <4 x i32>*
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %163, align 4, !tbaa !9
  %164 = getelementptr inbounds i32, i32* %160, i64 8
  store i32 69, i32* %164, align 4, !tbaa !9
  %165 = getelementptr inbounds i32, i32* %160, i64 9
  store i32 70, i32* %165, align 4, !tbaa !9
  %166 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %167 = getelementptr inbounds i32*, i32** %103, i64 7
  %168 = bitcast i32** %167 to i8**
  store i8* %166, i8** %168, align 8, !tbaa !5
  %169 = bitcast i8* %166 to i32*
  %170 = bitcast i8* %166 to <4 x i32>*
  store <4 x i32> <i32 71, i32 72, i32 73, i32 74>, <4 x i32>* %170, align 4, !tbaa !9
  %171 = getelementptr inbounds i32, i32* %169, i64 4
  %172 = bitcast i32* %171 to <4 x i32>*
  store <4 x i32> <i32 75, i32 76, i32 77, i32 78>, <4 x i32>* %172, align 4, !tbaa !9
  %173 = getelementptr inbounds i32, i32* %169, i64 8
  store i32 79, i32* %173, align 4, !tbaa !9
  %174 = getelementptr inbounds i32, i32* %169, i64 9
  store i32 80, i32* %174, align 4, !tbaa !9
  %175 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %176 = getelementptr inbounds i32*, i32** %103, i64 8
  %177 = bitcast i32** %176 to i8**
  store i8* %175, i8** %177, align 8, !tbaa !5
  %178 = bitcast i8* %175 to i32*
  %179 = bitcast i8* %175 to <4 x i32>*
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %179, align 4, !tbaa !9
  %180 = getelementptr inbounds i32, i32* %178, i64 4
  %181 = bitcast i32* %180 to <4 x i32>*
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %181, align 4, !tbaa !9
  %182 = getelementptr inbounds i32, i32* %178, i64 8
  store i32 89, i32* %182, align 4, !tbaa !9
  %183 = getelementptr inbounds i32, i32* %178, i64 9
  store i32 90, i32* %183, align 4, !tbaa !9
  %184 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %185 = getelementptr inbounds i32*, i32** %103, i64 9
  %186 = bitcast i32** %185 to i8**
  store i8* %184, i8** %186, align 8, !tbaa !5
  %187 = bitcast i8* %184 to i32*
  %188 = bitcast i8* %184 to <4 x i32>*
  store <4 x i32> <i32 91, i32 92, i32 93, i32 94>, <4 x i32>* %188, align 4, !tbaa !9
  %189 = getelementptr inbounds i32, i32* %187, i64 4
  %190 = bitcast i32* %189 to <4 x i32>*
  store <4 x i32> <i32 95, i32 96, i32 97, i32 98>, <4 x i32>* %190, align 4, !tbaa !9
  %191 = getelementptr inbounds i32, i32* %187, i64 8
  store i32 99, i32* %191, align 4, !tbaa !9
  %192 = getelementptr inbounds i32, i32* %187, i64 9
  store i32 100, i32* %192, align 4, !tbaa !9
  %193 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #8
  %194 = bitcast i8* %193 to i32**
  %195 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %196 = bitcast i8* %193 to i8**
  store i8* %195, i8** %196, align 8, !tbaa !5
  %197 = bitcast i8* %195 to i32*
  %198 = bitcast i8* %195 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %198, align 4, !tbaa !9
  %199 = getelementptr inbounds i32, i32* %197, i64 4
  %200 = bitcast i32* %199 to <4 x i32>*
  store <4 x i32> <i32 5, i32 6, i32 7, i32 8>, <4 x i32>* %200, align 4, !tbaa !9
  %201 = getelementptr inbounds i32, i32* %197, i64 8
  store i32 9, i32* %201, align 4, !tbaa !9
  %202 = getelementptr inbounds i32, i32* %197, i64 9
  store i32 10, i32* %202, align 4, !tbaa !9
  %203 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %204 = getelementptr inbounds i32*, i32** %194, i64 1
  %205 = bitcast i32** %204 to i8**
  store i8* %203, i8** %205, align 8, !tbaa !5
  %206 = bitcast i8* %203 to i32*
  %207 = bitcast i8* %203 to <4 x i32>*
  store <4 x i32> <i32 11, i32 12, i32 13, i32 14>, <4 x i32>* %207, align 4, !tbaa !9
  %208 = getelementptr inbounds i32, i32* %206, i64 4
  %209 = bitcast i32* %208 to <4 x i32>*
  store <4 x i32> <i32 15, i32 16, i32 17, i32 18>, <4 x i32>* %209, align 4, !tbaa !9
  %210 = getelementptr inbounds i32, i32* %206, i64 8
  store i32 19, i32* %210, align 4, !tbaa !9
  %211 = getelementptr inbounds i32, i32* %206, i64 9
  store i32 20, i32* %211, align 4, !tbaa !9
  %212 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %213 = getelementptr inbounds i32*, i32** %194, i64 2
  %214 = bitcast i32** %213 to i8**
  store i8* %212, i8** %214, align 8, !tbaa !5
  %215 = bitcast i8* %212 to i32*
  %216 = bitcast i8* %212 to <4 x i32>*
  store <4 x i32> <i32 21, i32 22, i32 23, i32 24>, <4 x i32>* %216, align 4, !tbaa !9
  %217 = getelementptr inbounds i32, i32* %215, i64 4
  %218 = bitcast i32* %217 to <4 x i32>*
  store <4 x i32> <i32 25, i32 26, i32 27, i32 28>, <4 x i32>* %218, align 4, !tbaa !9
  %219 = getelementptr inbounds i32, i32* %215, i64 8
  store i32 29, i32* %219, align 4, !tbaa !9
  %220 = getelementptr inbounds i32, i32* %215, i64 9
  store i32 30, i32* %220, align 4, !tbaa !9
  %221 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %222 = getelementptr inbounds i32*, i32** %194, i64 3
  %223 = bitcast i32** %222 to i8**
  store i8* %221, i8** %223, align 8, !tbaa !5
  %224 = bitcast i8* %221 to i32*
  %225 = bitcast i8* %221 to <4 x i32>*
  store <4 x i32> <i32 31, i32 32, i32 33, i32 34>, <4 x i32>* %225, align 4, !tbaa !9
  %226 = getelementptr inbounds i32, i32* %224, i64 4
  %227 = bitcast i32* %226 to <4 x i32>*
  store <4 x i32> <i32 35, i32 36, i32 37, i32 38>, <4 x i32>* %227, align 4, !tbaa !9
  %228 = getelementptr inbounds i32, i32* %224, i64 8
  store i32 39, i32* %228, align 4, !tbaa !9
  %229 = getelementptr inbounds i32, i32* %224, i64 9
  store i32 40, i32* %229, align 4, !tbaa !9
  %230 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %231 = getelementptr inbounds i32*, i32** %194, i64 4
  %232 = bitcast i32** %231 to i8**
  store i8* %230, i8** %232, align 8, !tbaa !5
  %233 = bitcast i8* %230 to i32*
  %234 = bitcast i8* %230 to <4 x i32>*
  store <4 x i32> <i32 41, i32 42, i32 43, i32 44>, <4 x i32>* %234, align 4, !tbaa !9
  %235 = getelementptr inbounds i32, i32* %233, i64 4
  %236 = bitcast i32* %235 to <4 x i32>*
  store <4 x i32> <i32 45, i32 46, i32 47, i32 48>, <4 x i32>* %236, align 4, !tbaa !9
  %237 = getelementptr inbounds i32, i32* %233, i64 8
  store i32 49, i32* %237, align 4, !tbaa !9
  %238 = getelementptr inbounds i32, i32* %233, i64 9
  store i32 50, i32* %238, align 4, !tbaa !9
  %239 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %240 = getelementptr inbounds i32*, i32** %194, i64 5
  %241 = bitcast i32** %240 to i8**
  store i8* %239, i8** %241, align 8, !tbaa !5
  %242 = bitcast i8* %239 to i32*
  %243 = bitcast i8* %239 to <4 x i32>*
  store <4 x i32> <i32 51, i32 52, i32 53, i32 54>, <4 x i32>* %243, align 4, !tbaa !9
  %244 = getelementptr inbounds i32, i32* %242, i64 4
  %245 = bitcast i32* %244 to <4 x i32>*
  store <4 x i32> <i32 55, i32 56, i32 57, i32 58>, <4 x i32>* %245, align 4, !tbaa !9
  %246 = getelementptr inbounds i32, i32* %242, i64 8
  store i32 59, i32* %246, align 4, !tbaa !9
  %247 = getelementptr inbounds i32, i32* %242, i64 9
  store i32 60, i32* %247, align 4, !tbaa !9
  %248 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %249 = getelementptr inbounds i32*, i32** %194, i64 6
  %250 = bitcast i32** %249 to i8**
  store i8* %248, i8** %250, align 8, !tbaa !5
  %251 = bitcast i8* %248 to i32*
  %252 = bitcast i8* %248 to <4 x i32>*
  store <4 x i32> <i32 61, i32 62, i32 63, i32 64>, <4 x i32>* %252, align 4, !tbaa !9
  %253 = getelementptr inbounds i32, i32* %251, i64 4
  %254 = bitcast i32* %253 to <4 x i32>*
  store <4 x i32> <i32 65, i32 66, i32 67, i32 68>, <4 x i32>* %254, align 4, !tbaa !9
  %255 = getelementptr inbounds i32, i32* %251, i64 8
  store i32 69, i32* %255, align 4, !tbaa !9
  %256 = getelementptr inbounds i32, i32* %251, i64 9
  store i32 70, i32* %256, align 4, !tbaa !9
  %257 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %258 = getelementptr inbounds i32*, i32** %194, i64 7
  %259 = bitcast i32** %258 to i8**
  store i8* %257, i8** %259, align 8, !tbaa !5
  %260 = bitcast i8* %257 to i32*
  %261 = bitcast i8* %257 to <4 x i32>*
  store <4 x i32> <i32 71, i32 72, i32 73, i32 74>, <4 x i32>* %261, align 4, !tbaa !9
  %262 = getelementptr inbounds i32, i32* %260, i64 4
  %263 = bitcast i32* %262 to <4 x i32>*
  store <4 x i32> <i32 75, i32 76, i32 77, i32 78>, <4 x i32>* %263, align 4, !tbaa !9
  %264 = getelementptr inbounds i32, i32* %260, i64 8
  store i32 79, i32* %264, align 4, !tbaa !9
  %265 = getelementptr inbounds i32, i32* %260, i64 9
  store i32 80, i32* %265, align 4, !tbaa !9
  %266 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %267 = getelementptr inbounds i32*, i32** %194, i64 8
  %268 = bitcast i32** %267 to i8**
  store i8* %266, i8** %268, align 8, !tbaa !5
  %269 = bitcast i8* %266 to i32*
  %270 = bitcast i8* %266 to <4 x i32>*
  store <4 x i32> <i32 81, i32 82, i32 83, i32 84>, <4 x i32>* %270, align 4, !tbaa !9
  %271 = getelementptr inbounds i32, i32* %269, i64 4
  %272 = bitcast i32* %271 to <4 x i32>*
  store <4 x i32> <i32 85, i32 86, i32 87, i32 88>, <4 x i32>* %272, align 4, !tbaa !9
  %273 = getelementptr inbounds i32, i32* %269, i64 8
  store i32 89, i32* %273, align 4, !tbaa !9
  %274 = getelementptr inbounds i32, i32* %269, i64 9
  store i32 90, i32* %274, align 4, !tbaa !9
  %275 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #8
  %276 = getelementptr inbounds i32*, i32** %194, i64 9
  %277 = bitcast i32** %276 to i8**
  store i8* %275, i8** %277, align 8, !tbaa !5
  %278 = bitcast i8* %275 to i32*
  %279 = bitcast i8* %275 to <4 x i32>*
  store <4 x i32> <i32 91, i32 92, i32 93, i32 94>, <4 x i32>* %279, align 4, !tbaa !9
  %280 = getelementptr inbounds i32, i32* %278, i64 4
  %281 = bitcast i32* %280 to <4 x i32>*
  store <4 x i32> <i32 95, i32 96, i32 97, i32 98>, <4 x i32>* %281, align 4, !tbaa !9
  %282 = getelementptr inbounds i32, i32* %278, i64 8
  store i32 99, i32* %282, align 4, !tbaa !9
  %283 = getelementptr inbounds i32, i32* %278, i64 9
  store i32 100, i32* %283, align 4, !tbaa !9
  %284 = icmp sgt i32 %10, 0
  br i1 %284, label %285, label %373

285:                                              ; preds = %9
  %286 = load i32*, i32** %103, align 8, !tbaa !5
  %287 = load i32*, i32** %113, align 8, !tbaa !5
  %288 = load i32*, i32** %122, align 8, !tbaa !5
  %289 = load i32*, i32** %131, align 8, !tbaa !5
  %290 = load i32*, i32** %140, align 8, !tbaa !5
  %291 = load i32*, i32** %149, align 8, !tbaa !5
  %292 = load i32*, i32** %158, align 8, !tbaa !5
  %293 = load i32*, i32** %167, align 8, !tbaa !5
  %294 = load i32*, i32** %176, align 8, !tbaa !5
  %295 = load i32*, i32** %185, align 8, !tbaa !5
  br label %296

296:                                              ; preds = %285, %370
  %297 = phi i32 [ %371, %370 ], [ 0, %285 ]
  br label %298

298:                                              ; preds = %296, %367
  %299 = phi i64 [ %368, %367 ], [ 0, %296 ]
  %300 = getelementptr inbounds i32*, i32** %12, i64 %299
  %301 = getelementptr inbounds i32*, i32** %194, i64 %299
  %302 = load i32*, i32** %301, align 8, !tbaa !5
  %303 = load i32*, i32** %300, align 8, !tbaa !5
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = getelementptr inbounds i32, i32* %303, i64 2
  %306 = getelementptr inbounds i32, i32* %303, i64 3
  %307 = getelementptr inbounds i32, i32* %303, i64 4
  %308 = getelementptr inbounds i32, i32* %303, i64 5
  %309 = getelementptr inbounds i32, i32* %303, i64 6
  %310 = getelementptr inbounds i32, i32* %303, i64 7
  %311 = getelementptr inbounds i32, i32* %303, i64 8
  %312 = getelementptr inbounds i32, i32* %303, i64 9
  br label %313

313:                                              ; preds = %313, %298
  %314 = phi i64 [ %365, %313 ], [ 0, %298 ]
  %315 = load i32, i32* %303, align 4, !tbaa !9
  %316 = getelementptr inbounds i32, i32* %286, i64 %314
  %317 = load i32, i32* %316, align 4, !tbaa !9
  %318 = mul nsw i32 %317, %315
  %319 = load i32, i32* %304, align 4, !tbaa !9
  %320 = getelementptr inbounds i32, i32* %287, i64 %314
  %321 = load i32, i32* %320, align 4, !tbaa !9
  %322 = mul nsw i32 %321, %319
  %323 = add nsw i32 %322, %318
  %324 = load i32, i32* %305, align 4, !tbaa !9
  %325 = getelementptr inbounds i32, i32* %288, i64 %314
  %326 = load i32, i32* %325, align 4, !tbaa !9
  %327 = mul nsw i32 %326, %324
  %328 = add nsw i32 %327, %323
  %329 = load i32, i32* %306, align 4, !tbaa !9
  %330 = getelementptr inbounds i32, i32* %289, i64 %314
  %331 = load i32, i32* %330, align 4, !tbaa !9
  %332 = mul nsw i32 %331, %329
  %333 = add nsw i32 %332, %328
  %334 = load i32, i32* %307, align 4, !tbaa !9
  %335 = getelementptr inbounds i32, i32* %290, i64 %314
  %336 = load i32, i32* %335, align 4, !tbaa !9
  %337 = mul nsw i32 %336, %334
  %338 = add nsw i32 %337, %333
  %339 = load i32, i32* %308, align 4, !tbaa !9
  %340 = getelementptr inbounds i32, i32* %291, i64 %314
  %341 = load i32, i32* %340, align 4, !tbaa !9
  %342 = mul nsw i32 %341, %339
  %343 = add nsw i32 %342, %338
  %344 = load i32, i32* %309, align 4, !tbaa !9
  %345 = getelementptr inbounds i32, i32* %292, i64 %314
  %346 = load i32, i32* %345, align 4, !tbaa !9
  %347 = mul nsw i32 %346, %344
  %348 = add nsw i32 %347, %343
  %349 = load i32, i32* %310, align 4, !tbaa !9
  %350 = getelementptr inbounds i32, i32* %293, i64 %314
  %351 = load i32, i32* %350, align 4, !tbaa !9
  %352 = mul nsw i32 %351, %349
  %353 = add nsw i32 %352, %348
  %354 = load i32, i32* %311, align 4, !tbaa !9
  %355 = getelementptr inbounds i32, i32* %294, i64 %314
  %356 = load i32, i32* %355, align 4, !tbaa !9
  %357 = mul nsw i32 %356, %354
  %358 = add nsw i32 %357, %353
  %359 = load i32, i32* %312, align 4, !tbaa !9
  %360 = getelementptr inbounds i32, i32* %295, i64 %314
  %361 = load i32, i32* %360, align 4, !tbaa !9
  %362 = mul nsw i32 %361, %359
  %363 = add nsw i32 %362, %358
  %364 = getelementptr inbounds i32, i32* %302, i64 %314
  store i32 %363, i32* %364, align 4, !tbaa !9
  %365 = add nuw nsw i64 %314, 1
  %366 = icmp eq i64 %365, 10
  br i1 %366, label %367, label %313, !llvm.loop !24

367:                                              ; preds = %313
  %368 = add nuw nsw i64 %299, 1
  %369 = icmp eq i64 %368, 10
  br i1 %369, label %370, label %298, !llvm.loop !25

370:                                              ; preds = %367
  %371 = add nuw nsw i32 %297, 1
  %372 = icmp eq i32 %371, %10
  br i1 %372, label %373, label %296, !llvm.loop !26

373:                                              ; preds = %370, %9
  %374 = load i32*, i32** %194, align 8, !tbaa !5
  %375 = load i32, i32* %374, align 4, !tbaa !9
  %376 = load i32*, i32** %213, align 8, !tbaa !5
  %377 = getelementptr inbounds i32, i32* %376, i64 3
  %378 = load i32, i32* %377, align 4, !tbaa !9
  %379 = load i32*, i32** %222, align 8, !tbaa !5
  %380 = getelementptr inbounds i32, i32* %379, i64 2
  %381 = load i32, i32* %380, align 4, !tbaa !9
  %382 = load i32*, i32** %231, align 8, !tbaa !5
  %383 = getelementptr inbounds i32, i32* %382, i64 4
  %384 = load i32, i32* %383, align 4, !tbaa !9
  %385 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %375, i32 noundef %378, i32 noundef %381, i32 noundef %384)
  %386 = load i8*, i8** %95, align 8, !tbaa !5
  tail call void @free(i8* noundef %386) #8
  %387 = load i8*, i8** %86, align 8, !tbaa !5
  tail call void @free(i8* noundef %387) #8
  %388 = load i8*, i8** %77, align 8, !tbaa !5
  tail call void @free(i8* noundef %388) #8
  %389 = load i8*, i8** %68, align 8, !tbaa !5
  tail call void @free(i8* noundef %389) #8
  %390 = load i8*, i8** %59, align 8, !tbaa !5
  tail call void @free(i8* noundef %390) #8
  %391 = load i8*, i8** %50, align 8, !tbaa !5
  tail call void @free(i8* noundef %391) #8
  %392 = load i8*, i8** %41, align 8, !tbaa !5
  tail call void @free(i8* noundef %392) #8
  %393 = load i8*, i8** %32, align 8, !tbaa !5
  tail call void @free(i8* noundef %393) #8
  %394 = load i8*, i8** %23, align 8, !tbaa !5
  tail call void @free(i8* noundef %394) #8
  %395 = load i8*, i8** %14, align 8, !tbaa !5
  tail call void @free(i8* noundef %395) #8
  tail call void @free(i8* noundef nonnull %11) #8
  %396 = load i8*, i8** %186, align 8, !tbaa !5
  tail call void @free(i8* noundef %396) #8
  %397 = load i8*, i8** %177, align 8, !tbaa !5
  tail call void @free(i8* noundef %397) #8
  %398 = load i8*, i8** %168, align 8, !tbaa !5
  tail call void @free(i8* noundef %398) #8
  %399 = load i8*, i8** %159, align 8, !tbaa !5
  tail call void @free(i8* noundef %399) #8
  %400 = load i8*, i8** %150, align 8, !tbaa !5
  tail call void @free(i8* noundef %400) #8
  %401 = load i8*, i8** %141, align 8, !tbaa !5
  tail call void @free(i8* noundef %401) #8
  %402 = load i8*, i8** %132, align 8, !tbaa !5
  tail call void @free(i8* noundef %402) #8
  %403 = load i8*, i8** %123, align 8, !tbaa !5
  tail call void @free(i8* noundef %403) #8
  %404 = load i8*, i8** %114, align 8, !tbaa !5
  tail call void @free(i8* noundef %404) #8
  %405 = load i8*, i8** %105, align 8, !tbaa !5
  tail call void @free(i8* noundef %405) #8
  tail call void @free(i8* noundef nonnull %102) #8
  %406 = load i8*, i8** %277, align 8, !tbaa !5
  tail call void @free(i8* noundef %406) #8
  tail call void @free(i8* noundef %266) #8
  tail call void @free(i8* noundef %257) #8
  tail call void @free(i8* noundef %248) #8
  %407 = load i8*, i8** %241, align 8, !tbaa !5
  tail call void @free(i8* noundef %407) #8
  %408 = bitcast i32* %382 to i8*
  tail call void @free(i8* noundef %408) #8
  %409 = bitcast i32* %379 to i8*
  tail call void @free(i8* noundef %409) #8
  %410 = bitcast i32* %376 to i8*
  tail call void @free(i8* noundef %410) #8
  %411 = load i8*, i8** %205, align 8, !tbaa !5
  tail call void @free(i8* noundef %411) #8
  %412 = bitcast i32* %374 to i8*
  tail call void @free(i8* noundef %412) #8
  tail call void @free(i8* noundef nonnull %193) #8
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
