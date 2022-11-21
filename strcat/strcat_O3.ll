; ModuleID = 'strcat/strcat.c'
source_filename = "strcat/strcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"calloc strbuf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc strbuf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #8
  %8 = trunc i64 %7 to i32
  %9 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i64 noundef 1, i64 noundef 32) #8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %19, label %14

11:                                               ; preds = %2
  %12 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i64 noundef 1, i64 noundef 32) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %16

14:                                               ; preds = %4
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %11, %14
  %17 = phi i32 [ %8, %14 ], [ 10000000, %11 ]
  %18 = phi i8* [ %9, %14 ], [ %12, %11 ]
  br label %20

19:                                               ; preds = %11, %4
  tail call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

20:                                               ; preds = %16, %40
  %21 = phi i32 [ %47, %40 ], [ 0, %16 ]
  %22 = phi i8* [ %46, %40 ], [ %18, %16 ]
  %23 = phi i8* [ %42, %40 ], [ %18, %16 ]
  %24 = phi i32 [ %41, %40 ], [ 32, %16 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %22 to i64
  %29 = sub i64 %27, %28
  %30 = icmp slt i64 %29, 7
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = shl nsw i32 %24, 1
  %33 = sext i32 %32 to i64
  %34 = tail call i8* @realloc(i8* noundef %23, i64 noundef %33) #8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

37:                                               ; preds = %31
  %38 = tail call i64 @strlen(i8* noundef nonnull %34) #11
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  br label %40

40:                                               ; preds = %37, %20
  %41 = phi i32 [ %32, %37 ], [ %24, %20 ]
  %42 = phi i8* [ %34, %37 ], [ %23, %20 ]
  %43 = phi i8* [ %39, %37 ], [ %22, %20 ]
  %44 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %43)
  %45 = getelementptr i8, i8* %43, i64 %44
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %45, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 7, i1 false)
  %46 = getelementptr inbounds i8, i8* %43, i64 6
  %47 = add nuw nsw i32 %21, 1
  %48 = icmp eq i32 %47, %17
  br i1 %48, label %49, label %20, !llvm.loop !9

49:                                               ; preds = %40, %14
  %50 = phi i8* [ %9, %14 ], [ %42, %40 ]
  %51 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %50) #11
  %52 = trunc i64 %51 to i32
  %53 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %52)
  tail call void @free(i8* noundef %50) #8
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @perror(i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }

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
