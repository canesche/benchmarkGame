; ModuleID = 'hash/hash.c'
source_filename = "hash/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ht_node = type { i8*, i32, %struct.ht_node* }
%struct.ht_ht = type { i32, %struct.ht_node**, i32, %struct.ht_node*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal unnamed_addr constant [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.ht_node* @ht_node_create(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #10
  %3 = bitcast i8* %2 to %struct.ht_node*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

6:                                                ; preds = %1
  %7 = tail call noalias i8* @strdup(i8* noundef %0) #10
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i64 0, i32 0
  store i8* %7, i8** %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i64 0, i32 1
  store i32 0, i32* %12, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i64 0, i32 2
  store %struct.ht_node* null, %struct.ht_node** %13, align 8, !tbaa !12
  ret %struct.ht_node* %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(i8* nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias %struct.ht_ht* @ht_create(i32 noundef %0) local_unnamed_addr #6 {
  %2 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #10
  %3 = sext i32 %0 to i64
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %5
  %7 = load i64, i64* %6, align 8, !tbaa !13
  %8 = icmp ult i64 %7, %3
  %9 = add nuw i64 %5, 1
  br i1 %8, label %4, label %10, !llvm.loop !15

10:                                               ; preds = %4
  %11 = bitcast i8* %2 to %struct.ht_ht*
  %12 = trunc i64 %7 to i32
  %13 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i64 0, i32 0
  store i32 %12, i32* %13, align 8, !tbaa !17
  %14 = shl i64 %7, 32
  %15 = ashr exact i64 %14, 32
  %16 = tail call noalias i8* @calloc(i64 noundef %15, i64 noundef 8) #10
  %17 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i64 0, i32 1
  %18 = bitcast %struct.ht_node*** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i64 0, i32 2
  store i32 0, i32* %19, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i64 0, i32 3
  store %struct.ht_node* null, %struct.ht_node** %20, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i64 0, i32 4
  store i32 0, i32* %21, align 8, !tbaa !22
  ret %struct.ht_ht* %11
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ht_destroy(%struct.ht_ht* nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !17
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %24
  %8 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %9 = phi i64 [ 0, %5 ], [ %26, %24 ]
  %10 = load %struct.ht_node**, %struct.ht_node*** %6, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %10, i64 %9
  %12 = load %struct.ht_node*, %struct.ht_node** %11, align 8, !tbaa !23
  %13 = icmp eq %struct.ht_node* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %7, %14
  %15 = phi %struct.ht_node* [ %17, %14 ], [ %12, %7 ]
  %16 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %15, i64 0, i32 2
  %17 = load %struct.ht_node*, %struct.ht_node** %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %15, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !5
  tail call void @free(i8* noundef %19) #10
  %20 = bitcast %struct.ht_node* %15 to i8*
  tail call void @free(i8* noundef %20) #10
  %21 = icmp eq %struct.ht_node* %17, null
  br i1 %21, label %22, label %14, !llvm.loop !24

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i32 [ %23, %22 ], [ %8, %7 ]
  %26 = add nuw nsw i64 %9, 1
  %27 = sext i32 %25 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %7, label %29, !llvm.loop !25

29:                                               ; preds = %24, %1
  %30 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %0, i64 0, i32 1
  %31 = bitcast %struct.ht_node*** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !19
  tail call void @free(i8* noundef %32) #10
  %33 = bitcast %struct.ht_ht* %0 to i8*
  tail call void @free(i8* noundef %33) #10
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #10
  %5 = tail call i64 @clock() #10
  %6 = tail call noalias dereferenceable_or_null(50331752) i8* @calloc(i64 noundef 6291469, i64 noundef 8) #10
  %7 = bitcast i8* %6 to %struct.ht_node**
  br label %8

8:                                                ; preds = %2, %67
  %9 = phi i32 [ 1, %2 ], [ %70, %67 ]
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9) #10
  %11 = load i8, i8* %4, align 16, !tbaa !26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8, %13
  %14 = phi i8 [ %21, %13 ], [ %11, %8 ]
  %15 = phi i64 [ %19, %13 ], [ 0, %8 ]
  %16 = phi i8* [ %20, %13 ], [ %4, %8 ]
  %17 = mul i64 %15, 5
  %18 = sext i8 %14 to i64
  %19 = add i64 %17, %18
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  %21 = load i8, i8* %20, align 1, !tbaa !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !27

23:                                               ; preds = %13, %8
  %24 = phi i64 [ 0, %8 ], [ %19, %13 ]
  %25 = urem i64 %24, 6291469
  %26 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %7, i64 %25
  %27 = load %struct.ht_node*, %struct.ht_node** %26, align 8, !tbaa !23
  %28 = icmp eq %struct.ht_node* %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %23, %35
  %30 = phi %struct.ht_node* [ %37, %35 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %30, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !5
  %33 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %32) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %30, i64 0, i32 2
  %37 = load %struct.ht_node*, %struct.ht_node** %36, align 8, !tbaa !23
  %38 = icmp eq %struct.ht_node* %37, null
  br i1 %38, label %39, label %29, !llvm.loop !28

39:                                               ; preds = %35
  %40 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #10
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %30, i64 0, i32 2
  %45 = call noalias i8* @strdup(i8* noundef nonnull %4) #10
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  tail call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

48:                                               ; preds = %23
  %49 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #10
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

52:                                               ; preds = %48
  %53 = call noalias i8* @strdup(i8* noundef nonnull %4) #10
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

56:                                               ; preds = %52, %43
  %57 = phi i8* [ %45, %43 ], [ %53, %52 ]
  %58 = phi %struct.ht_node** [ %44, %43 ], [ %26, %52 ]
  %59 = phi i8* [ %40, %43 ], [ %49, %52 ]
  %60 = bitcast i8* %59 to %struct.ht_node*
  %61 = bitcast i8* %59 to i8**
  store i8* %57, i8** %61, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, i8* %59, i64 8
  %63 = bitcast i8* %62 to i32*
  store i32 0, i32* %63, align 8, !tbaa !11
  %64 = getelementptr inbounds i8, i8* %59, i64 16
  %65 = bitcast i8* %64 to %struct.ht_node**
  store %struct.ht_node* null, %struct.ht_node** %65, align 8, !tbaa !12
  %66 = bitcast %struct.ht_node** %58 to i8**
  store i8* %59, i8** %66, align 8, !tbaa !23
  br label %67

67:                                               ; preds = %29, %56
  %68 = phi %struct.ht_node* [ %60, %56 ], [ %30, %29 ]
  %69 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %68, i64 0, i32 1
  store i32 %9, i32* %69, align 8, !tbaa !11
  %70 = add nuw nsw i32 %9, 1
  %71 = icmp eq i32 %70, 3500001
  br i1 %71, label %72, label %8, !llvm.loop !29

72:                                               ; preds = %67, %104
  %73 = phi i32 [ %109, %104 ], [ 3500000, %67 ]
  %74 = phi i32 [ %108, %104 ], [ 0, %67 ]
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %73) #10
  %76 = load i8, i8* %4, align 16, !tbaa !26
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %72, %78
  %79 = phi i8 [ %86, %78 ], [ %76, %72 ]
  %80 = phi i64 [ %84, %78 ], [ 0, %72 ]
  %81 = phi i8* [ %85, %78 ], [ %4, %72 ]
  %82 = mul i64 %80, 5
  %83 = sext i8 %79 to i64
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 1
  %86 = load i8, i8* %85, align 1, !tbaa !26
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %78, !llvm.loop !27

88:                                               ; preds = %78, %72
  %89 = phi i64 [ 0, %72 ], [ %84, %78 ]
  %90 = urem i64 %89, 6291469
  %91 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %7, i64 %90
  %92 = load %struct.ht_node*, %struct.ht_node** %91, align 8, !tbaa !23
  %93 = icmp eq %struct.ht_node* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %88, %100
  %95 = phi %struct.ht_node* [ %102, %100 ], [ %92, %88 ]
  %96 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %95, i64 0, i32 0
  %97 = load i8*, i8** %96, align 8, !tbaa !5
  %98 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %97) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %95, i64 0, i32 2
  %102 = load %struct.ht_node*, %struct.ht_node** %101, align 8, !tbaa !23
  %103 = icmp eq %struct.ht_node* %102, null
  br i1 %103, label %104, label %94, !llvm.loop !30

104:                                              ; preds = %94, %100, %88
  %105 = phi %struct.ht_node* [ null, %88 ], [ %95, %94 ], [ null, %100 ]
  %106 = icmp ne %struct.ht_node* %105, null
  %107 = zext i1 %106 to i32
  %108 = add nuw nsw i32 %74, %107
  %109 = add nsw i32 %73, -1
  %110 = icmp ugt i32 %73, 1
  br i1 %110, label %72, label %111, !llvm.loop !31

111:                                              ; preds = %104, %124
  %112 = phi i64 [ %125, %124 ], [ 0, %104 ]
  %113 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %7, i64 %112
  %114 = load %struct.ht_node*, %struct.ht_node** %113, align 8, !tbaa !23
  %115 = icmp eq %struct.ht_node* %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %111, %116
  %117 = phi %struct.ht_node* [ %119, %116 ], [ %114, %111 ]
  %118 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %117, i64 0, i32 2
  %119 = load %struct.ht_node*, %struct.ht_node** %118, align 8, !tbaa !12
  %120 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %117, i64 0, i32 0
  %121 = load i8*, i8** %120, align 8, !tbaa !5
  tail call void @free(i8* noundef %121) #10
  %122 = bitcast %struct.ht_node* %117 to i8*
  tail call void @free(i8* noundef %122) #10
  %123 = icmp eq %struct.ht_node* %119, null
  br i1 %123, label %124, label %116, !llvm.loop !24

124:                                              ; preds = %116, %111
  %125 = add nuw nsw i64 %112, 1
  %126 = icmp eq i64 %125, 6291469
  br i1 %126, label %127, label %111, !llvm.loop !25

127:                                              ; preds = %124
  tail call void @free(i8* noundef %6) #10
  %128 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %108)
  %129 = tail call i64 @clock() #10
  %130 = sub nsw i64 %129, %5
  %131 = sitofp i64 %130 to double
  %132 = fdiv double %131, 1.000000e+06
  %133 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), double noundef %132)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #10
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ht_node", !7, i64 0, !10, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !7, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !10, i64 0}
!18 = !{!"ht_ht", !10, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !10, i64 32}
!19 = !{!18, !7, i64 8}
!20 = !{!18, !10, i64 16}
!21 = !{!18, !7, i64 24}
!22 = !{!18, !10, i64 32}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = !{!8, !8, i64 0}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
