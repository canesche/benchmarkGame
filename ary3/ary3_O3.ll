; ModuleID = 'ary3/ary3.c'
source_filename = "ary3/ary3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #5
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ 1500000, %2 ]
  %11 = sext i32 %10 to i64
  %12 = tail call noalias i8* @calloc(i64 noundef %11, i64 noundef 4) #5
  %13 = bitcast i8* %12 to i32*
  %14 = tail call noalias i8* @calloc(i64 noundef %11, i64 noundef 4) #5
  %15 = bitcast i8* %14 to i32*
  %16 = icmp sgt i32 %10, 0
  br i1 %16, label %17, label %199

17:                                               ; preds = %9
  %18 = zext i32 %10 to i64
  %19 = icmp ult i32 %10, 8
  br i1 %19, label %70, label %20

20:                                               ; preds = %17
  %21 = and i64 %18, 4294967288
  %22 = add nsw i64 %21, -8
  %23 = lshr exact i64 %22, 3
  %24 = add nuw nsw i64 %23, 1
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %20
  %28 = and i64 %24, 4611686018427387902
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %51, %29 ]
  %31 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %27 ], [ %52, %29 ]
  %32 = phi i64 [ 0, %27 ], [ %53, %29 ]
  %33 = getelementptr inbounds i32, i32* %13, i64 %30
  %34 = trunc <4 x i64> %31 to <4 x i32>
  %35 = add <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>
  %36 = trunc <4 x i64> %31 to <4 x i32>
  %37 = add <4 x i32> %36, <i32 5, i32 5, i32 5, i32 5>
  %38 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %38, align 4, !tbaa !9
  %39 = getelementptr inbounds i32, i32* %33, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> %37, <4 x i32>* %40, align 4, !tbaa !9
  %41 = or i64 %30, 8
  %42 = add <4 x i64> %31, <i64 8, i64 8, i64 8, i64 8>
  %43 = getelementptr inbounds i32, i32* %13, i64 %41
  %44 = trunc <4 x i64> %42 to <4 x i32>
  %45 = add <4 x i32> %44, <i32 1, i32 1, i32 1, i32 1>
  %46 = trunc <4 x i64> %42 to <4 x i32>
  %47 = add <4 x i32> %46, <i32 5, i32 5, i32 5, i32 5>
  %48 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %45, <4 x i32>* %48, align 4, !tbaa !9
  %49 = getelementptr inbounds i32, i32* %43, i64 4
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> %47, <4 x i32>* %50, align 4, !tbaa !9
  %51 = add nuw i64 %30, 16
  %52 = add <4 x i64> %31, <i64 16, i64 16, i64 16, i64 16>
  %53 = add i64 %32, 2
  %54 = icmp eq i64 %53, %28
  br i1 %54, label %55, label %29, !llvm.loop !11

55:                                               ; preds = %29
  %56 = trunc <4 x i64> %52 to <4 x i32>
  br label %57

57:                                               ; preds = %55, %20
  %58 = phi i64 [ 0, %20 ], [ %51, %55 ]
  %59 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %20 ], [ %56, %55 ]
  %60 = icmp eq i64 %25, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds i32, i32* %13, i64 %58
  %63 = add <4 x i32> %59, <i32 1, i32 1, i32 1, i32 1>
  %64 = add <4 x i32> %59, <i32 5, i32 5, i32 5, i32 5>
  %65 = bitcast i32* %62 to <4 x i32>*
  store <4 x i32> %63, <4 x i32>* %65, align 4, !tbaa !9
  %66 = getelementptr inbounds i32, i32* %62, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %67, align 4, !tbaa !9
  br label %68

68:                                               ; preds = %57, %61
  %69 = icmp eq i64 %21, %18
  br i1 %69, label %72, label %70

70:                                               ; preds = %17, %68
  %71 = phi i64 [ 0, %17 ], [ %21, %68 ]
  br label %191

72:                                               ; preds = %191, %68
  br i1 %16, label %73, label %199

73:                                               ; preds = %72
  %74 = zext i32 %10 to i64
  %75 = add nsw i64 %18, -1
  %76 = add i32 %10, -1
  %77 = and i64 %18, 4294967288
  %78 = add nsw i64 %77, -8
  %79 = lshr exact i64 %78, 3
  %80 = add nuw nsw i64 %79, 1
  %81 = icmp ult i32 %10, 8
  %82 = trunc i64 %75 to i32
  %83 = icmp ult i32 %76, %82
  %84 = icmp ugt i64 %75, 4294967295
  %85 = or i1 %83, %84
  %86 = and i64 %18, 4294967288
  %87 = sub nsw i64 %74, %86
  %88 = and i64 %80, 1
  %89 = icmp eq i64 %78, 0
  %90 = and i64 %80, 4611686018427387902
  %91 = icmp eq i64 %88, 0
  %92 = icmp eq i64 %86, %18
  br label %93

93:                                               ; preds = %73, %188
  %94 = phi i32 [ %189, %188 ], [ 0, %73 ]
  %95 = select i1 %81, i1 true, i1 %85
  br i1 %95, label %176, label %96

96:                                               ; preds = %93
  br i1 %89, label %149, label %97

97:                                               ; preds = %96, %97
  %98 = phi i64 [ %146, %97 ], [ 0, %96 ]
  %99 = phi i64 [ %147, %97 ], [ 0, %96 ]
  %100 = xor i64 %98, -1
  %101 = add i64 %100, %74
  %102 = and i64 %101, 4294967295
  %103 = getelementptr inbounds i32, i32* %13, i64 %102
  %104 = getelementptr inbounds i32, i32* %103, i64 -3
  %105 = bitcast i32* %104 to <4 x i32>*
  %106 = load <4 x i32>, <4 x i32>* %105, align 4, !tbaa !9
  %107 = getelementptr inbounds i32, i32* %103, i64 -4
  %108 = getelementptr inbounds i32, i32* %107, i64 -3
  %109 = bitcast i32* %108 to <4 x i32>*
  %110 = load <4 x i32>, <4 x i32>* %109, align 4, !tbaa !9
  %111 = getelementptr inbounds i32, i32* %15, i64 %102
  %112 = getelementptr inbounds i32, i32* %111, i64 -3
  %113 = bitcast i32* %112 to <4 x i32>*
  %114 = load <4 x i32>, <4 x i32>* %113, align 4, !tbaa !9
  %115 = getelementptr inbounds i32, i32* %111, i64 -4
  %116 = getelementptr inbounds i32, i32* %115, i64 -3
  %117 = bitcast i32* %116 to <4 x i32>*
  %118 = load <4 x i32>, <4 x i32>* %117, align 4, !tbaa !9
  %119 = add nsw <4 x i32> %114, %106
  %120 = add nsw <4 x i32> %118, %110
  %121 = bitcast i32* %112 to <4 x i32>*
  store <4 x i32> %119, <4 x i32>* %121, align 4, !tbaa !9
  %122 = bitcast i32* %116 to <4 x i32>*
  store <4 x i32> %120, <4 x i32>* %122, align 4, !tbaa !9
  %123 = sub i64 4294967287, %98
  %124 = add i64 %123, %74
  %125 = and i64 %124, 4294967295
  %126 = getelementptr inbounds i32, i32* %13, i64 %125
  %127 = getelementptr inbounds i32, i32* %126, i64 -3
  %128 = bitcast i32* %127 to <4 x i32>*
  %129 = load <4 x i32>, <4 x i32>* %128, align 4, !tbaa !9
  %130 = getelementptr inbounds i32, i32* %126, i64 -4
  %131 = getelementptr inbounds i32, i32* %130, i64 -3
  %132 = bitcast i32* %131 to <4 x i32>*
  %133 = load <4 x i32>, <4 x i32>* %132, align 4, !tbaa !9
  %134 = getelementptr inbounds i32, i32* %15, i64 %125
  %135 = getelementptr inbounds i32, i32* %134, i64 -3
  %136 = bitcast i32* %135 to <4 x i32>*
  %137 = load <4 x i32>, <4 x i32>* %136, align 4, !tbaa !9
  %138 = getelementptr inbounds i32, i32* %134, i64 -4
  %139 = getelementptr inbounds i32, i32* %138, i64 -3
  %140 = bitcast i32* %139 to <4 x i32>*
  %141 = load <4 x i32>, <4 x i32>* %140, align 4, !tbaa !9
  %142 = add nsw <4 x i32> %137, %129
  %143 = add nsw <4 x i32> %141, %133
  %144 = bitcast i32* %135 to <4 x i32>*
  store <4 x i32> %142, <4 x i32>* %144, align 4, !tbaa !9
  %145 = bitcast i32* %139 to <4 x i32>*
  store <4 x i32> %143, <4 x i32>* %145, align 4, !tbaa !9
  %146 = add nuw i64 %98, 16
  %147 = add i64 %99, 2
  %148 = icmp eq i64 %147, %90
  br i1 %148, label %149, label %97, !llvm.loop !14

149:                                              ; preds = %97, %96
  %150 = phi i64 [ 0, %96 ], [ %146, %97 ]
  br i1 %91, label %175, label %151

151:                                              ; preds = %149
  %152 = xor i64 %150, -1
  %153 = add i64 %152, %74
  %154 = and i64 %153, 4294967295
  %155 = getelementptr inbounds i32, i32* %13, i64 %154
  %156 = getelementptr inbounds i32, i32* %155, i64 -3
  %157 = bitcast i32* %156 to <4 x i32>*
  %158 = load <4 x i32>, <4 x i32>* %157, align 4, !tbaa !9
  %159 = getelementptr inbounds i32, i32* %155, i64 -4
  %160 = getelementptr inbounds i32, i32* %159, i64 -3
  %161 = bitcast i32* %160 to <4 x i32>*
  %162 = load <4 x i32>, <4 x i32>* %161, align 4, !tbaa !9
  %163 = getelementptr inbounds i32, i32* %15, i64 %154
  %164 = getelementptr inbounds i32, i32* %163, i64 -3
  %165 = bitcast i32* %164 to <4 x i32>*
  %166 = load <4 x i32>, <4 x i32>* %165, align 4, !tbaa !9
  %167 = getelementptr inbounds i32, i32* %163, i64 -4
  %168 = getelementptr inbounds i32, i32* %167, i64 -3
  %169 = bitcast i32* %168 to <4 x i32>*
  %170 = load <4 x i32>, <4 x i32>* %169, align 4, !tbaa !9
  %171 = add nsw <4 x i32> %166, %158
  %172 = add nsw <4 x i32> %170, %162
  %173 = bitcast i32* %164 to <4 x i32>*
  store <4 x i32> %171, <4 x i32>* %173, align 4, !tbaa !9
  %174 = bitcast i32* %168 to <4 x i32>*
  store <4 x i32> %172, <4 x i32>* %174, align 4, !tbaa !9
  br label %175

175:                                              ; preds = %149, %151
  br i1 %92, label %188, label %176

176:                                              ; preds = %93, %175
  %177 = phi i64 [ %74, %93 ], [ %87, %175 ]
  br label %178

178:                                              ; preds = %176, %178
  %179 = phi i64 [ %180, %178 ], [ %177, %176 ]
  %180 = add nsw i64 %179, -1
  %181 = and i64 %180, 4294967295
  %182 = getelementptr inbounds i32, i32* %13, i64 %181
  %183 = load i32, i32* %182, align 4, !tbaa !9
  %184 = getelementptr inbounds i32, i32* %15, i64 %181
  %185 = load i32, i32* %184, align 4, !tbaa !9
  %186 = add nsw i32 %185, %183
  store i32 %186, i32* %184, align 4, !tbaa !9
  %187 = icmp sgt i64 %179, 1
  br i1 %187, label %178, label %188, !llvm.loop !15

188:                                              ; preds = %178, %175
  %189 = add nuw nsw i32 %94, 1
  %190 = icmp eq i32 %189, 1000
  br i1 %190, label %197, label %93, !llvm.loop !16

191:                                              ; preds = %70, %191
  %192 = phi i64 [ %193, %191 ], [ %71, %70 ]
  %193 = add nuw nsw i64 %192, 1
  %194 = getelementptr inbounds i32, i32* %13, i64 %192
  %195 = trunc i64 %193 to i32
  store i32 %195, i32* %194, align 4, !tbaa !9
  %196 = icmp eq i64 %193, %18
  br i1 %196, label %72, label %191, !llvm.loop !17

197:                                              ; preds = %188
  %198 = load i32, i32* %15, align 4, !tbaa !9
  br label %199

199:                                              ; preds = %9, %72, %197
  %200 = phi i32 [ %198, %197 ], [ 0, %72 ], [ 0, %9 ]
  %201 = add nsw i32 %10, -1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %15, i64 %202
  %204 = load i32, i32* %203, align 4, !tbaa !9
  %205 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %200, i32 noundef %204)
  tail call void @free(i8* noundef %12) #5
  tail call void @free(i8* noundef %14) #5
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12, !18, !13}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
