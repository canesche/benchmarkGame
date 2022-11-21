; ModuleID = 'sieve/sieve.c'
source_filename = "sieve/sieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.flags = internal unnamed_addr global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #4
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %2, %4
  %11 = phi i32 [ 170000, %2 ], [ %8, %4 ]
  br label %15

12:                                               ; preds = %33
  %13 = add nsw i32 %16, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15, !llvm.loop !9

15:                                               ; preds = %10, %12
  %16 = phi i32 [ %13, %12 ], [ %11, %10 ]
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(8191) getelementptr inbounds ([8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 2), i8 1, i64 8191, i1 false), !tbaa !11
  br label %17

17:                                               ; preds = %37, %15
  %18 = phi i8 [ %39, %37 ], [ 1, %15 ]
  %19 = phi i32 [ %34, %37 ], [ 0, %15 ]
  %20 = phi i64 [ %35, %37 ], [ 2, %15 ]
  %21 = icmp eq i8 %18, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = icmp ult i64 %20, 4097
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = shl nuw nsw i64 %20, 1
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %29, %26 ], [ %25, %24 ]
  %28 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %27
  store i8 0, i8* %28, align 1, !tbaa !11
  %29 = add nuw nsw i64 %27, %20
  %30 = icmp ult i64 %29, 8193
  br i1 %30, label %26, label %31, !llvm.loop !12

31:                                               ; preds = %26, %22
  %32 = add nsw i32 %19, 1
  br label %33

33:                                               ; preds = %17, %31
  %34 = phi i32 [ %32, %31 ], [ %19, %17 ]
  %35 = add nuw nsw i64 %20, 1
  %36 = icmp eq i64 %35, 8193
  br i1 %36, label %12, label %37, !llvm.loop !13

37:                                               ; preds = %33
  %38 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %35
  %39 = load i8, i8* %38, align 1, !tbaa !11
  br label %17

40:                                               ; preds = %12, %4
  %41 = phi i32 [ 0, %4 ], [ %34, %12 ]
  %42 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %41)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
