; ModuleID = 'ary3/ary3.c'
source_filename = "ary3/ary3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i64 @clock() #5
  %4 = tail call noalias dereferenceable_or_null(4000000) i8* @calloc(i64 noundef 1000000, i64 noundef 4) #5
  %5 = bitcast i8* %4 to i32*
  %6 = tail call noalias dereferenceable_or_null(4000000) i8* @calloc(i64 noundef 1000000, i64 noundef 4) #5
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %28, %7 ]
  %9 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2 ], [ %29, %7 ]
  %10 = getelementptr inbounds i32, i32* %5, i64 %8
  %11 = trunc <4 x i64> %9 to <4 x i32>
  %12 = add <4 x i32> %11, <i32 1, i32 1, i32 1, i32 1>
  %13 = trunc <4 x i64> %9 to <4 x i32>
  %14 = add <4 x i32> %13, <i32 5, i32 5, i32 5, i32 5>
  %15 = bitcast i32* %10 to <4 x i32>*
  store <4 x i32> %12, <4 x i32>* %15, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, i32* %10, i64 4
  %17 = bitcast i32* %16 to <4 x i32>*
  store <4 x i32> %14, <4 x i32>* %17, align 4, !tbaa !5
  %18 = or i64 %8, 8
  %19 = add <4 x i64> %9, <i64 8, i64 8, i64 8, i64 8>
  %20 = getelementptr inbounds i32, i32* %5, i64 %18
  %21 = trunc <4 x i64> %19 to <4 x i32>
  %22 = add <4 x i32> %21, <i32 1, i32 1, i32 1, i32 1>
  %23 = trunc <4 x i64> %19 to <4 x i32>
  %24 = add <4 x i32> %23, <i32 5, i32 5, i32 5, i32 5>
  %25 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> %22, <4 x i32>* %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %20, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> %24, <4 x i32>* %27, align 4, !tbaa !5
  %28 = add nuw nsw i64 %8, 16
  %29 = add <4 x i64> %9, <i64 16, i64 16, i64 16, i64 16>
  %30 = icmp eq i64 %28, 1000000
  br i1 %30, label %31, label %7, !llvm.loop !9

31:                                               ; preds = %7
  %32 = bitcast i8* %6 to i32*
  br label %33

33:                                               ; preds = %81, %31
  %34 = phi i32 [ %82, %81 ], [ 0, %31 ]
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %79, %35 ]
  %37 = sub nuw nsw i64 999999, %36
  %38 = getelementptr inbounds i32, i32* %5, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 -3
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %38, i64 -4
  %43 = getelementptr inbounds i32, i32* %42, i64 -3
  %44 = bitcast i32* %43 to <4 x i32>*
  %45 = load <4 x i32>, <4 x i32>* %44, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %32, i64 %37
  %47 = getelementptr inbounds i32, i32* %46, i64 -3
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %46, i64 -4
  %51 = getelementptr inbounds i32, i32* %50, i64 -3
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !5
  %54 = add nsw <4 x i32> %49, %41
  %55 = add nsw <4 x i32> %53, %45
  %56 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> %54, <4 x i32>* %56, align 4, !tbaa !5
  %57 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %55, <4 x i32>* %57, align 4, !tbaa !5
  %58 = sub nsw i64 999991, %36
  %59 = getelementptr inbounds i32, i32* %5, i64 %58
  %60 = getelementptr inbounds i32, i32* %59, i64 -3
  %61 = bitcast i32* %60 to <4 x i32>*
  %62 = load <4 x i32>, <4 x i32>* %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, i32* %59, i64 -4
  %64 = getelementptr inbounds i32, i32* %63, i64 -3
  %65 = bitcast i32* %64 to <4 x i32>*
  %66 = load <4 x i32>, <4 x i32>* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, i32* %32, i64 %58
  %68 = getelementptr inbounds i32, i32* %67, i64 -3
  %69 = bitcast i32* %68 to <4 x i32>*
  %70 = load <4 x i32>, <4 x i32>* %69, align 4, !tbaa !5
  %71 = getelementptr inbounds i32, i32* %67, i64 -4
  %72 = getelementptr inbounds i32, i32* %71, i64 -3
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 4, !tbaa !5
  %75 = add nsw <4 x i32> %70, %62
  %76 = add nsw <4 x i32> %74, %66
  %77 = bitcast i32* %68 to <4 x i32>*
  store <4 x i32> %75, <4 x i32>* %77, align 4, !tbaa !5
  %78 = bitcast i32* %72 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %78, align 4, !tbaa !5
  %79 = add nuw nsw i64 %36, 16
  %80 = icmp eq i64 %79, 1000000
  br i1 %80, label %81, label %35, !llvm.loop !12

81:                                               ; preds = %35
  %82 = add nuw nsw i32 %34, 1
  %83 = icmp eq i32 %82, 1000
  br i1 %83, label %84, label %33, !llvm.loop !13

84:                                               ; preds = %81
  %85 = load i32, i32* %32, align 4, !tbaa !5
  %86 = getelementptr inbounds i32, i32* %32, i64 999999
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %85, i32 noundef %87)
  %89 = tail call i64 @clock() #5
  %90 = sub nsw i64 %89, %3
  %91 = sitofp i64 %90 to double
  %92 = fdiv double %91, 1.000000e+06
  %93 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %92)
  tail call void @free(i8* noundef nonnull %4) #5
  tail call void @free(i8* noundef nonnull %6) #5
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10}
