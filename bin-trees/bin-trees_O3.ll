; ModuleID = 'bin-trees/bin-trees.c'
source_filename = "bin-trees/bin-trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tn = type { %struct.tn*, %struct.tn* }

@.str = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%li\09 trees of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %u\09 check: %li\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.tn* @NewTreeNode(%struct.tn* noundef %0, %struct.tn* noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %4 = bitcast i8* %3 to %struct.tn*
  %5 = getelementptr inbounds %struct.tn, %struct.tn* %4, i64 0, i32 0
  store %struct.tn* %0, %struct.tn** %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.tn, %struct.tn* %4, i64 0, i32 1
  store %struct.tn* %1, %struct.tn** %6, align 8, !tbaa !10
  ret %struct.tn* %4
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i64 @ItemCheck(%struct.tn* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tn, %struct.tn* %0, i64 0, i32 0
  %3 = load %struct.tn*, %struct.tn** %2, align 8, !tbaa !5
  %4 = icmp eq %struct.tn* %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %5
  %6 = phi %struct.tn* [ %15, %5 ], [ %3, %1 ]
  %7 = phi %struct.tn* [ %11, %5 ], [ %0, %1 ]
  %8 = phi i64 [ %13, %5 ], [ 0, %1 ]
  %9 = tail call i64 @ItemCheck(%struct.tn* noundef nonnull %6)
  %10 = getelementptr inbounds %struct.tn, %struct.tn* %7, i64 0, i32 1
  %11 = load %struct.tn*, %struct.tn** %10, align 8, !tbaa !10
  %12 = add i64 %8, 1
  %13 = add i64 %12, %9
  %14 = getelementptr inbounds %struct.tn, %struct.tn* %11, i64 0, i32 0
  %15 = load %struct.tn*, %struct.tn** %14, align 8, !tbaa !5
  %16 = icmp eq %struct.tn* %15, null
  br i1 %16, label %17, label %5

17:                                               ; preds = %5
  %18 = add i64 %13, 1
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i64 [ 1, %1 ], [ %18, %17 ]
  ret i64 %20
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias %struct.tn* @BottomUpTree(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %13, label %5

3:                                                ; preds = %13, %5
  %4 = phi %struct.tn* [ %10, %5 ], [ %15, %13 ]
  ret %struct.tn* %4

5:                                                ; preds = %1
  %6 = add i32 %0, -1
  %7 = tail call %struct.tn* @BottomUpTree(i32 noundef %6)
  %8 = tail call %struct.tn* @BottomUpTree(i32 noundef %6)
  %9 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %10 = bitcast i8* %9 to %struct.tn*
  %11 = getelementptr inbounds %struct.tn, %struct.tn* %10, i64 0, i32 0
  store %struct.tn* %7, %struct.tn** %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.tn, %struct.tn* %10, i64 0, i32 1
  store %struct.tn* %8, %struct.tn** %12, align 8, !tbaa !10
  br label %3

13:                                               ; preds = %1
  %14 = call dereferenceable_or_null(16) i8* @calloc(i64 1, i64 16)
  %15 = bitcast i8* %14 to %struct.tn*
  br label %3
}

; Function Attrs: nounwind uwtable
define dso_local void @DeleteTree(%struct.tn* nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tn, %struct.tn* %0, i64 0, i32 0
  %3 = load %struct.tn*, %struct.tn** %2, align 8, !tbaa !5
  %4 = icmp eq %struct.tn* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @DeleteTree(%struct.tn* noundef nonnull %3)
  %6 = getelementptr inbounds %struct.tn, %struct.tn* %0, i64 0, i32 1
  %7 = load %struct.tn*, %struct.tn** %6, align 8, !tbaa !10
  tail call void @DeleteTree(%struct.tn* noundef %7)
  br label %8

8:                                                ; preds = %5, %1
  %9 = bitcast %struct.tn* %0 to i8*
  tail call void @free(i8* noundef %9) #9
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !11
  %5 = tail call i64 @strtol(i8* nocapture noundef nonnull %4, i8** noundef null, i32 noundef 10) #9
  %6 = trunc i64 %5 to i32
  %7 = icmp ugt i32 %6, 6
  %8 = select i1 %7, i32 %6, i32 6
  %9 = add i32 %8, 1
  %10 = tail call %struct.tn* @BottomUpTree(i32 noundef %9)
  %11 = tail call i64 @ItemCheck(%struct.tn* noundef %10)
  %12 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef %9, i64 noundef %11)
  tail call void @DeleteTree(%struct.tn* noundef %10)
  %13 = tail call %struct.tn* @BottomUpTree(i32 noundef %8)
  %14 = add i32 %8, 4
  br label %15

15:                                               ; preds = %2, %30
  %16 = phi i32 [ 4, %2 ], [ %33, %30 ]
  %17 = sub i32 %14, %16
  %18 = uitofp i32 %17 to double
  %19 = tail call double @exp2(double %18) #9
  %20 = fptosi double %19 to i64
  %21 = icmp slt i64 %20, 1
  br i1 %21, label %30, label %22

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %27, %22 ], [ 0, %15 ]
  %24 = phi i64 [ %28, %22 ], [ 1, %15 ]
  %25 = tail call %struct.tn* @BottomUpTree(i32 noundef %16)
  %26 = tail call i64 @ItemCheck(%struct.tn* noundef %25)
  %27 = add nsw i64 %26, %23
  tail call void @DeleteTree(%struct.tn* noundef %25)
  %28 = add nuw i64 %24, 1
  %29 = icmp eq i64 %24, %20
  br i1 %29, label %30, label %22, !llvm.loop !12

30:                                               ; preds = %22, %15
  %31 = phi i64 [ 0, %15 ], [ %27, %22 ]
  %32 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef %20, i32 noundef %16, i64 noundef %31)
  %33 = add i32 %16, 2
  %34 = icmp ult i32 %8, %33
  br i1 %34, label %35, label %15, !llvm.loop !14

35:                                               ; preds = %30
  %36 = tail call i64 @ItemCheck(%struct.tn* noundef %13)
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8, i64 noundef %36)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #7

declare double @exp2(double) local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nounwind willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"tn", !7, i64 0, !7, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
