; ModuleID = 'fannkuch/fannkuch.c'
source_filename = "fannkuch/fannkuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"%jd\0APfannkuchen(%jd) = %jd\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call i64 @clock() #5
  %4 = alloca [12 x i64], align 16
  %5 = bitcast [12 x i64]* %4 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %5, align 16, !tbaa !5
  %6 = getelementptr inbounds [12 x i64], [12 x i64]* %4, i64 0, i64 2
  %7 = bitcast i64* %6 to <2 x i64>*
  store <2 x i64> <i64 2, i64 6>, <2 x i64>* %7, align 16, !tbaa !5
  %8 = getelementptr inbounds [12 x i64], [12 x i64]* %4, i64 0, i64 4
  %9 = bitcast i64* %8 to <2 x i64>*
  store <2 x i64> <i64 24, i64 120>, <2 x i64>* %9, align 16, !tbaa !5
  %10 = getelementptr inbounds [12 x i64], [12 x i64]* %4, i64 0, i64 6
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 720, i64 5040>, <2 x i64>* %11, align 16, !tbaa !5
  %12 = getelementptr inbounds [12 x i64], [12 x i64]* %4, i64 0, i64 8
  %13 = bitcast i64* %12 to <2 x i64>*
  store <2 x i64> <i64 40320, i64 362880>, <2 x i64>* %13, align 16, !tbaa !5
  %14 = getelementptr inbounds [12 x i64], [12 x i64]* %4, i64 0, i64 10
  %15 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> <i64 3628800, i64 39916800>, <2 x i64>* %15, align 16, !tbaa !5
  br label %23

16:                                               ; preds = %155
  %17 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 noundef %152, i64 noundef 11, i64 noundef %153)
  %18 = tail call i64 @clock() #5
  %19 = sub nsw i64 %18, %3
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %21)
  ret i32 0

23:                                               ; preds = %2, %155
  %24 = phi i64 [ %153, %155 ], [ 0, %2 ]
  %25 = phi i64 [ %152, %155 ], [ 0, %2 ]
  %26 = phi i64 [ %46, %155 ], [ 0, %2 ]
  %27 = tail call i8* @llvm.stacksave()
  %28 = alloca [11 x i64], align 16
  %29 = alloca [11 x i8], align 16
  %30 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 0
  %31 = alloca [11 x i8], align 16
  %32 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 0
  %33 = getelementptr inbounds [11 x i64], [11 x i64]* %28, i64 0, i64 0
  store i64 0, i64* %33, align 16, !tbaa !5
  %34 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 0
  store i8 0, i8* %34, align 16, !tbaa !9
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 1
  store i8 1, i8* %35, align 1, !tbaa !9
  %36 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 2
  store i8 2, i8* %36, align 2, !tbaa !9
  %37 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 3
  store i8 3, i8* %37, align 1, !tbaa !9
  %38 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 4
  store i8 4, i8* %38, align 4, !tbaa !9
  %39 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 5
  store i8 5, i8* %39, align 1, !tbaa !9
  %40 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 6
  store i8 6, i8* %40, align 2, !tbaa !9
  %41 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 7
  store i8 7, i8* %41, align 1, !tbaa !9
  %42 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 8
  store i8 8, i8* %42, align 8, !tbaa !9
  %43 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 9
  store i8 9, i8* %43, align 1, !tbaa !9
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 10
  store i8 10, i8* %44, align 2, !tbaa !9
  br label %53

45:                                               ; preds = %79
  %46 = add nuw nsw i64 %26, 3326400
  %47 = add nuw nsw i64 %26, 3326399
  %48 = load i8, i8* %34, align 16, !tbaa !9
  %49 = getelementptr inbounds [11 x i64], [11 x i64]* %28, i64 0, i64 1
  %50 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 1
  %51 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 2
  %52 = getelementptr inbounds [11 x i64], [11 x i64]* %28, i64 0, i64 2
  br label %105

53:                                               ; preds = %79, %23
  %54 = phi i64 [ %83, %79 ], [ 0, %23 ]
  %55 = phi i64 [ %82, %79 ], [ 11, %23 ]
  %56 = phi i64 [ %62, %79 ], [ %26, %23 ]
  %57 = phi i64 [ %80, %79 ], [ 10, %23 ]
  %58 = getelementptr inbounds [12 x i64], [12 x i64]* %4, i64 0, i64 %57
  %59 = load i64, i64* %58, align 8, !tbaa !5
  %60 = sdiv i64 %56, %59
  %61 = getelementptr inbounds [11 x i64], [11 x i64]* %28, i64 0, i64 %57
  store i64 %60, i64* %61, align 8, !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(11) %30, i8* noundef nonnull align 16 dereferenceable(11) %32, i64 11, i1 false), !tbaa !9
  %62 = srem i64 %56, %59
  %63 = xor i64 %57, -1
  %64 = and i64 %55, 1
  %65 = icmp eq i64 %54, 10
  br i1 %65, label %68, label %66

66:                                               ; preds = %53
  %67 = and i64 %55, -2
  br label %84

68:                                               ; preds = %84, %53
  %69 = phi i64 [ 0, %53 ], [ %102, %84 ]
  %70 = icmp eq i64 %64, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = add nsw i64 %69, %60
  %73 = icmp sgt i64 %72, %57
  %74 = select i1 %73, i64 %63, i64 0
  %75 = add i64 %74, %72
  %76 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1, !tbaa !9
  %78 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 %69
  store i8 %77, i8* %78, align 1, !tbaa !9
  br label %79

79:                                               ; preds = %68, %71
  %80 = add nsw i64 %57, -1
  %81 = icmp ugt i64 %57, 1
  %82 = add nsw i64 %55, -1
  %83 = add i64 %54, 1
  br i1 %81, label %53, label %45, !llvm.loop !10

84:                                               ; preds = %84, %66
  %85 = phi i64 [ 0, %66 ], [ %102, %84 ]
  %86 = phi i64 [ 0, %66 ], [ %103, %84 ]
  %87 = add nsw i64 %85, %60
  %88 = icmp sgt i64 %87, %57
  %89 = select i1 %88, i64 %63, i64 0
  %90 = add i64 %89, %87
  %91 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1, !tbaa !9
  %93 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 %85
  store i8 %92, i8* %93, align 2, !tbaa !9
  %94 = or i64 %85, 1
  %95 = add nsw i64 %94, %60
  %96 = icmp sgt i64 %95, %57
  %97 = select i1 %96, i64 %63, i64 0
  %98 = add i64 %97, %95
  %99 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1, !tbaa !9
  %101 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 %94
  store i8 %100, i8* %101, align 1, !tbaa !9
  %102 = add nuw nsw i64 %85, 2
  %103 = add i64 %86, 2
  %104 = icmp eq i64 %103, %67
  br i1 %104, label %68, label %84, !llvm.loop !12

105:                                              ; preds = %167, %45
  %106 = phi i8 [ %48, %45 ], [ %168, %167 ]
  %107 = phi i64 [ %25, %45 ], [ %152, %167 ]
  %108 = phi i64 [ %26, %45 ], [ %169, %167 ]
  %109 = phi i64 [ %24, %45 ], [ %153, %167 ]
  %110 = icmp sgt i8 %106, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %50, i8* noundef nonnull align 1 dereferenceable(10) %35, i64 10, i1 false), !tbaa !9
  %112 = zext i8 %106 to i64
  %113 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1, !tbaa !9
  %115 = icmp sgt i8 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %145, %111
  %117 = phi i64 [ 1, %111 ], [ %146, %145 ]
  %118 = and i64 %108, 1
  %119 = icmp eq i64 %118, 0
  %120 = sub nsw i64 0, %117
  %121 = select i1 %119, i64 %117, i64 %120
  %122 = add i64 %121, %107
  %123 = icmp sgt i64 %117, %109
  %124 = select i1 %123, i64 %117, i64 %109
  br label %151

125:                                              ; preds = %111, %145
  %126 = phi i8 [ %149, %145 ], [ %114, %111 ]
  %127 = phi i8* [ %148, %145 ], [ %113, %111 ]
  %128 = phi i64 [ %147, %145 ], [ %112, %111 ]
  %129 = phi i8 [ %126, %145 ], [ %106, %111 ]
  %130 = phi i64 [ %146, %145 ], [ 1, %111 ]
  store i8 %129, i8* %127, align 1, !tbaa !9
  %131 = icmp sgt i8 %129, 2
  br i1 %131, label %132, label %145

132:                                              ; preds = %125, %132
  %133 = phi i64 [ %140, %132 ], [ 1, %125 ]
  %134 = phi i64 [ %135, %132 ], [ %128, %125 ]
  %135 = add nsw i64 %134, -1
  %136 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1, !tbaa !9
  %138 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %133
  %139 = load i8, i8* %138, align 1, !tbaa !9
  store i8 %139, i8* %136, align 1, !tbaa !9
  store i8 %137, i8* %138, align 1, !tbaa !9
  %140 = add nuw nsw i64 %133, 1
  %141 = add nuw nsw i64 %133, 3
  %142 = icmp slt i64 %141, %134
  %143 = icmp ult i64 %133, 15
  %144 = and i1 %143, %142
  br i1 %144, label %132, label %145, !llvm.loop !13

145:                                              ; preds = %132, %125
  %146 = add nuw nsw i64 %130, 1
  %147 = sext i8 %126 to i64
  %148 = getelementptr inbounds [11 x i8], [11 x i8]* %29, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1, !tbaa !9
  %150 = icmp sgt i8 %149, 0
  br i1 %150, label %125, label %116, !llvm.loop !14

151:                                              ; preds = %116, %105
  %152 = phi i64 [ %122, %116 ], [ %107, %105 ]
  %153 = phi i64 [ %124, %116 ], [ %109, %105 ]
  %154 = icmp ult i64 %108, %47
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  store i8 %106, i8* %34, align 16, !tbaa !9
  tail call void @llvm.stackrestore(i8* %27)
  %156 = icmp ult i64 %26, 36590400
  br i1 %156, label %23, label %16, !llvm.loop !15

157:                                              ; preds = %151
  %158 = load i8, i8* %35, align 1, !tbaa !9
  store i8 %106, i8* %35, align 1, !tbaa !9
  %159 = load i64, i64* %49, align 8, !tbaa !5
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %49, align 8, !tbaa !5
  %161 = icmp slt i64 %159, 1
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  store i64 0, i64* %49, align 8, !tbaa !5
  %163 = load i8, i8* %36, align 2, !tbaa !9
  store i8 %163, i8* %35, align 1, !tbaa !9
  store i8 %158, i8* %51, align 2, !tbaa !9
  %164 = load i64, i64* %52, align 16, !tbaa !5
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %52, align 16, !tbaa !5
  %166 = icmp sgt i64 %164, 1
  br i1 %166, label %170, label %167, !llvm.loop !16

167:                                              ; preds = %170, %162, %157
  %168 = phi i8 [ %158, %157 ], [ %106, %162 ], [ %174, %170 ]
  %169 = add nuw nsw i64 %108, 1
  br label %105

170:                                              ; preds = %162, %170
  %171 = phi i64* [ %177, %170 ], [ %52, %162 ]
  %172 = phi i64 [ %175, %170 ], [ 2, %162 ]
  %173 = phi i8 [ %174, %170 ], [ %106, %162 ]
  %174 = load i8, i8* %35, align 1, !tbaa !9
  store i64 0, i64* %171, align 8, !tbaa !5
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %35, i8* noundef nonnull align 2 %36, i64 %172, i1 false), !tbaa !9
  %175 = add nuw nsw i64 %172, 1
  %176 = getelementptr inbounds [11 x i8], [11 x i8]* %31, i64 0, i64 %175
  store i8 %173, i8* %176, align 1, !tbaa !9
  %177 = getelementptr inbounds [11 x i64], [11 x i64]* %28, i64 0, i64 %175
  %178 = load i64, i64* %177, align 8, !tbaa !5
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8, !tbaa !5
  %180 = icmp sgt i64 %178, %172
  br i1 %180, label %170, label %167, !llvm.loop !16
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
