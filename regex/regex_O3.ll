; ModuleID = 'regex/regex.c'
source_filename = "regex/regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.string = type { i8*, i64, i64 }
%struct.pcre2_real_match_context_8 = type opaque
%struct.pcre2_real_general_context_8 = type opaque
%struct.pcre2_real_jit_stack_8 = type opaque
%struct.pcre2_real_match_data_8 = type opaque
%struct.pcre2_real_code_8 = type opaque
%struct.pcre2_real_compile_context_8 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"agggtaaa|tttaccct\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[cgt]gggtaaa|tttaccc[acg]\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"a[act]ggtaaa|tttacc[agt]t\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ag[act]gtaaa|tttac[agt]ct\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"agg[act]taaa|ttta[agt]cct\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"aggg[acg]aaa|ttt[cgt]ccct\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"agggt[cgt]aa|tt[acg]accct\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"agggta[cgt]a|t[acg]taccct\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"agggtaa[cgt]|[acg]ttaccct\00", align 1
@__const.main.count_Info = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"tHa[Nt]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"<4>\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"aND|caN|Ha[DS]|WaS\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"<3>\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"a[NSt]|BY\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"<2>\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"<[^>]*>\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\\|[^|][^|]*\\|\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c">.*\\n|\\n\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.string, align 8
  %2 = alloca %struct.string, align 8
  %3 = alloca %struct.string, align 8
  %4 = alloca %struct.string, align 8
  %5 = alloca %struct.string, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = bitcast %struct.string* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8
  %9 = getelementptr inbounds %struct.string, %struct.string* %1, i64 0, i32 0
  %10 = tail call noalias dereferenceable_or_null(16384) i8* @malloc(i64 noundef 16384) #8
  %11 = getelementptr inbounds %struct.string, %struct.string* %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.string, %struct.string* %1, i64 0, i32 2
  %13 = bitcast %struct.string* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8
  %14 = getelementptr inbounds %struct.string, %struct.string* %2, i64 0, i32 0
  %15 = tail call noalias dereferenceable_or_null(16384) i8* @malloc(i64 noundef 16384) #8
  store i8* %15, i8** %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.string, %struct.string* %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.string, %struct.string* %2, i64 0, i32 2
  %18 = bitcast i64* %16 to <2 x i64>*
  store <2 x i64> <i64 16384, i64 0>, <2 x i64>* %18, align 8, !tbaa !11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !12
  %20 = tail call i64 @fread(i8* noundef %10, i64 noundef 1, i64 noundef 16384, %struct._IO_FILE* noundef %19)
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %62, %0
  %24 = phi i64 [ 16384, %0 ], [ %63, %62 ]
  %25 = phi i64 [ 0, %0 ], [ %57, %62 ]
  %26 = phi i8* [ %10, %0 ], [ %64, %62 ]
  store i8* %26, i8** %9, align 8, !tbaa !5
  store i64 %25, i64* %12, align 8, !tbaa !13
  store i64 %24, i64* %11, align 8, !tbaa !14
  %27 = tail call %struct.pcre2_real_match_context_8* @pcre2_match_context_create_8(%struct.pcre2_real_general_context_8* noundef null) #8
  %28 = tail call %struct.pcre2_real_jit_stack_8* @pcre2_jit_stack_create_8(i64 noundef 16384, i64 noundef 16384, %struct.pcre2_real_general_context_8* noundef null) #8
  %29 = bitcast %struct.pcre2_real_jit_stack_8* %28 to i8*
  tail call void @pcre2_jit_stack_assign_8(%struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_jit_stack_8* (i8*)* noundef null, i8* noundef %29) #8
  %30 = tail call %struct.pcre2_real_match_data_8* @pcre2_match_data_create_8(i32 noundef 16, %struct.pcre2_real_general_context_8* noundef null) #8
  call fastcc void @replace(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), %struct.string* noundef nonnull %1, %struct.string* noundef nonnull %2, %struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_match_data_8* noundef %30)
  tail call void @free(i8* noundef %26) #8
  %31 = bitcast %struct.string* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %31) #8
  %32 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 0
  %33 = load i64, i64* %16, align 8, !tbaa !14
  %34 = tail call noalias i8* @malloc(i64 noundef %33) #8
  store i8* %34, i8** %32, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 1
  store i64 %33, i64* %35, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 2
  %37 = load i64, i64* %17, align 8, !tbaa !13
  store i64 %37, i64* %36, align 8, !tbaa !13
  %38 = bitcast %struct.string* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38) #8
  %39 = getelementptr inbounds %struct.string, %struct.string* %4, i64 0, i32 0
  %40 = tail call noalias i8* @malloc(i64 noundef %33) #8
  store i8* %40, i8** %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.string, %struct.string* %4, i64 0, i32 1
  store i64 %33, i64* %41, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.string, %struct.string* %4, i64 0, i32 2
  store i64 0, i64* %42, align 8, !tbaa !13
  %43 = load i8*, i8** %14, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %43, i64 %37, i1 false)
  %44 = bitcast %struct.string* %5 to i8*
  call fastcc void @replace(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.string* noundef nonnull %3, %struct.string* noundef nonnull %4, %struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_match_data_8* noundef %30)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %44, i8* noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %31, i8* noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %38, i8* noundef nonnull align 8 dereferenceable(24) %44, i64 16, i1 false), !tbaa.struct !15
  store i64 0, i64* %42, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44)
  call fastcc void @replace(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.string* noundef nonnull %3, %struct.string* noundef nonnull %4, %struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_match_data_8* noundef %30)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %44, i8* noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %31, i8* noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %38, i8* noundef nonnull align 8 dereferenceable(24) %44, i64 16, i1 false), !tbaa.struct !15
  store i64 0, i64* %42, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44)
  call fastcc void @replace(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.string* noundef nonnull %3, %struct.string* noundef nonnull %4, %struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_match_data_8* noundef %30)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %44, i8* noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %31, i8* noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %38, i8* noundef nonnull align 8 dereferenceable(24) %44, i64 16, i1 false), !tbaa.struct !15
  store i64 0, i64* %42, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44)
  call fastcc void @replace(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct.string* noundef nonnull %3, %struct.string* noundef nonnull %4, %struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_match_data_8* noundef %30)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %44, i8* noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %31, i8* noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %38, i8* noundef nonnull align 8 dereferenceable(24) %44, i64 16, i1 false), !tbaa.struct !15
  store i64 0, i64* %42, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44)
  call fastcc void @replace(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct.string* noundef nonnull %3, %struct.string* noundef nonnull %4, %struct.pcre2_real_match_context_8* noundef %27, %struct.pcre2_real_match_data_8* noundef %30)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %44, i8* noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %31, i8* noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %38, i8* noundef nonnull align 8 dereferenceable(24) %44, i64 16, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44)
  %45 = load i64, i64* %36, align 8, !tbaa !13
  %46 = load i8*, i8** %32, align 8, !tbaa !5
  tail call void @free(i8* noundef %46) #8
  %47 = load i8*, i8** %39, align 8, !tbaa !5
  tail call void @free(i8* noundef %47) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %31) #8
  %48 = bitcast i32* %6 to i8*
  %49 = bitcast i64* %7 to i8*
  br label %76

50:                                               ; preds = %0, %62
  %51 = phi i64 [ %68, %62 ], [ %20, %0 ]
  %52 = phi i8* [ %64, %62 ], [ %10, %0 ]
  %53 = phi i64 [ %57, %62 ], [ 0, %0 ]
  %54 = phi i64 [ %63, %62 ], [ 16384, %0 ]
  %55 = shl i64 %51, 32
  %56 = ashr exact i64 %55, 32
  %57 = add i64 %56, %53
  %58 = icmp eq i64 %57, %54
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = shl i64 %54, 1
  %61 = tail call i8* @realloc(i8* noundef %52, i64 noundef %60) #8
  br label %62

62:                                               ; preds = %59, %50
  %63 = phi i64 [ %60, %59 ], [ %54, %50 ]
  %64 = phi i8* [ %61, %59 ], [ %52, %50 ]
  %65 = getelementptr inbounds i8, i8* %64, i64 %57
  %66 = sub i64 %63, %57
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !12
  %68 = tail call i64 @fread(i8* noundef %65, i64 noundef 1, i64 noundef %66, %struct._IO_FILE* noundef %67)
  %69 = trunc i64 %68 to i32
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %50, label %23, !llvm.loop !16

71:                                               ; preds = %93
  %72 = trunc i64 %45 to i32
  call void @pcre2_match_context_free_8(%struct.pcre2_real_match_context_8* noundef %27) #8
  call void @pcre2_jit_stack_free_8(%struct.pcre2_real_jit_stack_8* noundef %28) #8
  call void @pcre2_match_data_free_8(%struct.pcre2_real_match_data_8* noundef %30) #8
  call void @free(i8* noundef %43) #8
  %73 = trunc i64 %25 to i32
  %74 = trunc i64 %37 to i32
  %75 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 noundef %73, i32 noundef %74, i32 noundef %72)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8
  ret i32 0

76:                                               ; preds = %23, %93
  %77 = phi i64 [ 0, %23 ], [ %96, %93 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #8
  %78 = call i64* @pcre2_get_ovector_pointer_8(%struct.pcre2_real_match_data_8* noundef %30) #8
  %79 = getelementptr inbounds [9 x i8*], [9 x i8*]* @__const.main.count_Info, i64 0, i64 %77
  %80 = load i8*, i8** %79, align 8, !tbaa !12
  %81 = call %struct.pcre2_real_code_8* @pcre2_compile_8(i8* noundef %80, i64 noundef -1, i32 noundef 0, i32* noundef nonnull %6, i64* noundef nonnull %7, %struct.pcre2_real_compile_context_8* noundef null) #8
  %82 = call i32 @pcre2_jit_compile_8(%struct.pcre2_real_code_8* noundef %81, i32 noundef 1) #8
  %83 = call i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef %81, i8* noundef %43, i64 noundef %37, i64 noundef 0, i32 noundef 0, %struct.pcre2_real_match_data_8* noundef %30, %struct.pcre2_real_match_context_8* noundef %27) #8
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = getelementptr inbounds i64, i64* %78, i64 1
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi i32 [ 0, %85 ], [ %89, %87 ]
  %89 = add nuw nsw i32 %88, 1
  %90 = load i64, i64* %86, align 8, !tbaa !11
  %91 = call i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef %81, i8* noundef %43, i64 noundef %37, i64 noundef %90, i32 noundef 0, %struct.pcre2_real_match_data_8* noundef %30, %struct.pcre2_real_match_context_8* noundef %27) #8
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %87, label %93, !llvm.loop !18

93:                                               ; preds = %87, %76
  %94 = phi i32 [ 0, %76 ], [ %89, %87 ]
  call void @pcre2_code_free_8(%struct.pcre2_real_code_8* noundef %81) #8
  %95 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef %80, i32 noundef %94)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #8
  %96 = add nuw nsw i64 %77, 1
  %97 = icmp eq i64 %96, 9
  br i1 %97, label %71, label %76, !llvm.loop !19
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.pcre2_real_match_context_8* @pcre2_match_context_create_8(%struct.pcre2_real_general_context_8* noundef) local_unnamed_addr #6

declare %struct.pcre2_real_jit_stack_8* @pcre2_jit_stack_create_8(i64 noundef, i64 noundef, %struct.pcre2_real_general_context_8* noundef) local_unnamed_addr #6

declare void @pcre2_jit_stack_assign_8(%struct.pcre2_real_match_context_8* noundef, %struct.pcre2_real_jit_stack_8* (i8*)* noundef, i8* noundef) local_unnamed_addr #6

declare %struct.pcre2_real_match_data_8* @pcre2_match_data_create_8(i32 noundef, %struct.pcre2_real_general_context_8* noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @replace(i8* noundef %0, i8* nocapture noundef readonly %1, %struct.string* nocapture noundef readonly %2, %struct.string* nocapture noundef %3, %struct.pcre2_real_match_context_8* noundef %4, %struct.pcre2_real_match_data_8* noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #8
  %10 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8
  %11 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #9
  %12 = tail call i64* @pcre2_get_ovector_pointer_8(%struct.pcre2_real_match_data_8* noundef %5) #8
  %13 = call %struct.pcre2_real_code_8* @pcre2_compile_8(i8* noundef %0, i64 noundef -1, i32 noundef 0, i32* noundef nonnull %7, i64* noundef nonnull %8, %struct.pcre2_real_compile_context_8* noundef null) #8
  %14 = call i32 @pcre2_jit_compile_8(%struct.pcre2_real_code_8* noundef %13, i32 noundef 1) #8
  %15 = getelementptr inbounds %struct.string, %struct.string* %2, i64 0, i32 0
  %16 = getelementptr inbounds %struct.string, %struct.string* %2, i64 0, i32 2
  %17 = load i8*, i8** %15, align 8, !tbaa !5
  %18 = load i64, i64* %16, align 8, !tbaa !13
  %19 = call i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef %13, i8* noundef %17, i64 noundef %18, i64 noundef 0, i32 noundef 0, %struct.pcre2_real_match_data_8* noundef %5, %struct.pcre2_real_match_context_8* noundef %4) #8
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %74

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 2
  %23 = shl i64 %11, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 1
  %26 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 0
  %27 = getelementptr inbounds i64, i64* %12, i64 1
  br label %28

28:                                               ; preds = %21, %50
  %29 = phi i64 [ 0, %21 ], [ %69, %50 ]
  %30 = phi i64 [ 0, %21 ], [ %68, %50 ]
  %31 = add i64 %29, %24
  %32 = load i64, i64* %22, align 8, !tbaa !13
  %33 = load i64, i64* %12, align 8, !tbaa !11
  %34 = add i64 %31, %32
  %35 = add i64 %34, %33
  %36 = load i64, i64* %25, align 8, !tbaa !14
  %37 = icmp ugt i64 %35, %36
  %38 = load i8*, i8** %26, align 8, !tbaa !5
  br i1 %37, label %39, label %50

39:                                               ; preds = %28, %39
  %40 = phi i8* [ %43, %39 ], [ %38, %28 ]
  %41 = phi i64 [ %48, %39 ], [ %36, %28 ]
  %42 = shl i64 %41, 1
  store i64 %42, i64* %25, align 8, !tbaa !14
  %43 = call i8* @realloc(i8* noundef %40, i64 noundef %42) #8
  store i8* %43, i8** %26, align 8, !tbaa !5
  %44 = load i64, i64* %22, align 8, !tbaa !13
  %45 = load i64, i64* %12, align 8, !tbaa !11
  %46 = add i64 %31, %44
  %47 = add i64 %46, %45
  %48 = load i64, i64* %25, align 8, !tbaa !14
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !20

50:                                               ; preds = %39, %28
  %51 = phi i8* [ %38, %28 ], [ %43, %39 ]
  %52 = phi i64 [ %32, %28 ], [ %44, %39 ]
  %53 = phi i64 [ %33, %28 ], [ %45, %39 ]
  %54 = getelementptr inbounds i8, i8* %51, i64 %52
  %55 = load i8*, i8** %15, align 8, !tbaa !5
  %56 = getelementptr inbounds i8, i8* %55, i64 %30
  %57 = sub i64 %53, %30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %56, i64 %57, i1 false)
  %58 = load i8*, i8** %26, align 8, !tbaa !5
  %59 = load i64, i64* %22, align 8, !tbaa !13
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i64, i64* %12, align 8, !tbaa !11
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 %29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %63, i8* align 1 %1, i64 %24, i1 false)
  %64 = load i64, i64* %12, align 8, !tbaa !11
  %65 = load i64, i64* %22, align 8, !tbaa !13
  %66 = add i64 %31, %64
  %67 = add i64 %66, %65
  store i64 %67, i64* %22, align 8, !tbaa !13
  %68 = load i64, i64* %27, align 8, !tbaa !11
  %69 = sub i64 0, %68
  %70 = load i8*, i8** %15, align 8, !tbaa !5
  %71 = load i64, i64* %16, align 8, !tbaa !13
  %72 = call i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef %13, i8* noundef %70, i64 noundef %71, i64 noundef %68, i32 noundef 0, %struct.pcre2_real_match_data_8* noundef %5, %struct.pcre2_real_match_context_8* noundef %4) #8
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %28, label %74, !llvm.loop !21

74:                                               ; preds = %50, %6
  %75 = phi i64 [ 0, %6 ], [ %68, %50 ]
  %76 = phi i64 [ 0, %6 ], [ %69, %50 ]
  call void @pcre2_code_free_8(%struct.pcre2_real_code_8* noundef %13) #8
  %77 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 2
  %78 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 1
  %79 = load i64, i64* %77, align 8, !tbaa !13
  %80 = load i64, i64* %16, align 8, !tbaa !13
  %81 = add i64 %79, %76
  %82 = add i64 %81, %80
  %83 = load i64, i64* %78, align 8, !tbaa !14
  %84 = icmp ugt i64 %82, %83
  %85 = getelementptr inbounds %struct.string, %struct.string* %3, i64 0, i32 0
  %86 = load i8*, i8** %85, align 8, !tbaa !5
  br i1 %84, label %87, label %98

87:                                               ; preds = %74, %87
  %88 = phi i8* [ %91, %87 ], [ %86, %74 ]
  %89 = phi i64 [ %96, %87 ], [ %83, %74 ]
  %90 = shl i64 %89, 1
  store i64 %90, i64* %78, align 8, !tbaa !14
  %91 = call i8* @realloc(i8* noundef %88, i64 noundef %90) #8
  store i8* %91, i8** %85, align 8, !tbaa !5
  %92 = load i64, i64* %77, align 8, !tbaa !13
  %93 = load i64, i64* %16, align 8, !tbaa !13
  %94 = add i64 %92, %76
  %95 = add i64 %94, %93
  %96 = load i64, i64* %78, align 8, !tbaa !14
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %87, label %98, !llvm.loop !22

98:                                               ; preds = %87, %74
  %99 = phi i8* [ %86, %74 ], [ %91, %87 ]
  %100 = phi i64 [ %79, %74 ], [ %92, %87 ]
  %101 = phi i64 [ %80, %74 ], [ %93, %87 ]
  %102 = getelementptr inbounds i8, i8* %99, i64 %100
  %103 = load i8*, i8** %15, align 8, !tbaa !5
  %104 = getelementptr inbounds i8, i8* %103, i64 %75
  %105 = sub i64 %101, %75
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %102, i8* align 1 %104, i64 %105, i1 false)
  %106 = load i64, i64* %16, align 8, !tbaa !13
  %107 = add i64 %106, %76
  %108 = load i64, i64* %77, align 8, !tbaa !13
  %109 = add i64 %107, %108
  store i64 %109, i64* %77, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #8
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #5

declare i64* @pcre2_get_ovector_pointer_8(%struct.pcre2_real_match_data_8* noundef) local_unnamed_addr #6

declare %struct.pcre2_real_code_8* @pcre2_compile_8(i8* noundef, i64 noundef, i32 noundef, i32* noundef, i64* noundef, %struct.pcre2_real_compile_context_8* noundef) local_unnamed_addr #6

declare i32 @pcre2_jit_compile_8(%struct.pcre2_real_code_8* noundef, i32 noundef) local_unnamed_addr #6

declare i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef, i8* noundef, i64 noundef, i64 noundef, i32 noundef, %struct.pcre2_real_match_data_8* noundef, %struct.pcre2_real_match_context_8* noundef) local_unnamed_addr #6

declare void @pcre2_code_free_8(%struct.pcre2_real_code_8* noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @pcre2_match_context_free_8(%struct.pcre2_real_match_context_8* noundef) local_unnamed_addr #6

declare void @pcre2_jit_stack_free_8(%struct.pcre2_real_jit_stack_8* noundef) local_unnamed_addr #6

declare void @pcre2_match_data_free_8(%struct.pcre2_real_match_data_8* noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !10, i64 16}
!14 = !{!6, !10, i64 8}
!15 = !{i64 0, i64 8, !12, i64 8, i64 8, !11, i64 16, i64 8, !11}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
