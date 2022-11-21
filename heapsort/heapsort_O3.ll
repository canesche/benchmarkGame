; ModuleID = 'heapsort/heapsort.c'
source_filename = "heapsort/heapsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gen_random.last = internal unnamed_addr global i64 42, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !13
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #7
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ 8000000, %2 ]
  %11 = add i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call noalias i8* @malloc(i64 noundef %13) #7
  %15 = bitcast i8* %14 to double*
  %16 = icmp slt i32 %10, 1
  br i1 %16, label %32, label %17

17:                                               ; preds = %9
  %18 = load i64, i64* @gen_random.last, align 8, !tbaa !5
  %19 = zext i32 %11 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %29, %20 ]
  %22 = phi i64 [ %18, %17 ], [ %25, %20 ]
  %23 = mul nsw i64 %22, 3877
  %24 = add nsw i64 %23, 29573
  %25 = srem i64 %24, 139968
  %26 = sitofp i64 %25 to double
  %27 = fdiv double %26, 1.399680e+05
  %28 = getelementptr inbounds double, double* %15, i64 %21
  store double %27, double* %28, align 8, !tbaa !9
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %31, label %20, !llvm.loop !15

31:                                               ; preds = %20
  store i64 %25, i64* @gen_random.last, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %31, %9
  %33 = ashr i32 %10, 1
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds double, double* %15, i64 1
  br label %36

36:                                               ; preds = %83, %32
  %37 = phi i32 [ %10, %32 ], [ %53, %83 ]
  %38 = phi i32 [ %34, %32 ], [ %54, %83 ]
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = add nsw i32 %38, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %15, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !9
  br label %52

45:                                               ; preds = %36
  %46 = sext i32 %37 to i64
  %47 = getelementptr inbounds double, double* %15, i64 %46
  %48 = load double, double* %47, align 8, !tbaa !9
  %49 = load double, double* %35, align 8, !tbaa !9
  store double %49, double* %47, align 8, !tbaa !9
  %50 = add nsw i32 %37, -1
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %87, label %52

52:                                               ; preds = %45, %40
  %53 = phi i32 [ %37, %40 ], [ %50, %45 ]
  %54 = phi i32 [ %41, %40 ], [ %38, %45 ]
  %55 = phi double [ %44, %40 ], [ %48, %45 ]
  %56 = shl i32 %54, 1
  %57 = icmp sgt i32 %56, %53
  br i1 %57, label %83, label %58

58:                                               ; preds = %52, %78
  %59 = phi i32 [ %81, %78 ], [ %56, %52 ]
  %60 = phi i32 [ %74, %78 ], [ %54, %52 ]
  %61 = icmp slt i32 %59, %53
  %62 = sext i32 %59 to i64
  br i1 %61, label %63, label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds double, double* %15, i64 %62
  %65 = load double, double* %64, align 8, !tbaa !9
  %66 = or i32 %59, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %15, i64 %67
  %69 = load double, double* %68, align 8, !tbaa !9
  %70 = fcmp olt double %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %63, %58
  %73 = phi i64 [ %67, %71 ], [ %62, %63 ], [ %62, %58 ]
  %74 = phi i32 [ %66, %71 ], [ %59, %63 ], [ %59, %58 ]
  %75 = getelementptr inbounds double, double* %15, i64 %73
  %76 = load double, double* %75, align 8, !tbaa !9
  %77 = fcmp olt double %55, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = sext i32 %60 to i64
  %80 = getelementptr inbounds double, double* %15, i64 %79
  store double %76, double* %80, align 8, !tbaa !9
  %81 = shl nsw i32 %74, 1
  %82 = icmp sgt i32 %81, %53
  br i1 %82, label %83, label %58, !llvm.loop !11

83:                                               ; preds = %78, %72, %52
  %84 = phi i32 [ %54, %52 ], [ %74, %78 ], [ %60, %72 ]
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %15, i64 %85
  store double %55, double* %86, align 8, !tbaa !9
  br label %36

87:                                               ; preds = %45
  store double %48, double* %35, align 8, !tbaa !9
  %88 = sext i32 %10 to i64
  %89 = getelementptr inbounds double, double* %15, i64 %88
  %90 = load double, double* %89, align 8, !tbaa !9
  %91 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %90)
  tail call void @free(i8* noundef nonnull %14) #7
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = distinct !{!15, !12}
