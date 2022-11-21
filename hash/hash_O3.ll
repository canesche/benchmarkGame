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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8*, i8** %1, i64 1
  %7 = load i8*, i8** %6, align 8, !tbaa !23
  %8 = tail call i64 @strtol(i8* nocapture noundef nonnull %7, i8** noundef null, i32 noundef 10) #10
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ 3500000, %2 ]
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10
  %13 = sext i32 %11 to i64
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i64 [ %19, %14 ], [ 0, %10 ]
  %16 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8, !tbaa !13
  %18 = icmp ult i64 %17, %13
  %19 = add nuw i64 %15, 1
  br i1 %18, label %14, label %20, !llvm.loop !15

20:                                               ; preds = %14
  %21 = trunc i64 %17 to i32
  %22 = shl i64 %17, 32
  %23 = ashr exact i64 %22, 32
  %24 = tail call noalias i8* @calloc(i64 noundef %23, i64 noundef 8) #10
  %25 = icmp slt i32 %11, 1
  %26 = bitcast i8* %24 to %struct.ht_node**
  br i1 %25, label %136, label %29

27:                                               ; preds = %90
  %28 = icmp sgt i32 %11, 0
  br i1 %28, label %95, label %136

29:                                               ; preds = %20, %90
  %30 = phi i32 [ %93, %90 ], [ 1, %20 ]
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %30) #10
  %32 = load i8, i8* %12, align 16, !tbaa !26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29, %34
  %35 = phi i8 [ %42, %34 ], [ %32, %29 ]
  %36 = phi i64 [ %40, %34 ], [ 0, %29 ]
  %37 = phi i8* [ %41, %34 ], [ %12, %29 ]
  %38 = mul i64 %36, 5
  %39 = sext i8 %35 to i64
  %40 = add i64 %38, %39
  %41 = getelementptr inbounds i8, i8* %37, i64 1
  %42 = load i8, i8* %41, align 1, !tbaa !26
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %34, !llvm.loop !27

44:                                               ; preds = %34, %29
  %45 = phi i64 [ 0, %29 ], [ %40, %34 ]
  %46 = urem i64 %45, %23
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %26, i64 %48
  %50 = load %struct.ht_node*, %struct.ht_node** %49, align 8, !tbaa !23
  %51 = icmp eq %struct.ht_node* %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %44, %58
  %53 = phi %struct.ht_node* [ %60, %58 ], [ %50, %44 ]
  %54 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %53, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !5
  %56 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull dereferenceable(1) %55) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %53, i64 0, i32 2
  %60 = load %struct.ht_node*, %struct.ht_node** %59, align 8, !tbaa !23
  %61 = icmp eq %struct.ht_node* %60, null
  br i1 %61, label %62, label %52, !llvm.loop !28

62:                                               ; preds = %58
  %63 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #10
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %53, i64 0, i32 2
  %68 = call noalias i8* @strdup(i8* noundef nonnull %12) #10
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  tail call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

71:                                               ; preds = %44
  %72 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #10
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

75:                                               ; preds = %71
  %76 = call noalias i8* @strdup(i8* noundef nonnull %12) #10
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #12
  unreachable

79:                                               ; preds = %75, %66
  %80 = phi i8* [ %68, %66 ], [ %76, %75 ]
  %81 = phi %struct.ht_node** [ %67, %66 ], [ %49, %75 ]
  %82 = phi i8* [ %63, %66 ], [ %72, %75 ]
  %83 = bitcast i8* %82 to %struct.ht_node*
  %84 = bitcast i8* %82 to i8**
  store i8* %80, i8** %84, align 8, !tbaa !5
  %85 = getelementptr inbounds i8, i8* %82, i64 8
  %86 = bitcast i8* %85 to i32*
  store i32 0, i32* %86, align 8, !tbaa !11
  %87 = getelementptr inbounds i8, i8* %82, i64 16
  %88 = bitcast i8* %87 to %struct.ht_node**
  store %struct.ht_node* null, %struct.ht_node** %88, align 8, !tbaa !12
  %89 = bitcast %struct.ht_node** %81 to i8**
  store i8* %82, i8** %89, align 8, !tbaa !23
  br label %90

90:                                               ; preds = %52, %79
  %91 = phi %struct.ht_node* [ %83, %79 ], [ %53, %52 ]
  %92 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %91, i64 0, i32 1
  store i32 %30, i32* %92, align 8, !tbaa !11
  %93 = add nuw i32 %30, 1
  %94 = icmp eq i32 %30, %11
  br i1 %94, label %27, label %29, !llvm.loop !29

95:                                               ; preds = %27, %129
  %96 = phi i32 [ %134, %129 ], [ %11, %27 ]
  %97 = phi i32 [ %133, %129 ], [ 0, %27 ]
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %96) #10
  %99 = load i8, i8* %12, align 16, !tbaa !26
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %95, %101
  %102 = phi i8 [ %109, %101 ], [ %99, %95 ]
  %103 = phi i64 [ %107, %101 ], [ 0, %95 ]
  %104 = phi i8* [ %108, %101 ], [ %12, %95 ]
  %105 = mul i64 %103, 5
  %106 = sext i8 %102 to i64
  %107 = add i64 %105, %106
  %108 = getelementptr inbounds i8, i8* %104, i64 1
  %109 = load i8, i8* %108, align 1, !tbaa !26
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %101, !llvm.loop !27

111:                                              ; preds = %101, %95
  %112 = phi i64 [ 0, %95 ], [ %107, %101 ]
  %113 = urem i64 %112, %23
  %114 = shl i64 %113, 32
  %115 = ashr exact i64 %114, 32
  %116 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %26, i64 %115
  %117 = load %struct.ht_node*, %struct.ht_node** %116, align 8, !tbaa !23
  %118 = icmp eq %struct.ht_node* %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %111, %125
  %120 = phi %struct.ht_node* [ %127, %125 ], [ %117, %111 ]
  %121 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %120, i64 0, i32 0
  %122 = load i8*, i8** %121, align 8, !tbaa !5
  %123 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull dereferenceable(1) %122) #13
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %120, i64 0, i32 2
  %127 = load %struct.ht_node*, %struct.ht_node** %126, align 8, !tbaa !23
  %128 = icmp eq %struct.ht_node* %127, null
  br i1 %128, label %129, label %119, !llvm.loop !30

129:                                              ; preds = %119, %125, %111
  %130 = phi %struct.ht_node* [ null, %111 ], [ %120, %119 ], [ null, %125 ]
  %131 = icmp ne %struct.ht_node* %130, null
  %132 = zext i1 %131 to i32
  %133 = add nuw nsw i32 %97, %132
  %134 = add nsw i32 %96, -1
  %135 = icmp sgt i32 %96, 1
  br i1 %135, label %95, label %136, !llvm.loop !31

136:                                              ; preds = %129, %20, %27
  %137 = phi i32 [ 0, %27 ], [ 0, %20 ], [ %133, %129 ]
  %138 = icmp sgt i32 %21, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %136, %152
  %140 = phi i64 [ %153, %152 ], [ 0, %136 ]
  %141 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %26, i64 %140
  %142 = load %struct.ht_node*, %struct.ht_node** %141, align 8, !tbaa !23
  %143 = icmp eq %struct.ht_node* %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %139, %144
  %145 = phi %struct.ht_node* [ %147, %144 ], [ %142, %139 ]
  %146 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %145, i64 0, i32 2
  %147 = load %struct.ht_node*, %struct.ht_node** %146, align 8, !tbaa !12
  %148 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %145, i64 0, i32 0
  %149 = load i8*, i8** %148, align 8, !tbaa !5
  tail call void @free(i8* noundef %149) #10
  %150 = bitcast %struct.ht_node* %145 to i8*
  tail call void @free(i8* noundef %150) #10
  %151 = icmp eq %struct.ht_node* %147, null
  br i1 %151, label %152, label %144, !llvm.loop !24

152:                                              ; preds = %144, %139
  %153 = add nuw nsw i64 %140, 1
  %154 = icmp eq i64 %153, %23
  br i1 %154, label %155, label %139, !llvm.loop !25

155:                                              ; preds = %152, %136
  tail call void @free(i8* noundef %24) #10
  %156 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %137)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #8

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
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
