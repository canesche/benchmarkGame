; ModuleID = 'ary3/ary3.c'
source_filename = "ary3/ary3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i64 @clock() #5
  %4 = tail call noalias dereferenceable_or_null(60000000) i8* @calloc(i64 noundef 15000000, i64 noundef 4) #5
  %5 = bitcast i8* %4 to i32*
  %6 = tail call noalias dereferenceable_or_null(60000000) i8* @calloc(i64 noundef 15000000, i64 noundef 4) #5
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %38, %7 ]
  %9 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2 ], [ %39, %7 ]
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
  %18 = add nuw nsw i64 %8, 8
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
  %30 = getelementptr inbounds i32, i32* %5, i64 %28
  %31 = trunc <4 x i64> %29 to <4 x i32>
  %32 = add <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>
  %33 = trunc <4 x i64> %29 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 5, i32 5, i32 5, i32 5>
  %35 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %35, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %30, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %37, align 4, !tbaa !5
  %38 = add nuw nsw i64 %8, 24
  %39 = add <4 x i64> %9, <i64 24, i64 24, i64 24, i64 24>
  %40 = icmp eq i64 %38, 15000000
  br i1 %40, label %41, label %7, !llvm.loop !9

41:                                               ; preds = %7
  %42 = bitcast i8* %6 to i32*
  br label %43

43:                                               ; preds = %91, %41
  %44 = phi i32 [ %92, %91 ], [ 0, %41 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %89, %45 ]
  %47 = sub nuw nsw i64 14999999, %46
  %48 = getelementptr inbounds i32, i32* %5, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 -3
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 4, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %48, i64 -4
  %53 = getelementptr inbounds i32, i32* %52, i64 -3
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %42, i64 %47
  %57 = getelementptr inbounds i32, i32* %56, i64 -3
  %58 = bitcast i32* %57 to <4 x i32>*
  %59 = load <4 x i32>, <4 x i32>* %58, align 4, !tbaa !5
  %60 = getelementptr inbounds i32, i32* %56, i64 -4
  %61 = getelementptr inbounds i32, i32* %60, i64 -3
  %62 = bitcast i32* %61 to <4 x i32>*
  %63 = load <4 x i32>, <4 x i32>* %62, align 4, !tbaa !5
  %64 = add nsw <4 x i32> %59, %51
  %65 = add nsw <4 x i32> %63, %55
  %66 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %66, align 4, !tbaa !5
  %67 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %65, <4 x i32>* %67, align 4, !tbaa !5
  %68 = sub nsw i64 14999991, %46
  %69 = getelementptr inbounds i32, i32* %5, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 -3
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !5
  %73 = getelementptr inbounds i32, i32* %69, i64 -4
  %74 = getelementptr inbounds i32, i32* %73, i64 -3
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !5
  %77 = getelementptr inbounds i32, i32* %42, i64 %68
  %78 = getelementptr inbounds i32, i32* %77, i64 -3
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5
  %81 = getelementptr inbounds i32, i32* %77, i64 -4
  %82 = getelementptr inbounds i32, i32* %81, i64 -3
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = load <4 x i32>, <4 x i32>* %83, align 4, !tbaa !5
  %85 = add nsw <4 x i32> %80, %72
  %86 = add nsw <4 x i32> %84, %76
  %87 = bitcast i32* %78 to <4 x i32>*
  store <4 x i32> %85, <4 x i32>* %87, align 4, !tbaa !5
  %88 = bitcast i32* %82 to <4 x i32>*
  store <4 x i32> %86, <4 x i32>* %88, align 4, !tbaa !5
  %89 = add nuw nsw i64 %46, 16
  %90 = icmp eq i64 %89, 15000000
  br i1 %90, label %91, label %45, !llvm.loop !12

91:                                               ; preds = %45
  %92 = add nuw nsw i32 %44, 1
  %93 = icmp eq i32 %92, 1000
  br i1 %93, label %94, label %43, !llvm.loop !13

94:                                               ; preds = %91
  %95 = load i32, i32* %42, align 4, !tbaa !5
  %96 = getelementptr inbounds i32, i32* %42, i64 14999999
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %95, i32 noundef %97)
  %99 = tail call i64 @clock() #5
  %100 = sub nsw i64 %99, %3
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %101, 1.000000e+06
  %103 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %102)
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
