; ModuleID = 'methcall/methcall.c'
source_filename = "methcall/methcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local signext i8 @toggle_value(%struct.Toggle* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 8, !tbaa !5
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Toggle* @toggle_activate(%struct.Toggle* noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 8, !tbaa !5
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %2, align 8, !tbaa !5
  ret %struct.Toggle* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Toggle* @init_Toggle(%struct.Toggle* noundef returned writeonly %0, i8 noundef signext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  store i8 %1, i8* %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 1
  %5 = bitcast {}** %4 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %5, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %6, align 8, !tbaa !11
  ret %struct.Toggle* %0
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.Toggle* @new_Toggle(i8 noundef signext %0) local_unnamed_addr #3 {
  %2 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #9
  %3 = bitcast i8* %2 to %struct.Toggle*
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i64 0, i32 0
  store i8 %0, i8* %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i64 0, i32 1
  %6 = bitcast {}** %5 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %6, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %7, align 8, !tbaa !11
  ret %struct.Toggle* %3
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4, !tbaa !12
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %2, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !15
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 0
  %10 = load i8, i8* %9, align 8, !tbaa !16
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %9, align 8, !tbaa !16
  store i32 0, i32* %2, align 4, !tbaa !12
  br label %13

13:                                               ; preds = %8, %1
  ret %struct.NthToggle* %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.NthToggle* @init_NthToggle(%struct.NthToggle* noundef returned writeonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 3
  store i32 %1, i32* %3, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 4
  store i32 0, i32* %4, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %5, align 8, !tbaa !17
  ret %struct.NthToggle* %0
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.NthToggle* @new_NthToggle(i8 noundef signext %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #9
  %4 = bitcast i8* %3 to %struct.Toggle*
  %5 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %4, i64 0, i32 0
  store i8 %0, i8* %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %4, i64 0, i32 1
  %7 = bitcast {}** %6 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %7, align 8, !tbaa !10
  %8 = bitcast i8* %3 to %struct.NthToggle*
  %9 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %8, i64 0, i32 3
  store i32 %1, i32* %9, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %8, i64 0, i32 4
  store i32 0, i32* %10, align 4, !tbaa !12
  %11 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %8, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %11, align 8, !tbaa !17
  ret %struct.NthToggle* %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #5 {
  %3 = tail call i64 @clock() #9
  %4 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #9
  %5 = bitcast i8* %4 to %struct.Toggle*
  %6 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %5, i64 0, i32 0
  store i8 1, i8* %6, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %5, i64 0, i32 1
  %8 = bitcast {}** %7 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %8, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %5, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %9, align 8, !tbaa !11
  %10 = tail call %struct.Toggle* @toggle_activate(%struct.Toggle* noundef nonnull %5) #9
  %11 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %5, i64 0, i32 1
  %12 = bitcast {}** %11 to i8 (%struct.Toggle*)**
  %13 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %12, align 8, !tbaa !10
  %14 = tail call signext i8 %13(%struct.Toggle* noundef nonnull %5) #9
  br label %15

15:                                               ; preds = %2, %15
  %16 = phi i32 [ 1, %2 ], [ %23, %15 ]
  %17 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %9, align 8, !tbaa !11
  %18 = tail call %struct.Toggle* %17(%struct.Toggle* noundef nonnull %5) #9
  %19 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %18, i64 0, i32 1
  %20 = bitcast {}** %19 to i8 (%struct.Toggle*)**
  %21 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %20, align 8, !tbaa !10
  %22 = tail call signext i8 %21(%struct.Toggle* noundef nonnull %5) #9
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, 500000000
  br i1 %24, label %25, label %15, !llvm.loop !18

25:                                               ; preds = %15
  %26 = icmp eq i8 %22, 0
  %27 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  %28 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %27)
  tail call void @free(i8* noundef nonnull %6) #9
  %29 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #9
  %30 = bitcast i8* %29 to %struct.Toggle*
  %31 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %30, i64 0, i32 0
  store i8 1, i8* %31, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %30, i64 0, i32 1
  %33 = bitcast {}** %32 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %33, align 8, !tbaa !10
  %34 = bitcast i8* %29 to %struct.NthToggle*
  %35 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %34, i64 0, i32 3
  store i32 3, i32* %35, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %34, i64 0, i32 4
  store i32 0, i32* %36, align 4, !tbaa !12
  %37 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %34, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %37, align 8, !tbaa !17
  %38 = bitcast i8* %29 to %struct.NthToggle*
  %39 = tail call %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* noundef nonnull %38) #9
  %40 = bitcast i8* %29 to %struct.Toggle*
  %41 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %40, i64 0, i32 1
  %42 = bitcast {}** %41 to i8 (%struct.Toggle*)**
  %43 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %42, align 8, !tbaa !10
  %44 = tail call signext i8 %43(%struct.Toggle* noundef nonnull %30) #9
  br label %45

45:                                               ; preds = %25, %45
  %46 = phi i32 [ 1, %25 ], [ %53, %45 ]
  %47 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %37, align 8, !tbaa !17
  %48 = tail call %struct.Toggle* %47(%struct.Toggle* noundef nonnull %30) #9
  %49 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %48, i64 0, i32 1
  %50 = bitcast {}** %49 to i8 (%struct.Toggle*)**
  %51 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %50, align 8, !tbaa !10
  %52 = tail call signext i8 %51(%struct.Toggle* noundef nonnull %30) #9
  %53 = add nuw nsw i32 %46, 1
  %54 = icmp eq i32 %53, 500000000
  br i1 %54, label %55, label %45, !llvm.loop !20

55:                                               ; preds = %45
  %56 = icmp eq i8 %52, 0
  %57 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  %58 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %57)
  %59 = tail call i64 @clock() #9
  %60 = sub nsw i64 %59, %3
  %61 = sitofp i64 %60 to double
  %62 = fdiv double %61, 1.000000e+06
  %63 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double noundef %62)
  %64 = getelementptr %struct.NthToggle, %struct.NthToggle* %34, i64 0, i32 0
  tail call void @free(i8* noundef %64) #9
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"Toggle", !7, i64 0, !9, i64 8, !9, i64 16}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!6, !9, i64 8}
!11 = !{!6, !9, i64 16}
!12 = !{!13, !14, i64 28}
!13 = !{!"NthToggle", !7, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !14, i64 28}
!14 = !{!"int", !7, i64 0}
!15 = !{!13, !14, i64 24}
!16 = !{!13, !7, i64 0}
!17 = !{!13, !9, i64 16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
