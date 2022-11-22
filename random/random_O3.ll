; ModuleID = 'random/random.c'
source_filename = "random/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@gen_random.last = internal unnamed_addr global i64 42, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i64 @clock() #3
  %4 = load i64, i64* @gen_random.last, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 400000000, %2 ], [ %11, %5 ]
  %7 = phi i64 [ %4, %2 ], [ %14, %5 ]
  %8 = mul nsw i64 %7, 3877
  %9 = add nsw i64 %8, 29573
  %10 = srem i64 %9, 139968
  %11 = add nsw i32 %6, -2
  %12 = mul nsw i64 %10, 3877
  %13 = add nsw i64 %12, 29573
  %14 = srem i64 %13, 139968
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %16, label %5, !llvm.loop !9

16:                                               ; preds = %5
  %17 = trunc i64 %14 to i32
  %18 = mul i32 %17, 3877
  %19 = add i32 %18, 29573
  %20 = srem i32 %19, 139968
  %21 = sext i32 %20 to i64
  store i64 %21, i64* @gen_random.last, align 8, !tbaa !5
  %22 = sitofp i32 %20 to double
  %23 = fmul double %22, 1.000000e+02
  %24 = fdiv double %23, 1.399680e+05
  %25 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double noundef %24)
  %26 = tail call i64 @clock() #3
  %27 = sub nsw i64 %26, %3
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %29)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
