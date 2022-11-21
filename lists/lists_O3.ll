; ModuleID = 'lists/lists.c'
source_filename = "lists/lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DLL = type { i32, %struct.DLL*, %struct.DLL* }

@.str = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i:%3d  v:%3d  n:%3d  p:%3d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[val of next of tail is:  %d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"li1 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"last value wrong, wanted %d, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"li2 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"[last entry points to list head]\00", align 1
@str.13 = private unnamed_addr constant [26 x i8] c"li2 and li1 are not equal\00", align 1
@str.16 = private unnamed_addr constant [26 x i8] c"li1 and li2 are not equal\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @list_push_tail(%struct.DLL* noundef %0, %struct.DLL* noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %4, i64 0, i32 1
  store %struct.DLL* %1, %struct.DLL** %5, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 1
  store %struct.DLL* %0, %struct.DLL** %6, align 8, !tbaa !11
  store %struct.DLL* %1, %struct.DLL** %3, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 2
  store %struct.DLL* %4, %struct.DLL** %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !12
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local %struct.DLL* @list_pop_tail(%struct.DLL* noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  %7 = load %struct.DLL*, %struct.DLL** %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 0, i32 2
  %9 = load %struct.DLL*, %struct.DLL** %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i64 0, i32 1
  store %struct.DLL* %0, %struct.DLL** %10, align 8, !tbaa !11
  store %struct.DLL* %9, %struct.DLL** %6, align 8, !tbaa !5
  %11 = add nsw i32 %3, -1
  store i32 %11, i32* %2, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi %struct.DLL* [ %7, %5 ], [ null, %1 ]
  ret %struct.DLL* %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @list_push_head(%struct.DLL* noundef %0, %struct.DLL* noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8, !tbaa !11
  store %struct.DLL* %1, %struct.DLL** %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %4, i64 0, i32 2
  store %struct.DLL* %1, %struct.DLL** %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 1
  store %struct.DLL* %4, %struct.DLL** %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 2
  store %struct.DLL* %0, %struct.DLL** %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !12
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local %struct.DLL* @list_pop_head(%struct.DLL* noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  %7 = load %struct.DLL*, %struct.DLL** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 0, i32 1
  %9 = load %struct.DLL*, %struct.DLL** %8, align 8, !tbaa !11
  store %struct.DLL* %9, %struct.DLL** %6, align 8, !tbaa !11
  %10 = load %struct.DLL*, %struct.DLL** %8, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i64 0, i32 2
  store %struct.DLL* %0, %struct.DLL** %11, align 8, !tbaa !5
  %12 = add nsw i32 %3, -1
  store i32 %12, i32* %2, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi %struct.DLL* [ %7, %5 ], [ null, %1 ]
  ret %struct.DLL* %14
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @list_equal(%struct.DLL* noundef readonly %0, %struct.DLL* noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8, !tbaa !11
  %5 = icmp eq %struct.DLL* %4, %0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %15
  %7 = phi %struct.DLL* [ %19, %15 ], [ %4, %2 ]
  %8 = phi %struct.DLL* [ %17, %15 ], [ %1, %2 ]
  %9 = phi %struct.DLL* [ %7, %15 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 0, i32 1
  %17 = load %struct.DLL*, %struct.DLL** %16, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 0, i32 1
  %19 = load %struct.DLL*, %struct.DLL** %18, align 8, !tbaa !11
  %20 = icmp eq %struct.DLL* %19, %0
  br i1 %20, label %21, label %6, !llvm.loop !13

21:                                               ; preds = %15, %2
  %22 = phi %struct.DLL* [ %0, %2 ], [ %7, %15 ]
  %23 = phi %struct.DLL* [ %1, %2 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.DLL, %struct.DLL* %22, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.DLL, %struct.DLL* %23, i64 0, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !12
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.DLL, %struct.DLL* %23, i64 0, i32 1
  %31 = load %struct.DLL*, %struct.DLL** %30, align 8, !tbaa !11
  %32 = icmp eq %struct.DLL* %31, %1
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %6, %21, %29
  %35 = phi i32 [ %33, %29 ], [ 0, %21 ], [ 0, %6 ]
  ret i32 %35
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @list_print(i8* nocapture noundef readonly %0, %struct.DLL* nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8, !tbaa !11
  %5 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %0)
  %6 = getelementptr %struct.DLL, %struct.DLL* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !12
  %8 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %7)
  %9 = load %struct.DLL*, %struct.DLL** %3, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i64 0, i32 1
  %11 = load %struct.DLL*, %struct.DLL** %10, align 8, !tbaa !11
  %12 = icmp eq %struct.DLL* %11, %4
  br i1 %12, label %32, label %13

13:                                               ; preds = %2, %13
  %14 = phi %struct.DLL* [ %30, %13 ], [ %11, %2 ]
  %15 = phi %struct.DLL** [ %29, %13 ], [ %10, %2 ]
  %16 = phi %struct.DLL* [ %28, %13 ], [ %9, %2 ]
  %17 = phi i32 [ %18, %13 ], [ 0, %2 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i64 0, i32 0
  %20 = load i32, i32* %19, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.DLL, %struct.DLL* %14, i64 0, i32 0
  %22 = load i32, i32* %21, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i64 0, i32 2
  %24 = load %struct.DLL*, %struct.DLL** %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.DLL, %struct.DLL* %24, i64 0, i32 0
  %26 = load i32, i32* %25, align 8, !tbaa !12
  %27 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %26)
  %28 = load %struct.DLL*, %struct.DLL** %15, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.DLL, %struct.DLL* %28, i64 0, i32 1
  %30 = load %struct.DLL*, %struct.DLL** %29, align 8, !tbaa !11
  %31 = icmp eq %struct.DLL* %30, %4
  br i1 %31, label %32, label %13, !llvm.loop !15

32:                                               ; preds = %13, %2
  %33 = phi %struct.DLL** [ %10, %2 ], [ %29, %13 ]
  %34 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i64 0, i64 0))
  %35 = load %struct.DLL*, %struct.DLL** %33, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.DLL, %struct.DLL* %35, i64 0, i32 0
  %37 = load i32, i32* %36, align 8, !tbaa !12
  %38 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef %37)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local %struct.DLL* @list_new() local_unnamed_addr #4 {
  %1 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #11
  %2 = bitcast i8* %1 to %struct.DLL*
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 1
  %4 = bitcast %struct.DLL** %3 to i8**
  store i8* %1, i8** %4, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 2
  %6 = bitcast %struct.DLL** %5 to i8**
  store i8* %1, i8** %6, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 0
  store i32 0, i32* %7, align 8, !tbaa !12
  ret %struct.DLL* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.DLL* @list_sequence(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %0, %1
  %4 = select i1 %3, i32 %0, i32 %1
  %5 = select i1 %3, i32 %1, i32 %0
  %6 = sub nsw i32 %4, %5
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %6, 2
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 24
  %11 = tail call noalias i8* @malloc(i64 noundef %10) #11
  %12 = bitcast i8* %11 to %struct.DLL*
  %13 = add nsw i32 %5, -1
  %14 = icmp slt i32 %6, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = add i32 %4, 1
  %17 = sub i32 %16, %5
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %23, %19 ]
  %21 = phi i64 [ 1, %15 ], [ %31, %19 ]
  %22 = phi i32 [ %13, %15 ], [ %29, %19 ]
  %23 = add nuw nsw i64 %20, 1
  %24 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %23
  %25 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %20, i32 1
  store %struct.DLL* %24, %struct.DLL** %25, align 8, !tbaa !11
  %26 = add nsw i64 %21, -1
  %27 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %26
  %28 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %21, i32 2
  store %struct.DLL* %27, %struct.DLL** %28, align 8, !tbaa !5
  %29 = add nsw i32 %22, 1
  %30 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %20, i32 0
  store i32 %22, i32* %30, align 8, !tbaa !12
  %31 = add nuw nsw i64 %21, 1
  %32 = icmp eq i64 %23, %18
  br i1 %32, label %33, label %19, !llvm.loop !16

33:                                               ; preds = %19, %2
  %34 = phi i32 [ %13, %2 ], [ %29, %19 ]
  %35 = sext i32 %7 to i64
  %36 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %35
  %37 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 0, i32 2
  store %struct.DLL* %36, %struct.DLL** %37, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %35, i32 1
  %39 = bitcast %struct.DLL** %38 to i8**
  store i8* %11, i8** %39, align 8, !tbaa !11
  %40 = sext i32 %6 to i64
  %41 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %40
  %42 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %35, i32 2
  store %struct.DLL* %41, %struct.DLL** %42, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.DLL, %struct.DLL* %36, i64 0, i32 0
  store i32 %34, i32* %43, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 0, i32 0
  store i32 %7, i32* %44, align 8, !tbaa !12
  ret %struct.DLL* %12
}

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.DLL* @list_copy(%struct.DLL* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !12
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, 24
  %7 = tail call noalias i8* @malloc(i64 noundef %6) #11
  %8 = bitcast i8* %7 to %struct.DLL*
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 1
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 0, i32 1
  store %struct.DLL* %11, %struct.DLL** %12, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 1, i32 2
  %14 = bitcast %struct.DLL** %13 to i8**
  store i8* %7, i8** %14, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 0, i32 0
  store i32 %3, i32* %15, align 8, !tbaa !12
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %70, label %17, !llvm.loop !17

17:                                               ; preds = %10
  %18 = zext i32 %3 to i64
  %19 = add nsw i64 %18, -1
  %20 = and i64 %19, 1
  %21 = icmp eq i32 %3, 2
  br i1 %21, label %55, label %22

22:                                               ; preds = %17
  %23 = and i64 %19, -2
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi %struct.DLL* [ %0, %22 ], [ %41, %24 ]
  %26 = phi i64 [ 1, %22 ], [ %50, %24 ]
  %27 = phi i64 [ 1, %22 ], [ %42, %24 ]
  %28 = phi i64 [ 0, %22 ], [ %51, %24 ]
  %29 = getelementptr inbounds %struct.DLL, %struct.DLL* %25, i64 0, i32 1
  %30 = load %struct.DLL*, %struct.DLL** %29, align 8, !tbaa !11
  %31 = add nuw nsw i64 %27, 1
  %32 = getelementptr inbounds %struct.DLL, %struct.DLL* %30, i64 0, i32 0
  %33 = load i32, i32* %32, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %31
  %35 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %26
  %36 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %26, i32 1
  store %struct.DLL* %34, %struct.DLL** %36, align 8, !tbaa !11
  %37 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %31, i32 2
  store %struct.DLL* %35, %struct.DLL** %37, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.DLL, %struct.DLL* %35, i64 0, i32 0
  store i32 %33, i32* %38, align 8, !tbaa !12
  %39 = add nuw nsw i64 %26, 1
  %40 = getelementptr inbounds %struct.DLL, %struct.DLL* %30, i64 0, i32 1
  %41 = load %struct.DLL*, %struct.DLL** %40, align 8, !tbaa !11
  %42 = add nuw nsw i64 %27, 2
  %43 = getelementptr inbounds %struct.DLL, %struct.DLL* %41, i64 0, i32 0
  %44 = load i32, i32* %43, align 8, !tbaa !12
  %45 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %42
  %46 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %39
  %47 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %39, i32 1
  store %struct.DLL* %45, %struct.DLL** %47, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %42, i32 2
  store %struct.DLL* %46, %struct.DLL** %48, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.DLL, %struct.DLL* %46, i64 0, i32 0
  store i32 %44, i32* %49, align 8, !tbaa !12
  %50 = add nuw nsw i64 %26, 2
  %51 = add i64 %28, 2
  %52 = icmp eq i64 %51, %23
  br i1 %52, label %53, label %24, !llvm.loop !17

53:                                               ; preds = %24
  %54 = add nuw i64 %27, 3
  br label %55

55:                                               ; preds = %53, %17
  %56 = phi %struct.DLL* [ %0, %17 ], [ %41, %53 ]
  %57 = phi i64 [ 1, %17 ], [ %50, %53 ]
  %58 = phi i64 [ 2, %17 ], [ %54, %53 ]
  %59 = icmp eq i64 %20, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.DLL, %struct.DLL* %56, i64 0, i32 1
  %62 = load %struct.DLL*, %struct.DLL** %61, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.DLL, %struct.DLL* %62, i64 0, i32 0
  %64 = load i32, i32* %63, align 8, !tbaa !12
  %65 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %58
  %66 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %57
  %67 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %57, i32 1
  store %struct.DLL* %65, %struct.DLL** %67, align 8, !tbaa !11
  %68 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %58, i32 2
  store %struct.DLL* %66, %struct.DLL** %68, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.DLL, %struct.DLL* %66, i64 0, i32 0
  store i32 %64, i32* %69, align 8, !tbaa !12
  br label %70

70:                                               ; preds = %60, %55, %10, %1
  %71 = sext i32 %3 to i64
  %72 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %71
  %73 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 0, i32 2
  store %struct.DLL* %72, %struct.DLL** %73, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %71, i32 1
  %75 = bitcast %struct.DLL** %74 to i8**
  store i8* %7, i8** %75, align 8, !tbaa !11
  %76 = getelementptr %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  %77 = load %struct.DLL*, %struct.DLL** %76, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.DLL, %struct.DLL* %77, i64 0, i32 0
  %79 = load i32, i32* %78, align 8, !tbaa !12
  %80 = getelementptr inbounds %struct.DLL, %struct.DLL* %72, i64 0, i32 0
  store i32 %79, i32* %80, align 8, !tbaa !12
  ret %struct.DLL* %8
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @list_reverse(%struct.DLL* noundef %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi %struct.DLL* [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i64 0, i32 1
  %5 = load %struct.DLL*, %struct.DLL** %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i64 0, i32 2
  %7 = load %struct.DLL*, %struct.DLL** %6, align 8, !tbaa !5
  store %struct.DLL* %7, %struct.DLL** %4, align 8, !tbaa !11
  store %struct.DLL* %5, %struct.DLL** %6, align 8, !tbaa !5
  %8 = icmp eq %struct.DLL* %5, %0
  br i1 %8, label %9, label %2, !llvm.loop !18

9:                                                ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test_lists() local_unnamed_addr #7 {
  %1 = tail call noalias dereferenceable_or_null(2424) i8* @malloc(i64 noundef 2424) #11
  %2 = bitcast i8* %1 to %struct.DLL*
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ 0, %0 ], [ %7, %3 ]
  %5 = phi i64 [ 1, %0 ], [ %14, %3 ]
  %6 = trunc i64 %4 to i32
  %7 = add nuw nsw i64 %4, 1
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 %7
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 %4, i32 1
  store %struct.DLL* %8, %struct.DLL** %9, align 8, !tbaa !11
  %10 = add nsw i64 %5, -1
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 %10
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 %5, i32 2
  store %struct.DLL* %11, %struct.DLL** %12, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 %4, i32 0
  store i32 %6, i32* %13, align 8, !tbaa !12
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %7, 100
  br i1 %15, label %16, label %3, !llvm.loop !16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 100
  %18 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 2
  store %struct.DLL* %17, %struct.DLL** %18, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 100, i32 1
  %20 = bitcast %struct.DLL** %19 to i8**
  store i8* %1, i8** %20, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 99
  %22 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 100, i32 2
  store %struct.DLL* %21, %struct.DLL** %22, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.DLL, %struct.DLL* %17, i64 0, i32 0
  store i32 100, i32* %23, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 0
  store i32 100, i32* %24, align 8, !tbaa !12
  %25 = tail call noalias dereferenceable_or_null(2424) i8* @malloc(i64 noundef 2424) #11
  %26 = bitcast i8* %25 to %struct.DLL*
  %27 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 1
  %28 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 0, i32 1
  store %struct.DLL* %27, %struct.DLL** %28, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 1, i32 2
  %30 = bitcast %struct.DLL** %29 to i8**
  store i8* %25, i8** %30, align 8, !tbaa !5
  %31 = getelementptr %struct.DLL, %struct.DLL* %26, i64 0, i32 0
  store i32 100, i32* %31, align 8, !tbaa !12
  br label %32

32:                                               ; preds = %46, %16
  %33 = phi %struct.DLL* [ %2, %16 ], [ %48, %46 ]
  %34 = phi i64 [ 1, %16 ], [ %49, %46 ]
  %35 = getelementptr inbounds %struct.DLL, %struct.DLL* %33, i64 0, i32 1
  %36 = load %struct.DLL*, %struct.DLL** %35, align 8, !tbaa !11
  %37 = add nuw nsw i64 %34, 1
  %38 = getelementptr inbounds %struct.DLL, %struct.DLL* %36, i64 0, i32 0
  %39 = load i32, i32* %38, align 8, !tbaa !12
  %40 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %37
  %41 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %34
  %42 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %34, i32 1
  store %struct.DLL* %40, %struct.DLL** %42, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %37, i32 2
  store %struct.DLL* %41, %struct.DLL** %43, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.DLL, %struct.DLL* %41, i64 0, i32 0
  store i32 %39, i32* %44, align 8, !tbaa !12
  %45 = icmp eq i64 %37, 100
  br i1 %45, label %57, label %46, !llvm.loop !17

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.DLL, %struct.DLL* %36, i64 0, i32 1
  %48 = load %struct.DLL*, %struct.DLL** %47, align 8, !tbaa !11
  %49 = add nuw nsw i64 %34, 2
  %50 = getelementptr inbounds %struct.DLL, %struct.DLL* %48, i64 0, i32 0
  %51 = load i32, i32* %50, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %49
  %53 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %37
  %54 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %37, i32 1
  store %struct.DLL* %52, %struct.DLL** %54, align 8, !tbaa !11
  %55 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %49, i32 2
  store %struct.DLL* %53, %struct.DLL** %55, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.DLL, %struct.DLL* %53, i64 0, i32 0
  store i32 %51, i32* %56, align 8, !tbaa !12
  br label %32

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 100
  %59 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 0, i32 2
  store %struct.DLL* %58, %struct.DLL** %59, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 100, i32 1
  %61 = bitcast %struct.DLL** %60 to i8**
  store i8* %25, i8** %61, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.DLL, %struct.DLL* %58, i64 0, i32 0
  store i32 100, i32* %62, align 8, !tbaa !12
  %63 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #11
  %64 = bitcast i8* %63 to %struct.DLL*
  %65 = getelementptr inbounds %struct.DLL, %struct.DLL* %64, i64 0, i32 1
  %66 = bitcast %struct.DLL** %65 to i8**
  store i8* %63, i8** %66, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.DLL, %struct.DLL* %64, i64 0, i32 2
  %68 = bitcast %struct.DLL** %67 to i8**
  store i8* %63, i8** %68, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.DLL, %struct.DLL* %64, i64 0, i32 0
  store i32 0, i32* %69, align 8, !tbaa !12
  br label %70

70:                                               ; preds = %57, %83
  %71 = phi %struct.DLL* [ %2, %57 ], [ %74, %83 ]
  %72 = phi %struct.DLL* [ %27, %57 ], [ %76, %83 ]
  %73 = getelementptr inbounds %struct.DLL, %struct.DLL* %71, i64 0, i32 1
  %74 = load %struct.DLL*, %struct.DLL** %73, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct.DLL, %struct.DLL* %72, i64 0, i32 1
  %76 = load %struct.DLL*, %struct.DLL** %75, align 8, !tbaa !11
  %77 = icmp eq %struct.DLL* %76, %26
  %78 = getelementptr inbounds %struct.DLL, %struct.DLL* %72, i64 0, i32 0
  %79 = load i32, i32* %78, align 8, !tbaa !12
  %80 = getelementptr inbounds %struct.DLL, %struct.DLL* %74, i64 0, i32 0
  %81 = load i32, i32* %80, align 8, !tbaa !12
  %82 = icmp eq i32 %79, %81
  br i1 %77, label %84, label %83, !llvm.loop !13

83:                                               ; preds = %70
  br i1 %82, label %70, label %98

84:                                               ; preds = %70
  br i1 %82, label %85, label %98

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.DLL, %struct.DLL* %74, i64 0, i32 1
  %87 = load %struct.DLL*, %struct.DLL** %86, align 8, !tbaa !11
  %88 = icmp eq %struct.DLL* %87, %2
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 1, i32 1
  %91 = load %struct.DLL*, %struct.DLL** %90, align 8, !tbaa !11
  store %struct.DLL* %91, %struct.DLL** %28, align 8, !tbaa !11
  %92 = getelementptr inbounds %struct.DLL, %struct.DLL* %91, i64 0, i32 2
  %93 = bitcast %struct.DLL** %92 to i8**
  store i8* %25, i8** %93, align 8, !tbaa !5
  %94 = load %struct.DLL*, %struct.DLL** %67, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.DLL, %struct.DLL* %94, i64 0, i32 1
  store %struct.DLL* %27, %struct.DLL** %95, align 8, !tbaa !11
  %96 = bitcast %struct.DLL** %90 to i8**
  store i8* %63, i8** %96, align 8, !tbaa !11
  store %struct.DLL* %27, %struct.DLL** %67, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 1, i32 2
  store %struct.DLL* %94, %struct.DLL** %97, align 8, !tbaa !5
  br label %101

98:                                               ; preds = %83, %84, %85
  %99 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.13, i64 0, i64 0))
  tail call void @exit(i32 noundef 1) #12
  unreachable

100:                                              ; preds = %101
  store i32 0, i32* %31, align 8, !tbaa !12
  store i32 100, i32* %69, align 8, !tbaa !12
  br label %127

101:                                              ; preds = %114, %89
  %102 = phi i32 [ 99, %89 ], [ %121, %114 ]
  %103 = load %struct.DLL*, %struct.DLL** %28, align 8, !tbaa !11
  %104 = getelementptr inbounds %struct.DLL, %struct.DLL* %103, i64 0, i32 1
  %105 = load %struct.DLL*, %struct.DLL** %104, align 8, !tbaa !11
  store %struct.DLL* %105, %struct.DLL** %28, align 8, !tbaa !11
  %106 = load %struct.DLL*, %struct.DLL** %104, align 8, !tbaa !11
  %107 = getelementptr inbounds %struct.DLL, %struct.DLL* %106, i64 0, i32 2
  %108 = bitcast %struct.DLL** %107 to i8**
  store i8* %25, i8** %108, align 8, !tbaa !5
  %109 = load %struct.DLL*, %struct.DLL** %67, align 8, !tbaa !5
  %110 = getelementptr inbounds %struct.DLL, %struct.DLL* %109, i64 0, i32 1
  store %struct.DLL* %103, %struct.DLL** %110, align 8, !tbaa !11
  %111 = bitcast %struct.DLL** %104 to i8**
  store i8* %63, i8** %111, align 8, !tbaa !11
  store %struct.DLL* %103, %struct.DLL** %67, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.DLL, %struct.DLL* %103, i64 0, i32 2
  store %struct.DLL* %109, %struct.DLL** %112, align 8, !tbaa !5
  %113 = icmp eq i32 %102, 1
  br i1 %113, label %100, label %114, !llvm.loop !19

114:                                              ; preds = %101
  %115 = load %struct.DLL*, %struct.DLL** %28, align 8, !tbaa !11
  %116 = getelementptr inbounds %struct.DLL, %struct.DLL* %115, i64 0, i32 1
  %117 = load %struct.DLL*, %struct.DLL** %116, align 8, !tbaa !11
  store %struct.DLL* %117, %struct.DLL** %28, align 8, !tbaa !11
  %118 = load %struct.DLL*, %struct.DLL** %116, align 8, !tbaa !11
  %119 = getelementptr inbounds %struct.DLL, %struct.DLL* %118, i64 0, i32 2
  %120 = bitcast %struct.DLL** %119 to i8**
  store i8* %25, i8** %120, align 8, !tbaa !5
  %121 = add nsw i32 %102, -2
  %122 = load %struct.DLL*, %struct.DLL** %67, align 8, !tbaa !5
  %123 = getelementptr inbounds %struct.DLL, %struct.DLL* %122, i64 0, i32 1
  store %struct.DLL* %115, %struct.DLL** %123, align 8, !tbaa !11
  %124 = bitcast %struct.DLL** %116 to i8**
  store i8* %63, i8** %124, align 8, !tbaa !11
  store %struct.DLL* %115, %struct.DLL** %67, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.DLL, %struct.DLL* %115, i64 0, i32 2
  store %struct.DLL* %122, %struct.DLL** %125, align 8, !tbaa !5
  br label %101

126:                                              ; preds = %127
  store i32 %144, i32* %69, align 8, !tbaa !12
  store i32 %149, i32* %31, align 8, !tbaa !12
  br label %151

127:                                              ; preds = %127, %100
  %128 = phi i32 [ 0, %100 ], [ %149, %127 ]
  %129 = phi i32 [ 100, %100 ], [ %144, %127 ]
  %130 = load %struct.DLL*, %struct.DLL** %67, align 8, !tbaa !5
  %131 = getelementptr inbounds %struct.DLL, %struct.DLL* %130, i64 0, i32 2
  %132 = load %struct.DLL*, %struct.DLL** %131, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.DLL, %struct.DLL* %132, i64 0, i32 1
  %134 = bitcast %struct.DLL** %133 to i8**
  store i8* %63, i8** %134, align 8, !tbaa !11
  store %struct.DLL* %132, %struct.DLL** %67, align 8, !tbaa !5
  %135 = load %struct.DLL*, %struct.DLL** %59, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.DLL, %struct.DLL* %135, i64 0, i32 1
  store %struct.DLL* %130, %struct.DLL** %136, align 8, !tbaa !11
  %137 = getelementptr inbounds %struct.DLL, %struct.DLL* %130, i64 0, i32 1
  %138 = bitcast %struct.DLL** %137 to i8**
  store i8* %25, i8** %138, align 8, !tbaa !11
  store %struct.DLL* %130, %struct.DLL** %59, align 8, !tbaa !5
  store %struct.DLL* %135, %struct.DLL** %131, align 8, !tbaa !5
  %139 = load %struct.DLL*, %struct.DLL** %67, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.DLL, %struct.DLL* %139, i64 0, i32 2
  %141 = load %struct.DLL*, %struct.DLL** %140, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.DLL, %struct.DLL* %141, i64 0, i32 1
  %143 = bitcast %struct.DLL** %142 to i8**
  store i8* %63, i8** %143, align 8, !tbaa !11
  store %struct.DLL* %141, %struct.DLL** %67, align 8, !tbaa !5
  %144 = add nsw i32 %129, -2
  %145 = load %struct.DLL*, %struct.DLL** %59, align 8, !tbaa !5
  %146 = getelementptr inbounds %struct.DLL, %struct.DLL* %145, i64 0, i32 1
  store %struct.DLL* %139, %struct.DLL** %146, align 8, !tbaa !11
  %147 = getelementptr inbounds %struct.DLL, %struct.DLL* %139, i64 0, i32 1
  %148 = bitcast %struct.DLL** %147 to i8**
  store i8* %25, i8** %148, align 8, !tbaa !11
  store %struct.DLL* %139, %struct.DLL** %59, align 8, !tbaa !5
  store %struct.DLL* %145, %struct.DLL** %140, align 8, !tbaa !5
  %149 = add nuw nsw i32 %128, 2
  %150 = icmp eq i32 %144, 0
  br i1 %150, label %126, label %127, !llvm.loop !20

151:                                              ; preds = %126, %151
  %152 = phi %struct.DLL* [ %154, %151 ], [ %2, %126 ]
  %153 = getelementptr inbounds %struct.DLL, %struct.DLL* %152, i64 0, i32 1
  %154 = load %struct.DLL*, %struct.DLL** %153, align 8, !tbaa !11
  %155 = getelementptr inbounds %struct.DLL, %struct.DLL* %152, i64 0, i32 2
  %156 = load %struct.DLL*, %struct.DLL** %155, align 8, !tbaa !5
  store %struct.DLL* %156, %struct.DLL** %153, align 8, !tbaa !11
  store %struct.DLL* %154, %struct.DLL** %155, align 8, !tbaa !5
  %157 = icmp eq %struct.DLL* %154, %2
  br i1 %157, label %158, label %151, !llvm.loop !18

158:                                              ; preds = %151
  %159 = getelementptr %struct.DLL, %struct.DLL* %2, i64 0, i32 1
  %160 = load %struct.DLL*, %struct.DLL** %159, align 8, !tbaa !11
  %161 = getelementptr inbounds %struct.DLL, %struct.DLL* %160, i64 0, i32 0
  %162 = load i32, i32* %161, align 8, !tbaa !12
  %163 = icmp eq i32 %162, 100
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 noundef 100, i32 noundef %162)
  tail call void @exit(i32 noundef 1) #12
  unreachable

166:                                              ; preds = %158
  %167 = load %struct.DLL*, %struct.DLL** %18, align 8, !tbaa !5
  %168 = getelementptr inbounds %struct.DLL, %struct.DLL* %167, i64 0, i32 0
  %169 = load i32, i32* %168, align 8, !tbaa !12
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef 100, i32 noundef %169)
  tail call void @exit(i32 noundef 1) #12
  unreachable

173:                                              ; preds = %166
  %174 = load %struct.DLL*, %struct.DLL** %28, align 8, !tbaa !11
  %175 = getelementptr inbounds %struct.DLL, %struct.DLL* %174, i64 0, i32 0
  %176 = load i32, i32* %175, align 8, !tbaa !12
  %177 = icmp eq i32 %176, 100
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 noundef 100, i32 noundef %176)
  tail call void @exit(i32 noundef 1) #12
  unreachable

180:                                              ; preds = %173
  %181 = load %struct.DLL*, %struct.DLL** %59, align 8, !tbaa !5
  %182 = getelementptr inbounds %struct.DLL, %struct.DLL* %181, i64 0, i32 0
  %183 = load i32, i32* %182, align 8, !tbaa !12
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %187, label %185

185:                                              ; preds = %180
  %186 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef 100, i32 noundef %183)
  tail call void @exit(i32 noundef 1) #12
  unreachable

187:                                              ; preds = %180
  %188 = icmp eq %struct.DLL* %160, %2
  br i1 %188, label %205, label %189

189:                                              ; preds = %187
  %190 = icmp eq i32 %149, 100
  br i1 %190, label %191, label %214

191:                                              ; preds = %189, %203
  %192 = phi %struct.DLL* [ %195, %203 ], [ %26, %189 ]
  %193 = phi %struct.DLL* [ %197, %203 ], [ %160, %189 ]
  %194 = getelementptr inbounds %struct.DLL, %struct.DLL* %192, i64 0, i32 1
  %195 = load %struct.DLL*, %struct.DLL** %194, align 8, !tbaa !11
  %196 = getelementptr inbounds %struct.DLL, %struct.DLL* %193, i64 0, i32 1
  %197 = load %struct.DLL*, %struct.DLL** %196, align 8, !tbaa !11
  %198 = icmp eq %struct.DLL* %197, %2
  %199 = getelementptr inbounds %struct.DLL, %struct.DLL* %193, i64 0, i32 0
  %200 = load i32, i32* %199, align 8, !tbaa !12
  %201 = getelementptr inbounds %struct.DLL, %struct.DLL* %195, i64 0, i32 0
  %202 = load i32, i32* %201, align 8, !tbaa !12
  br i1 %198, label %205, label %203, !llvm.loop !13

203:                                              ; preds = %191
  %204 = icmp eq i32 %200, %202
  br i1 %204, label %191, label %214

205:                                              ; preds = %191, %187
  %206 = phi i32 [ %149, %187 ], [ %202, %191 ]
  %207 = phi i32 [ 100, %187 ], [ %200, %191 ]
  %208 = phi %struct.DLL* [ %26, %187 ], [ %195, %191 ]
  %209 = icmp eq i32 %207, %206
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.DLL, %struct.DLL* %208, i64 0, i32 1
  %212 = load %struct.DLL*, %struct.DLL** %211, align 8, !tbaa !11
  %213 = icmp eq %struct.DLL* %212, %26
  br i1 %213, label %216, label %214

214:                                              ; preds = %203, %189, %205, %210
  %215 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.16, i64 0, i64 0))
  tail call void @exit(i32 noundef 1) #12
  unreachable

216:                                              ; preds = %210
  tail call void @free(i8* noundef %1) #11
  tail call void @free(i8* noundef %25) #11
  tail call void @free(i8* noundef %63) #11
  ret i32 100
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !21
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #11
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2, %4
  %11 = phi i32 [ 3000000, %2 ], [ %8, %4 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %14, %12 ], [ %11, %10 ]
  %14 = add nsw i32 %13, -1
  %15 = tail call i32 @test_lists()
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %12, !llvm.loop !22

17:                                               ; preds = %12, %4
  %18 = phi i32 [ 0, %4 ], [ %15, %12 ]
  %19 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %18)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !10, i64 16}
!6 = !{!"DLL", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{!10, !10, i64 0}
!22 = distinct !{!22, !14}
