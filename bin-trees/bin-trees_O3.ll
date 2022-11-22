; ModuleID = 'bin-trees/bin-trees.c'
source_filename = "bin-trees/bin-trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tn = type { %struct.tn*, %struct.tn* }

@.str = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%li\09 trees of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %u\09 check: %li\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local noalias %struct.tn* @NewTreeNode(%struct.tn* noundef %0, %struct.tn* noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %4 = bitcast i8* %3 to %struct.tn*
  %5 = getelementptr inbounds %struct.tn, %struct.tn* %4, i64 0, i32 0
  store %struct.tn* %0, %struct.tn** %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.tn, %struct.tn* %4, i64 0, i32 1
  store %struct.tn* %1, %struct.tn** %6, align 8, !tbaa !10
  ret %struct.tn* %4
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i64 @ItemCheck(%struct.tn* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tn, %struct.tn* %0, i64 0, i32 0
  %3 = load %struct.tn*, %struct.tn** %2, align 8, !tbaa !5
  %4 = icmp eq %struct.tn* %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %5
  %6 = phi %struct.tn* [ %15, %5 ], [ %3, %1 ]
  %7 = phi %struct.tn* [ %11, %5 ], [ %0, %1 ]
  %8 = phi i64 [ %13, %5 ], [ 0, %1 ]
  %9 = tail call i64 @ItemCheck(%struct.tn* noundef nonnull %6)
  %10 = getelementptr inbounds %struct.tn, %struct.tn* %7, i64 0, i32 1
  %11 = load %struct.tn*, %struct.tn** %10, align 8, !tbaa !10
  %12 = add i64 %8, 1
  %13 = add i64 %12, %9
  %14 = getelementptr inbounds %struct.tn, %struct.tn* %11, i64 0, i32 0
  %15 = load %struct.tn*, %struct.tn** %14, align 8, !tbaa !5
  %16 = icmp eq %struct.tn* %15, null
  br i1 %16, label %17, label %5

17:                                               ; preds = %5
  %18 = add i64 %13, 1
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i64 [ 1, %1 ], [ %18, %17 ]
  ret i64 %20
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias %struct.tn* @BottomUpTree(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %13, label %5

3:                                                ; preds = %13, %5
  %4 = phi %struct.tn* [ %10, %5 ], [ %15, %13 ]
  ret %struct.tn* %4

5:                                                ; preds = %1
  %6 = add i32 %0, -1
  %7 = tail call %struct.tn* @BottomUpTree(i32 noundef %6)
  %8 = tail call %struct.tn* @BottomUpTree(i32 noundef %6)
  %9 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #9
  %10 = bitcast i8* %9 to %struct.tn*
  %11 = getelementptr inbounds %struct.tn, %struct.tn* %10, i64 0, i32 0
  store %struct.tn* %7, %struct.tn** %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.tn, %struct.tn* %10, i64 0, i32 1
  store %struct.tn* %8, %struct.tn** %12, align 8, !tbaa !10
  br label %3

13:                                               ; preds = %1
  %14 = call dereferenceable_or_null(16) i8* @calloc(i64 1, i64 16)
  %15 = bitcast i8* %14 to %struct.tn*
  br label %3
}

; Function Attrs: nounwind uwtable
define dso_local void @DeleteTree(%struct.tn* nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tn, %struct.tn* %0, i64 0, i32 0
  %3 = load %struct.tn*, %struct.tn** %2, align 8, !tbaa !5
  %4 = icmp eq %struct.tn* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @DeleteTree(%struct.tn* noundef nonnull %3)
  %6 = getelementptr inbounds %struct.tn, %struct.tn* %0, i64 0, i32 1
  %7 = load %struct.tn*, %struct.tn** %6, align 8, !tbaa !10
  tail call void @DeleteTree(%struct.tn* noundef %7)
  br label %8

8:                                                ; preds = %5, %1
  %9 = bitcast %struct.tn* %0 to i8*
  tail call void @free(i8* noundef %9) #9
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = tail call i64 @clock() #9
  %4 = tail call %struct.tn* @BottomUpTree(i32 noundef 21)
  %5 = tail call i64 @ItemCheck(%struct.tn* noundef %4)
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef 21, i64 noundef %5)
  tail call void @DeleteTree(%struct.tn* noundef %4)
  %7 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %8 = tail call double @exp2(double 2.000000e+01) #9
  br label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %14, %9 ], [ 0, %2 ]
  %11 = phi i64 [ %15, %9 ], [ 1, %2 ]
  %12 = tail call %struct.tn* @BottomUpTree(i32 noundef 4)
  %13 = tail call i64 @ItemCheck(%struct.tn* noundef %12)
  %14 = add nsw i64 %13, %10
  tail call void @DeleteTree(%struct.tn* noundef %12)
  %15 = add nuw i64 %11, 1
  %16 = icmp eq i64 %15, 1048577
  br i1 %16, label %17, label %9, !llvm.loop !11

17:                                               ; preds = %9
  %18 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1048576, i32 noundef 4, i64 noundef %14)
  %19 = tail call double @exp2(double 1.800000e+01) #9
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i64 [ %25, %20 ], [ 0, %17 ]
  %22 = phi i64 [ %26, %20 ], [ 1, %17 ]
  %23 = tail call %struct.tn* @BottomUpTree(i32 noundef 6)
  %24 = tail call i64 @ItemCheck(%struct.tn* noundef %23)
  %25 = add nsw i64 %24, %21
  tail call void @DeleteTree(%struct.tn* noundef %23)
  %26 = add nuw i64 %22, 1
  %27 = icmp eq i64 %26, 262145
  br i1 %27, label %28, label %20, !llvm.loop !11

28:                                               ; preds = %20
  %29 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 262144, i32 noundef 6, i64 noundef %25)
  %30 = tail call double @exp2(double 1.600000e+01) #9
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ %36, %31 ], [ 0, %28 ]
  %33 = phi i64 [ %37, %31 ], [ 1, %28 ]
  %34 = tail call %struct.tn* @BottomUpTree(i32 noundef 8)
  %35 = tail call i64 @ItemCheck(%struct.tn* noundef %34)
  %36 = add nsw i64 %35, %32
  tail call void @DeleteTree(%struct.tn* noundef %34)
  %37 = add nuw i64 %33, 1
  %38 = icmp eq i64 %37, 65537
  br i1 %38, label %39, label %31, !llvm.loop !11

39:                                               ; preds = %31
  %40 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 65536, i32 noundef 8, i64 noundef %36)
  %41 = tail call double @exp2(double 1.400000e+01) #9
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i64 [ %47, %42 ], [ 0, %39 ]
  %44 = phi i64 [ %48, %42 ], [ 1, %39 ]
  %45 = tail call %struct.tn* @BottomUpTree(i32 noundef 10)
  %46 = tail call i64 @ItemCheck(%struct.tn* noundef %45)
  %47 = add nsw i64 %46, %43
  tail call void @DeleteTree(%struct.tn* noundef %45)
  %48 = add nuw i64 %44, 1
  %49 = icmp eq i64 %48, 16385
  br i1 %49, label %50, label %42, !llvm.loop !11

50:                                               ; preds = %42
  %51 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 16384, i32 noundef 10, i64 noundef %47)
  %52 = tail call double @exp2(double 1.200000e+01) #9
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i64 [ %58, %53 ], [ 0, %50 ]
  %55 = phi i64 [ %59, %53 ], [ 1, %50 ]
  %56 = tail call %struct.tn* @BottomUpTree(i32 noundef 12)
  %57 = tail call i64 @ItemCheck(%struct.tn* noundef %56)
  %58 = add nsw i64 %57, %54
  tail call void @DeleteTree(%struct.tn* noundef %56)
  %59 = add nuw i64 %55, 1
  %60 = icmp eq i64 %59, 4097
  br i1 %60, label %61, label %53, !llvm.loop !11

61:                                               ; preds = %53
  %62 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4096, i32 noundef 12, i64 noundef %58)
  %63 = tail call double @exp2(double 1.000000e+01) #9
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i64 [ %69, %64 ], [ 0, %61 ]
  %66 = phi i64 [ %70, %64 ], [ 1, %61 ]
  %67 = tail call %struct.tn* @BottomUpTree(i32 noundef 14)
  %68 = tail call i64 @ItemCheck(%struct.tn* noundef %67)
  %69 = add nsw i64 %68, %65
  tail call void @DeleteTree(%struct.tn* noundef %67)
  %70 = add nuw i64 %66, 1
  %71 = icmp eq i64 %70, 1025
  br i1 %71, label %72, label %64, !llvm.loop !11

72:                                               ; preds = %64
  %73 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1024, i32 noundef 14, i64 noundef %69)
  %74 = tail call double @exp2(double 8.000000e+00) #9
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ %80, %75 ], [ 0, %72 ]
  %77 = phi i64 [ %81, %75 ], [ 1, %72 ]
  %78 = tail call %struct.tn* @BottomUpTree(i32 noundef 16)
  %79 = tail call i64 @ItemCheck(%struct.tn* noundef %78)
  %80 = add nsw i64 %79, %76
  tail call void @DeleteTree(%struct.tn* noundef %78)
  %81 = add nuw i64 %77, 1
  %82 = icmp eq i64 %81, 257
  br i1 %82, label %83, label %75, !llvm.loop !11

83:                                               ; preds = %75
  %84 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 256, i32 noundef 16, i64 noundef %80)
  %85 = tail call double @exp2(double 6.000000e+00) #9
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi i64 [ %91, %86 ], [ 0, %83 ]
  %88 = phi i64 [ %92, %86 ], [ 1, %83 ]
  %89 = tail call %struct.tn* @BottomUpTree(i32 noundef 18)
  %90 = tail call i64 @ItemCheck(%struct.tn* noundef %89)
  %91 = add nsw i64 %90, %87
  tail call void @DeleteTree(%struct.tn* noundef %89)
  %92 = add nuw i64 %88, 1
  %93 = icmp eq i64 %92, 65
  br i1 %93, label %94, label %86, !llvm.loop !11

94:                                               ; preds = %86
  %95 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 64, i32 noundef 18, i64 noundef %91)
  %96 = tail call double @exp2(double 4.000000e+00) #9
  %97 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %98 = tail call i64 @ItemCheck(%struct.tn* noundef %97)
  tail call void @DeleteTree(%struct.tn* noundef %97)
  %99 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %100 = tail call i64 @ItemCheck(%struct.tn* noundef %99)
  %101 = add nsw i64 %100, %98
  tail call void @DeleteTree(%struct.tn* noundef %99)
  %102 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %103 = tail call i64 @ItemCheck(%struct.tn* noundef %102)
  %104 = add nsw i64 %103, %101
  tail call void @DeleteTree(%struct.tn* noundef %102)
  %105 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %106 = tail call i64 @ItemCheck(%struct.tn* noundef %105)
  %107 = add nsw i64 %106, %104
  tail call void @DeleteTree(%struct.tn* noundef %105)
  %108 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %109 = tail call i64 @ItemCheck(%struct.tn* noundef %108)
  %110 = add nsw i64 %109, %107
  tail call void @DeleteTree(%struct.tn* noundef %108)
  %111 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %112 = tail call i64 @ItemCheck(%struct.tn* noundef %111)
  %113 = add nsw i64 %112, %110
  tail call void @DeleteTree(%struct.tn* noundef %111)
  %114 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %115 = tail call i64 @ItemCheck(%struct.tn* noundef %114)
  %116 = add nsw i64 %115, %113
  tail call void @DeleteTree(%struct.tn* noundef %114)
  %117 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %118 = tail call i64 @ItemCheck(%struct.tn* noundef %117)
  %119 = add nsw i64 %118, %116
  tail call void @DeleteTree(%struct.tn* noundef %117)
  %120 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %121 = tail call i64 @ItemCheck(%struct.tn* noundef %120)
  %122 = add nsw i64 %121, %119
  tail call void @DeleteTree(%struct.tn* noundef %120)
  %123 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %124 = tail call i64 @ItemCheck(%struct.tn* noundef %123)
  %125 = add nsw i64 %124, %122
  tail call void @DeleteTree(%struct.tn* noundef %123)
  %126 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %127 = tail call i64 @ItemCheck(%struct.tn* noundef %126)
  %128 = add nsw i64 %127, %125
  tail call void @DeleteTree(%struct.tn* noundef %126)
  %129 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %130 = tail call i64 @ItemCheck(%struct.tn* noundef %129)
  %131 = add nsw i64 %130, %128
  tail call void @DeleteTree(%struct.tn* noundef %129)
  %132 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %133 = tail call i64 @ItemCheck(%struct.tn* noundef %132)
  %134 = add nsw i64 %133, %131
  tail call void @DeleteTree(%struct.tn* noundef %132)
  %135 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %136 = tail call i64 @ItemCheck(%struct.tn* noundef %135)
  %137 = add nsw i64 %136, %134
  tail call void @DeleteTree(%struct.tn* noundef %135)
  %138 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %139 = tail call i64 @ItemCheck(%struct.tn* noundef %138)
  %140 = add nsw i64 %139, %137
  tail call void @DeleteTree(%struct.tn* noundef %138)
  %141 = tail call %struct.tn* @BottomUpTree(i32 noundef 20)
  %142 = tail call i64 @ItemCheck(%struct.tn* noundef %141)
  %143 = add nsw i64 %142, %140
  tail call void @DeleteTree(%struct.tn* noundef %141)
  %144 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef 16, i32 noundef 20, i64 noundef %143)
  %145 = tail call i64 @ItemCheck(%struct.tn* noundef %7)
  %146 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef 20, i64 noundef %145)
  %147 = tail call i64 @clock() #9
  %148 = sub nsw i64 %147, %3
  %149 = sitofp i64 %148 to double
  %150 = fdiv double %149, 1.000000e+06
  %151 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double noundef %150)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

declare double @exp2(double) local_unnamed_addr

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nounwind willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"tn", !7, i64 0, !7, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
