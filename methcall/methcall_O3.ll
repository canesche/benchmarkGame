; ModuleID = 'methcall/methcall.c'
source_filename = "methcall/methcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1

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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !18
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #9
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ 500000000, %2 ]
  %11 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #9
  %12 = bitcast i8* %11 to %struct.Toggle*
  %13 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %12, i64 0, i32 0
  store i8 1, i8* %13, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %12, i64 0, i32 1
  %15 = bitcast {}** %14 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %15, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %12, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %16, align 8, !tbaa !11
  %17 = icmp sgt i32 %10, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %9
  %19 = tail call %struct.Toggle* @toggle_activate(%struct.Toggle* noundef nonnull %12) #9
  %20 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %12, i64 0, i32 1
  %21 = bitcast {}** %20 to i8 (%struct.Toggle*)**
  %22 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %21, align 8, !tbaa !10
  %23 = tail call signext i8 %22(%struct.Toggle* noundef nonnull %12) #9
  %24 = icmp eq i32 %10, 1
  br i1 %24, label %35, label %25, !llvm.loop !19

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %33, %25 ], [ 1, %18 ]
  %27 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %16, align 8, !tbaa !11
  %28 = tail call %struct.Toggle* %27(%struct.Toggle* noundef nonnull %12) #9
  %29 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %28, i64 0, i32 1
  %30 = bitcast {}** %29 to i8 (%struct.Toggle*)**
  %31 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %30, align 8, !tbaa !10
  %32 = tail call signext i8 %31(%struct.Toggle* noundef nonnull %12) #9
  %33 = add nuw nsw i32 %26, 1
  %34 = icmp eq i32 %33, %10
  br i1 %34, label %35, label %25, !llvm.loop !19

35:                                               ; preds = %25, %18
  %36 = phi i8 [ %23, %18 ], [ %32, %25 ]
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  br label %39

39:                                               ; preds = %35, %9
  %40 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %9 ]
  %41 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %40)
  tail call void @free(i8* noundef nonnull %13) #9
  %42 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #9
  %43 = bitcast i8* %42 to %struct.Toggle*
  %44 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %43, i64 0, i32 0
  store i8 1, i8* %44, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %43, i64 0, i32 1
  %46 = bitcast {}** %45 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %46, align 8, !tbaa !10
  %47 = bitcast i8* %42 to %struct.NthToggle*
  %48 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %47, i64 0, i32 3
  store i32 3, i32* %48, align 8, !tbaa !15
  %49 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %47, i64 0, i32 4
  store i32 0, i32* %49, align 4, !tbaa !12
  %50 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %47, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %50, align 8, !tbaa !17
  br i1 %17, label %51, label %74

51:                                               ; preds = %39
  %52 = bitcast i8* %42 to %struct.NthToggle*
  %53 = tail call %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* noundef nonnull %52) #9
  %54 = bitcast i8* %42 to %struct.Toggle*
  %55 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %54, i64 0, i32 1
  %56 = bitcast {}** %55 to i8 (%struct.Toggle*)**
  %57 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %56, align 8, !tbaa !10
  %58 = tail call signext i8 %57(%struct.Toggle* noundef nonnull %43) #9
  %59 = icmp eq i32 %10, 1
  br i1 %59, label %70, label %60, !llvm.loop !21

60:                                               ; preds = %51, %60
  %61 = phi i32 [ %68, %60 ], [ 1, %51 ]
  %62 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %50, align 8, !tbaa !17
  %63 = tail call %struct.Toggle* %62(%struct.Toggle* noundef nonnull %43) #9
  %64 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %63, i64 0, i32 1
  %65 = bitcast {}** %64 to i8 (%struct.Toggle*)**
  %66 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %65, align 8, !tbaa !10
  %67 = tail call signext i8 %66(%struct.Toggle* noundef nonnull %43) #9
  %68 = add nuw nsw i32 %61, 1
  %69 = icmp eq i32 %68, %10
  br i1 %69, label %70, label %60, !llvm.loop !21

70:                                               ; preds = %60, %51
  %71 = phi i8 [ %58, %51 ], [ %67, %60 ]
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  br label %74

74:                                               ; preds = %70, %39
  %75 = phi i8* [ %73, %70 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %39 ]
  %76 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %75)
  %77 = getelementptr %struct.NthToggle, %struct.NthToggle* %47, i64 0, i32 0
  tail call void @free(i8* noundef %77) #9
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
