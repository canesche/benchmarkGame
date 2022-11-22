; ModuleID = 'regex/regex.c'
source_filename = "regex/regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fbuf = type { i8*, i64, i64 }
%struct.real_pcre = type opaque
%struct.pcre_extra = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }

@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c">.*|\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@variants = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0A%zu\0A%zu\0A%zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"agggtaaa|tttaccct\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"[cgt]gggtaaa|tttaccc[acg]\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"a[act]ggtaaa|tttacc[agt]t\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ag[act]gtaaa|tttac[agt]ct\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"agg[act]taaa|ttta[agt]cct\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"aggg[acg]aaa|ttt[cgt]ccct\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"agggt[cgt]aa|tt[acg]accct\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"agggta[cgt]a|t[acg]taccct\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"agggtaa[cgt]|[acg]ttaccct\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"tHa[Nt]\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"<4>\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"aND|caN|Ha[DS]|WaS\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"<3>\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"a[NSt]|BY\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"<2>\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"<[^>]*>\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"\\|[^|][^|]*\\|\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [2 x %struct.fbuf], align 16
  %7 = alloca [9 x i8*], align 16
  %8 = bitcast [2 x %struct.fbuf]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %8) #12
  %9 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0
  %10 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 1
  %11 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0, i32 2
  %12 = bitcast i64* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %13 = tail call i64 @clock() #12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !5
  %15 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0, i32 2
  %16 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0, i32 1
  store i64 196608, i64* %16, align 8, !tbaa !9
  %17 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0, i32 0
  %18 = tail call dereferenceable_or_null(196608) i8* @malloc(i64 196608)
  store i8* %18, i8** %17, align 16, !tbaa !12
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  tail call void @exit(i32 noundef 1) #13
  unreachable

21:                                               ; preds = %2
  %22 = tail call i64 @fread(i8* noundef nonnull %18, i64 noundef 1, i64 noundef 196608, %struct._IO_FILE* noundef %14) #12
  %23 = trunc i64 %22 to i32
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0, i32 0
  br label %27

27:                                               ; preds = %48, %25
  %28 = phi i8* [ %18, %25 ], [ %49, %48 ]
  %29 = phi i64 [ 196608, %25 ], [ %50, %48 ]
  %30 = phi i64 [ 0, %25 ], [ %34, %48 ]
  %31 = phi i64 [ %22, %25 ], [ %53, %48 ]
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = add i64 %33, %30
  %35 = add i64 %34, 196608
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = icmp eq i64 %29, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ %41, %39 ], [ %29, %37 ]
  %41 = shl i64 %40, 1
  %42 = icmp ugt i64 %35, %41
  br i1 %42, label %39, label %43, !llvm.loop !13

43:                                               ; preds = %39, %37
  %44 = phi i64 [ %35, %37 ], [ %41, %39 ]
  %45 = tail call i8* @realloc(i8* noundef %28, i64 noundef %44) #12
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @exit(i32 noundef 1) #13
  unreachable

48:                                               ; preds = %27, %43
  %49 = phi i8* [ %45, %43 ], [ %28, %27 ]
  %50 = phi i64 [ %44, %43 ], [ %29, %27 ]
  %51 = getelementptr inbounds i8, i8* %49, i64 %34
  %52 = sub i64 %50, %34
  %53 = tail call i64 @fread(i8* noundef %51, i64 noundef 1, i64 noundef %52, %struct._IO_FILE* noundef %14) #12
  %54 = trunc i64 %53 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %27, label %56, !llvm.loop !15

56:                                               ; preds = %48
  store i64 %34, i64* %15, align 16, !tbaa !16
  store i64 %50, i64* %16, align 8, !tbaa !9
  store i8* %49, i8** %26, align 16, !tbaa !12
  br label %57

57:                                               ; preds = %56, %21
  %58 = phi i64 [ %34, %56 ], [ 0, %21 ]
  %59 = tail call i32 @ferror(%struct._IO_FILE* noundef %14) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @exit(i32 noundef 1) #13
  unreachable

62:                                               ; preds = %57
  %63 = call fastcc i64 @fb_subst(%struct.fbuf* noundef nonnull %10, %struct.fbuf* noundef nonnull %9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %64 = bitcast [9 x i8*]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %64) #12
  %65 = bitcast i8** %3 to i8*
  %66 = bitcast i32* %4 to i8*
  %67 = bitcast [3 x i32]* %5 to i8*
  %68 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %10, i64 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 1, i32 2
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %71 = load i8*, i8** %68, align 8
  %72 = load i64, i64* %69, align 8
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  br label %75

75:                                               ; preds = %62, %94
  %76 = phi i64 [ 0, %62 ], [ %97, %94 ]
  %77 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #12
  %78 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 %76
  store i8* %77, i8** %78, align 8, !tbaa !5
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* @variants, i64 0, i64 %76
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #12
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %67) #12
  %81 = call %struct.real_pcre* @pcre_compile(i8* noundef %80, i32 noundef 0, i8** noundef nonnull %3, i32* noundef nonnull %4, i8* noundef null) #12
  %82 = icmp eq %struct.real_pcre* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  call void @exit(i32 noundef 1) #13
  unreachable

84:                                               ; preds = %75
  %85 = call %struct.pcre_extra* @pcre_study(%struct.real_pcre* noundef nonnull %81, i32 noundef 1, i8** noundef nonnull %3) #12
  %86 = call i32 @pcre_exec(%struct.real_pcre* noundef nonnull %81, %struct.pcre_extra* noundef %85, i8* noundef %71, i32 noundef %73, i32 noundef 0, i32 noundef 0, i32* noundef nonnull %70, i32 noundef 3) #12
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %94

88:                                               ; preds = %84, %88
  %89 = phi i32 [ %90, %88 ], [ 0, %84 ]
  %90 = add nuw nsw i32 %89, 1
  %91 = load i32, i32* %74, align 4, !tbaa !17
  %92 = call i32 @pcre_exec(%struct.real_pcre* noundef nonnull %81, %struct.pcre_extra* noundef %85, i8* noundef %71, i32 noundef %73, i32 noundef %91, i32 noundef 0, i32* noundef nonnull %70, i32 noundef 3) #12
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %88, label %94, !llvm.loop !19

94:                                               ; preds = %88, %84
  %95 = phi i32 [ 0, %84 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %67) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #12
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %77, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %80, i32 noundef %95) #12
  %97 = add nuw nsw i64 %76, 1
  %98 = icmp eq i64 %97, 9
  br i1 %98, label %99, label %75, !llvm.loop !20

99:                                               ; preds = %94
  %100 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 0
  %101 = load i8*, i8** %100, align 16, !tbaa !5
  %102 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %101)
  call void @free(i8* noundef %101) #12
  %103 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 1
  %104 = load i8*, i8** %103, align 8, !tbaa !5
  %105 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %104)
  call void @free(i8* noundef %104) #12
  %106 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 2
  %107 = load i8*, i8** %106, align 16, !tbaa !5
  %108 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %107)
  call void @free(i8* noundef %107) #12
  %109 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 3
  %110 = load i8*, i8** %109, align 8, !tbaa !5
  %111 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %110)
  call void @free(i8* noundef %110) #12
  %112 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 4
  %113 = load i8*, i8** %112, align 16, !tbaa !5
  %114 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %113)
  call void @free(i8* noundef %113) #12
  %115 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 5
  %116 = load i8*, i8** %115, align 8, !tbaa !5
  %117 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %116)
  call void @free(i8* noundef %116) #12
  %118 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 6
  %119 = load i8*, i8** %118, align 16, !tbaa !5
  %120 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %119)
  call void @free(i8* noundef %119) #12
  %121 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 7
  %122 = load i8*, i8** %121, align 8, !tbaa !5
  %123 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %122)
  call void @free(i8* noundef %122) #12
  %124 = getelementptr inbounds [9 x i8*], [9 x i8*]* %7, i64 0, i64 8
  %125 = load i8*, i8** %124, align 16, !tbaa !5
  %126 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %125)
  call void @free(i8* noundef %125) #12
  %127 = call fastcc i64 @fb_subst(%struct.fbuf* noundef nonnull %9, %struct.fbuf* noundef nonnull %10, i8* noundef nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %128 = call fastcc i64 @fb_subst(%struct.fbuf* noundef nonnull %10, %struct.fbuf* noundef nonnull %9, i8* noundef nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %129 = call fastcc i64 @fb_subst(%struct.fbuf* noundef nonnull %9, %struct.fbuf* noundef nonnull %10, i8* noundef nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %130 = call fastcc i64 @fb_subst(%struct.fbuf* noundef nonnull %10, %struct.fbuf* noundef nonnull %9, i8* noundef nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %131 = call fastcc i64 @fb_subst(%struct.fbuf* noundef nonnull %9, %struct.fbuf* noundef nonnull %10, i8* noundef nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 noundef %58, i64 noundef %63, i64 noundef %131)
  %133 = call i64 @clock() #12
  %134 = sub nsw i64 %133, %13
  %135 = sitofp i64 %134 to double
  %136 = fdiv double %135, 1.000000e+06
  %137 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), double noundef %136)
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %64) #12
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %8) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @fb_subst(%struct.fbuf* nocapture noundef %0, %struct.fbuf* nocapture noundef readonly %1, i8* noundef %2, i8* nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #12
  %10 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %10) #12
  %11 = call %struct.real_pcre* @pcre_compile(i8* noundef %2, i32 noundef 0, i8** noundef nonnull %5, i32* noundef nonnull %6, i8* noundef null) #12
  %12 = icmp eq %struct.real_pcre* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @exit(i32 noundef 1) #13
  unreachable

14:                                               ; preds = %4
  %15 = call %struct.pcre_extra* @pcre_study(%struct.real_pcre* noundef nonnull %11, i32 noundef 1, i8** noundef nonnull %5) #12
  %16 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %0, i64 0, i32 2
  store i64 0, i64* %16, align 8, !tbaa !16
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #14
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %1, i64 0, i32 0
  %20 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %1, i64 0, i32 2
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %22 = load i8*, i8** %19, align 8, !tbaa !12
  %23 = load i64, i64* %20, align 8, !tbaa !16
  %24 = trunc i64 %23 to i32
  %25 = call i32 @pcre_exec(%struct.real_pcre* noundef nonnull %11, %struct.pcre_extra* noundef %15, i8* noundef %22, i32 noundef %24, i32 noundef 0, i32 noundef 0, i32* noundef nonnull %21, i32 noundef 3) #12
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %76

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %0, i64 0, i32 0
  %30 = shl i64 %17, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  br label %33

33:                                               ; preds = %27, %60
  %34 = phi i32 [ 0, %27 ], [ %70, %60 ]
  %35 = load i32, i32* %21, align 4, !tbaa !17
  %36 = sub nsw i32 %35, %34
  %37 = add nsw i32 %36, %18
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %16, align 8, !tbaa !16
  %40 = add i64 %39, %38
  %41 = load i64, i64* %28, align 8, !tbaa !9
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load i8*, i8** %29, align 8, !tbaa !12
  br label %60

45:                                               ; preds = %33
  %46 = icmp eq i64 %41, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %49, %47 ], [ %41, %45 ]
  %49 = shl i64 %48, 1
  %50 = icmp ugt i64 %40, %49
  br i1 %50, label %47, label %51, !llvm.loop !13

51:                                               ; preds = %47, %45
  %52 = phi i64 [ %40, %45 ], [ %49, %47 ]
  store i64 %52, i64* %28, align 8, !tbaa !9
  %53 = load i8*, i8** %29, align 8, !tbaa !12
  %54 = call i8* @realloc(i8* noundef %53, i64 noundef %52) #12
  store i8* %54, i8** %29, align 8, !tbaa !12
  %55 = icmp eq i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %16, align 8, !tbaa !16
  %58 = add i64 %57, %38
  br label %60

59:                                               ; preds = %51
  call void @exit(i32 noundef 1) #13
  unreachable

60:                                               ; preds = %43, %56
  %61 = phi i64 [ %40, %43 ], [ %58, %56 ]
  %62 = phi i64 [ %39, %43 ], [ %57, %56 ]
  %63 = phi i8* [ %44, %43 ], [ %54, %56 ]
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i64 %61, i64* %16, align 8, !tbaa !16
  %65 = load i8*, i8** %19, align 8, !tbaa !12
  %66 = sext i32 %34 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = sext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 %67, i64 %68, i1 false)
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %3, i64 %31, i1 false)
  %70 = load i32, i32* %32, align 4, !tbaa !17
  %71 = load i8*, i8** %19, align 8, !tbaa !12
  %72 = load i64, i64* %20, align 8, !tbaa !16
  %73 = trunc i64 %72 to i32
  %74 = call i32 @pcre_exec(%struct.real_pcre* noundef nonnull %11, %struct.pcre_extra* noundef %15, i8* noundef %71, i32 noundef %73, i32 noundef %70, i32 noundef 0, i32* noundef nonnull %21, i32 noundef 3) #12
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %33, label %76, !llvm.loop !21

76:                                               ; preds = %60, %14
  %77 = phi i32 [ 0, %14 ], [ %70, %60 ]
  %78 = load i64, i64* %20, align 8, !tbaa !16
  %79 = trunc i64 %78 to i32
  %80 = sub i32 %79, %77
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %16, align 8, !tbaa !16
  %83 = add i64 %82, %81
  %84 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %0, i64 0, i32 1
  %85 = load i64, i64* %84, align 8, !tbaa !9
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %0, i64 0, i32 0
  %89 = load i8*, i8** %88, align 8, !tbaa !12
  br label %106

90:                                               ; preds = %76
  %91 = icmp eq i64 %85, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ %94, %92 ], [ %85, %90 ]
  %94 = shl i64 %93, 1
  %95 = icmp ugt i64 %83, %94
  br i1 %95, label %92, label %96, !llvm.loop !13

96:                                               ; preds = %92, %90
  %97 = phi i64 [ %83, %90 ], [ %94, %92 ]
  store i64 %97, i64* %84, align 8, !tbaa !9
  %98 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %0, i64 0, i32 0
  %99 = load i8*, i8** %98, align 8, !tbaa !12
  %100 = call i8* @realloc(i8* noundef %99, i64 noundef %97) #12
  store i8* %100, i8** %98, align 8, !tbaa !12
  %101 = icmp eq i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %16, align 8, !tbaa !16
  %104 = add i64 %103, %81
  br label %106

105:                                              ; preds = %96
  call void @exit(i32 noundef 1) #13
  unreachable

106:                                              ; preds = %87, %102
  %107 = phi i64 [ %83, %87 ], [ %104, %102 ]
  %108 = phi i64 [ %82, %87 ], [ %103, %102 ]
  %109 = phi i8* [ %89, %87 ], [ %100, %102 ]
  %110 = sext i32 %77 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %108
  store i64 %107, i64* %16, align 8, !tbaa !16
  %112 = load i8*, i8** %19, align 8, !tbaa !12
  %113 = getelementptr inbounds i8, i8* %112, i64 %110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %111, i8* align 1 %113, i64 %81, i1 false)
  %114 = load i64, i64* %16, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %10) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12
  ret i64 %114
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

declare %struct.real_pcre* @pcre_compile(i8* noundef, i32 noundef, i8** noundef, i32* noundef, i8* noundef) local_unnamed_addr #8

declare %struct.pcre_extra* @pcre_study(%struct.real_pcre* noundef, i32 noundef, i8** noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #9

declare i32 @pcre_exec(%struct.real_pcre* noundef, %struct.pcre_extra* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"fbuf", !6, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!10, !11, i64 16}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
