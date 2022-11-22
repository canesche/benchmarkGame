; ModuleID = 'heapsort/heapsort.c'
source_filename = "heapsort/heapsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gen_random.last = internal unnamed_addr global i64 42, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local double @gen_random(double noundef %0) local_unnamed_addr #0 {
  %2 = load i64, i64* @gen_random.last, align 8, !tbaa !5
  %3 = mul nsw i64 %2, 3877
  %4 = add nsw i64 %3, 29573
  %5 = srem i64 %4, 139968
  store i64 %5, i64* @gen_random.last, align 8, !tbaa !5
  %6 = sitofp i64 %5 to double
  %7 = fmul double %6, %0
  %8 = fdiv double %7, 1.399680e+05
  ret double %8
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @benchmark_heapsort(i32 noundef %0, double* nocapture noundef %1) local_unnamed_addr #1 {
  %3 = ashr i32 %0, 1
  %4 = add nsw i32 %3, 1
  %5 = getelementptr inbounds double, double* %1, i64 1
  br label %6

6:                                                ; preds = %54, %2
  %7 = phi i32 [ %0, %2 ], [ %24, %54 ]
  %8 = phi i32 [ %4, %2 ], [ %25, %54 ]
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = add nsw i32 %8, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %1, i64 %12
  %14 = load double, double* %13, align 8, !tbaa !9
  br label %23

15:                                               ; preds = %6
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds double, double* %1, i64 %16
  %18 = load double, double* %17, align 8, !tbaa !9
  %19 = load double, double* %5, align 8, !tbaa !9
  store double %19, double* %17, align 8, !tbaa !9
  %20 = add nsw i32 %7, -1
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store double %18, double* %5, align 8, !tbaa !9
  ret void

23:                                               ; preds = %15, %10
  %24 = phi i32 [ %7, %10 ], [ %20, %15 ]
  %25 = phi i32 [ %11, %10 ], [ %8, %15 ]
  %26 = phi double [ %14, %10 ], [ %18, %15 ]
  %27 = shl i32 %25, 1
  %28 = icmp sgt i32 %27, %24
  br i1 %28, label %54, label %29

29:                                               ; preds = %23, %49
  %30 = phi i32 [ %52, %49 ], [ %27, %23 ]
  %31 = phi i32 [ %45, %49 ], [ %25, %23 ]
  %32 = icmp slt i32 %30, %24
  %33 = sext i32 %30 to i64
  br i1 %32, label %34, label %43

34:                                               ; preds = %29
  %35 = getelementptr inbounds double, double* %1, i64 %33
  %36 = load double, double* %35, align 8, !tbaa !9
  %37 = or i32 %30, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %1, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !9
  %41 = fcmp olt double %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %29, %42, %34
  %44 = phi i64 [ %38, %42 ], [ %33, %34 ], [ %33, %29 ]
  %45 = phi i32 [ %37, %42 ], [ %30, %34 ], [ %30, %29 ]
  %46 = getelementptr inbounds double, double* %1, i64 %44
  %47 = load double, double* %46, align 8, !tbaa !9
  %48 = fcmp olt double %26, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = sext i32 %31 to i64
  %51 = getelementptr inbounds double, double* %1, i64 %50
  store double %47, double* %51, align 8, !tbaa !9
  %52 = shl nsw i32 %45, 1
  %53 = icmp sgt i32 %52, %24
  br i1 %53, label %54, label %29, !llvm.loop !11

54:                                               ; preds = %43, %49, %23
  %55 = phi i32 [ %25, %23 ], [ %31, %43 ], [ %45, %49 ]
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %1, i64 %56
  store double %26, double* %57, align 8, !tbaa !9
  br label %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call i64 @clock() #7
  %4 = tail call noalias dereferenceable_or_null(64000008) i8* @malloc(i64 noundef 64000008) #7
  %5 = bitcast i8* %4 to double*
  %6 = load i64, i64* @gen_random.last, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 1, %2 ], [ %16, %7 ]
  %9 = phi i64 [ %6, %2 ], [ %12, %7 ]
  %10 = mul nsw i64 %9, 3877
  %11 = add nsw i64 %10, 29573
  %12 = srem i64 %11, 139968
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %13, 1.399680e+05
  %15 = getelementptr inbounds double, double* %5, i64 %8
  store double %14, double* %15, align 8, !tbaa !9
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, 8000001
  br i1 %17, label %18, label %7, !llvm.loop !13

18:                                               ; preds = %7
  store i64 %12, i64* @gen_random.last, align 8, !tbaa !5
  %19 = getelementptr inbounds double, double* %5, i64 1
  br label %20

20:                                               ; preds = %67, %18
  %21 = phi i32 [ 8000000, %18 ], [ %37, %67 ]
  %22 = phi i32 [ 4000001, %18 ], [ %38, %67 ]
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = add nsw i32 %22, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %5, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !9
  br label %36

29:                                               ; preds = %20
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds double, double* %5, i64 %30
  %32 = load double, double* %31, align 8, !tbaa !9
  %33 = load double, double* %19, align 8, !tbaa !9
  store double %33, double* %31, align 8, !tbaa !9
  %34 = add nsw i32 %21, -1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %71, label %36

36:                                               ; preds = %29, %24
  %37 = phi i32 [ %21, %24 ], [ %34, %29 ]
  %38 = phi i32 [ %25, %24 ], [ %22, %29 ]
  %39 = phi double [ %28, %24 ], [ %32, %29 ]
  %40 = shl i32 %38, 1
  %41 = icmp sgt i32 %40, %37
  br i1 %41, label %67, label %42

42:                                               ; preds = %36, %62
  %43 = phi i32 [ %65, %62 ], [ %40, %36 ]
  %44 = phi i32 [ %58, %62 ], [ %38, %36 ]
  %45 = icmp slt i32 %43, %37
  %46 = sext i32 %43 to i64
  br i1 %45, label %47, label %56

47:                                               ; preds = %42
  %48 = getelementptr inbounds double, double* %5, i64 %46
  %49 = load double, double* %48, align 8, !tbaa !9
  %50 = or i32 %43, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %5, i64 %51
  %53 = load double, double* %52, align 8, !tbaa !9
  %54 = fcmp olt double %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %47, %42
  %57 = phi i64 [ %51, %55 ], [ %46, %47 ], [ %46, %42 ]
  %58 = phi i32 [ %50, %55 ], [ %43, %47 ], [ %43, %42 ]
  %59 = getelementptr inbounds double, double* %5, i64 %57
  %60 = load double, double* %59, align 8, !tbaa !9
  %61 = fcmp olt double %39, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = sext i32 %44 to i64
  %64 = getelementptr inbounds double, double* %5, i64 %63
  store double %60, double* %64, align 8, !tbaa !9
  %65 = shl nsw i32 %58, 1
  %66 = icmp sgt i32 %65, %37
  br i1 %66, label %67, label %42, !llvm.loop !11

67:                                               ; preds = %62, %56, %36
  %68 = phi i32 [ %38, %36 ], [ %58, %62 ], [ %44, %56 ]
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %5, i64 %69
  store double %39, double* %70, align 8, !tbaa !9
  br label %20

71:                                               ; preds = %29
  %72 = getelementptr inbounds double, double* %5, i64 8000000
  %73 = load double, double* %72, align 8, !tbaa !9
  %74 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %73)
  %75 = tail call i64 @clock() #7
  %76 = sub nsw i64 %75, %3
  %77 = sitofp i64 %76 to double
  %78 = fdiv double %77, 1.000000e+06
  %79 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %78)
  tail call void @free(i8* noundef nonnull %4) #7
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
