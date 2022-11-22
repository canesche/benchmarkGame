; ModuleID = 'sieve/sieve.c'
source_filename = "sieve/sieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.flags = internal unnamed_addr global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i64 @clock() #4
  br label %7

4:                                                ; preds = %25
  %5 = add nsw i32 %8, -1
  %6 = icmp eq i32 %8, 0
  br i1 %6, label %32, label %7, !llvm.loop !5

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 169999, %2 ], [ %5, %4 ]
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(8191) getelementptr inbounds ([8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 2), i8 1, i64 8191, i1 false), !tbaa !7
  br label %9

9:                                                ; preds = %29, %7
  %10 = phi i8 [ %31, %29 ], [ 1, %7 ]
  %11 = phi i64 [ %27, %29 ], [ 2, %7 ]
  %12 = phi i32 [ %26, %29 ], [ 0, %7 ]
  %13 = icmp eq i8 %10, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = icmp ult i64 %11, 4097
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = shl nuw nsw i64 %11, 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ %21, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %19
  store i8 0, i8* %20, align 1, !tbaa !7
  %21 = add nuw nsw i64 %19, %11
  %22 = icmp ult i64 %21, 8193
  br i1 %22, label %18, label %23, !llvm.loop !10

23:                                               ; preds = %18, %14
  %24 = add nsw i32 %12, 1
  br label %25

25:                                               ; preds = %9, %23
  %26 = phi i32 [ %24, %23 ], [ %12, %9 ]
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, 8193
  br i1 %28, label %4, label %29, !llvm.loop !11

29:                                               ; preds = %25
  %30 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %27
  %31 = load i8, i8* %30, align 1, !tbaa !7
  br label %9

32:                                               ; preds = %4
  %33 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %26)
  %34 = tail call i64 @clock() #4
  %35 = sub nsw i64 %34, %3
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %37)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
