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
%struct.pcre2_real_jit_stack_8 = type opaque
%struct.pcre2_real_match_data_8 = type opaque
%struct.pcre2_real_code_8 = type opaque
%struct.pcre2_real_general_context_8 = type opaque
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
@__const.main.replace_Info = private unnamed_addr constant [5 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)]], align 16
@stdin = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c">.*\\n|\\n\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i8*], align 16
  %3 = alloca [5 x [2 x i8*]], align 16
  %4 = alloca %struct.string, align 8
  %5 = alloca %struct.string, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcre2_real_match_context_8*, align 8
  %9 = alloca %struct.pcre2_real_jit_stack_8*, align 8
  %10 = alloca %struct.pcre2_real_match_data_8*, align 8
  %11 = alloca %struct.string, align 8
  %12 = alloca %struct.string, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.string, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca %struct.pcre2_real_code_8*, align 8
  store i32 0, i32* %1, align 4
  %22 = bitcast [9 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([9 x i8*]* @__const.main.count_Info to i8*), i64 72, i1 false)
  %23 = bitcast [5 x [2 x i8*]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([5 x [2 x i8*]]* @__const.main.replace_Info to i8*), i64 80, i1 false)
  %24 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 0
  %25 = call noalias i8* @malloc(i64 noundef 16384) #5
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  store i64 16384, i64* %26, align 8
  %27 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  %29 = call noalias i8* @malloc(i64 noundef 16384) #5
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  store i64 16384, i64* %30, align 8
  %31 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %64, %0
  %33 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %39, %41
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %44 = call i64 @fread(i8* noundef %37, i64 noundef 1, i64 noundef %42, %struct._IO_FILE* noundef %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 2
  store i64 %61, i64* %59, align 8
  %62 = call i8* @realloc(i8* noundef %58, i64 noundef %61) #5
  %63 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %47
  br label %32, !llvm.loop !6

65:                                               ; preds = %32
  %66 = call %struct.pcre2_real_match_context_8* @pcre2_match_context_create_8(%struct.pcre2_real_general_context_8* noundef null)
  store %struct.pcre2_real_match_context_8* %66, %struct.pcre2_real_match_context_8** %8, align 8
  %67 = call %struct.pcre2_real_jit_stack_8* @pcre2_jit_stack_create_8(i64 noundef 16384, i64 noundef 16384, %struct.pcre2_real_general_context_8* noundef null)
  store %struct.pcre2_real_jit_stack_8* %67, %struct.pcre2_real_jit_stack_8** %9, align 8
  %68 = load %struct.pcre2_real_match_context_8*, %struct.pcre2_real_match_context_8** %8, align 8
  %69 = load %struct.pcre2_real_jit_stack_8*, %struct.pcre2_real_jit_stack_8** %9, align 8
  %70 = bitcast %struct.pcre2_real_jit_stack_8* %69 to i8*
  call void @pcre2_jit_stack_assign_8(%struct.pcre2_real_match_context_8* noundef %68, %struct.pcre2_real_jit_stack_8* (i8*)* noundef null, i8* noundef %70)
  %71 = call %struct.pcre2_real_match_data_8* @pcre2_match_data_create_8(i32 noundef 16, %struct.pcre2_real_general_context_8* noundef null)
  store %struct.pcre2_real_match_data_8* %71, %struct.pcre2_real_match_data_8** %10, align 8
  %72 = load %struct.pcre2_real_match_context_8*, %struct.pcre2_real_match_context_8** %8, align 8
  %73 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %10, align 8
  call void @replace(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), %struct.string* noundef %4, %struct.string* noundef %5, %struct.pcre2_real_match_context_8* noundef %72, %struct.pcre2_real_match_data_8* noundef %73)
  %74 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  call void @free(i8* noundef %75) #5
  %76 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 0
  %77 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call noalias i8* @malloc(i64 noundef %78) #5
  store i8* %79, i8** %76, align 8
  %80 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 1
  %81 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 2
  %84 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 0
  %87 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call noalias i8* @malloc(i64 noundef %88) #5
  store i8* %89, i8** %86, align 8
  %90 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 1
  %91 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %90, align 8
  %93 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %95, i8* align 1 %97, i64 %99, i1 false)
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %124, %65
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 5
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %3, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %107, i64 0, i64 0
  %109 = load i8*, i8** %108, align 16
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [5 x [2 x i8*]], [5 x [2 x i8*]]* %3, i64 0, i64 %111
  %113 = getelementptr inbounds [2 x i8*], [2 x i8*]* %112, i64 0, i64 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.pcre2_real_match_context_8*, %struct.pcre2_real_match_context_8** %8, align 8
  %116 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %10, align 8
  call void @replace(i8* noundef %109, i8* noundef %114, %struct.string* noundef %11, %struct.string* noundef %12, %struct.pcre2_real_match_context_8* noundef %115, %struct.pcre2_real_match_data_8* noundef %116)
  %117 = bitcast %struct.string* %14 to i8*
  %118 = bitcast %struct.string* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 24, i1 false)
  %119 = bitcast %struct.string* %11 to i8*
  %120 = bitcast %struct.string* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 24, i1 false)
  %121 = bitcast %struct.string* %12 to i8*
  %122 = bitcast %struct.string* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 24, i1 false)
  %123 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 2
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %104
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %100, !llvm.loop !8

127:                                              ; preds = %100
  %128 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  %131 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  call void @free(i8* noundef %132) #5
  %133 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  call void @free(i8* noundef %134) #5
  store i32 0, i32* %15, align 4
  br label %135

135:                                              ; preds = %174, %127
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp ult i64 %137, 9
  br i1 %138, label %139, label %177

139:                                              ; preds = %135
  store i32 0, i32* %17, align 4
  store i64 0, i64* %19, align 8
  %140 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %10, align 8
  %141 = call i64* @pcre2_get_ovector_pointer_8(%struct.pcre2_real_match_data_8* noundef %140)
  store i64* %141, i64** %20, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [9 x i8*], [9 x i8*]* %2, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call %struct.pcre2_real_code_8* @pcre2_compile_8(i8* noundef %145, i64 noundef -1, i32 noundef 0, i32* noundef %16, i64* noundef %18, %struct.pcre2_real_compile_context_8* noundef null)
  store %struct.pcre2_real_code_8* %146, %struct.pcre2_real_code_8** %21, align 8
  %147 = load %struct.pcre2_real_code_8*, %struct.pcre2_real_code_8** %21, align 8
  %148 = call i32 @pcre2_jit_compile_8(%struct.pcre2_real_code_8* noundef %147, i32 noundef 1)
  br label %149

149:                                              ; preds = %160, %139
  %150 = load %struct.pcre2_real_code_8*, %struct.pcre2_real_code_8** %21, align 8
  %151 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %19, align 8
  %156 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %10, align 8
  %157 = load %struct.pcre2_real_match_context_8*, %struct.pcre2_real_match_context_8** %8, align 8
  %158 = call i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef %150, i8* noundef %152, i64 noundef %154, i64 noundef %155, i32 noundef 0, %struct.pcre2_real_match_data_8* noundef %156, %struct.pcre2_real_match_context_8* noundef %157)
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %149
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  %163 = load i64*, i64** %20, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %19, align 8
  br label %149, !llvm.loop !9

166:                                              ; preds = %149
  %167 = load %struct.pcre2_real_code_8*, %struct.pcre2_real_code_8** %21, align 8
  call void @pcre2_code_free_8(%struct.pcre2_real_code_8* noundef %167)
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [9 x i8*], [9 x i8*]* %2, i64 0, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef %171, i32 noundef %172)
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %135, !llvm.loop !10

177:                                              ; preds = %135
  %178 = load %struct.pcre2_real_match_context_8*, %struct.pcre2_real_match_context_8** %8, align 8
  call void @pcre2_match_context_free_8(%struct.pcre2_real_match_context_8* noundef %178)
  %179 = load %struct.pcre2_real_jit_stack_8*, %struct.pcre2_real_jit_stack_8** %9, align 8
  call void @pcre2_jit_stack_free_8(%struct.pcre2_real_jit_stack_8* noundef %179)
  %180 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %10, align 8
  call void @pcre2_match_data_free_8(%struct.pcre2_real_match_data_8* noundef %180)
  %181 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  call void @free(i8* noundef %182) #5
  %183 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = load i32, i32* %6, align 4
  %190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 noundef %185, i32 noundef %188, i32 noundef %189)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

declare %struct.pcre2_real_match_context_8* @pcre2_match_context_create_8(%struct.pcre2_real_general_context_8* noundef) #3

declare %struct.pcre2_real_jit_stack_8* @pcre2_jit_stack_create_8(i64 noundef, i64 noundef, %struct.pcre2_real_general_context_8* noundef) #3

declare void @pcre2_jit_stack_assign_8(%struct.pcre2_real_match_context_8* noundef, %struct.pcre2_real_jit_stack_8* (i8*)* noundef, i8* noundef) #3

declare %struct.pcre2_real_match_data_8* @pcre2_match_data_create_8(i32 noundef, %struct.pcre2_real_general_context_8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace(i8* noundef %0, i8* noundef %1, %struct.string* noundef %2, %struct.string* noundef %3, %struct.pcre2_real_match_context_8* noundef %4, %struct.pcre2_real_match_data_8* noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.string*, align 8
  %10 = alloca %struct.string*, align 8
  %11 = alloca %struct.pcre2_real_match_context_8*, align 8
  %12 = alloca %struct.pcre2_real_match_data_8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca %struct.pcre2_real_code_8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.string* %2, %struct.string** %9, align 8
  store %struct.string* %3, %struct.string** %10, align 8
  store %struct.pcre2_real_match_context_8* %4, %struct.pcre2_real_match_context_8** %11, align 8
  store %struct.pcre2_real_match_data_8* %5, %struct.pcre2_real_match_data_8** %12, align 8
  store i64 0, i64* %15, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* noundef %19) #6
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %16, align 4
  %22 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %12, align 8
  %23 = call i64* @pcre2_get_ovector_pointer_8(%struct.pcre2_real_match_data_8* noundef %22)
  store i64* %23, i64** %17, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.pcre2_real_code_8* @pcre2_compile_8(i8* noundef %24, i64 noundef -1, i32 noundef 0, i32* noundef %13, i64* noundef %14, %struct.pcre2_real_compile_context_8* noundef null)
  store %struct.pcre2_real_code_8* %25, %struct.pcre2_real_code_8** %18, align 8
  %26 = load %struct.pcre2_real_code_8*, %struct.pcre2_real_code_8** %18, align 8
  %27 = call i32 @pcre2_jit_compile_8(%struct.pcre2_real_code_8* noundef %26, i32 noundef 1)
  br label %28

28:                                               ; preds = %70, %6
  %29 = load %struct.pcre2_real_code_8*, %struct.pcre2_real_code_8** %18, align 8
  %30 = load %struct.string*, %struct.string** %9, align 8
  %31 = getelementptr inbounds %struct.string, %struct.string* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.string*, %struct.string** %9, align 8
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.pcre2_real_match_data_8*, %struct.pcre2_real_match_data_8** %12, align 8
  %38 = load %struct.pcre2_real_match_context_8*, %struct.pcre2_real_match_context_8** %11, align 8
  %39 = call i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef %29, i8* noundef %32, i64 noundef %35, i64 noundef %36, i32 noundef 0, %struct.pcre2_real_match_data_8* noundef %37, %struct.pcre2_real_match_context_8* noundef %38)
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %120

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %59, %41
  %43 = load %struct.string*, %struct.string** %10, align 8
  %44 = getelementptr inbounds %struct.string, %struct.string* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %17, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = load i64, i64* %15, align 8
  %51 = sub i64 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load %struct.string*, %struct.string** %10, align 8
  %56 = getelementptr inbounds %struct.string, %struct.string* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load %struct.string*, %struct.string** %10, align 8
  %61 = getelementptr inbounds %struct.string, %struct.string* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.string*, %struct.string** %10, align 8
  %64 = getelementptr inbounds %struct.string, %struct.string* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = mul i64 %65, 2
  store i64 %66, i64* %64, align 8
  %67 = call i8* @realloc(i8* noundef %62, i64 noundef %66) #5
  %68 = load %struct.string*, %struct.string** %10, align 8
  %69 = getelementptr inbounds %struct.string, %struct.string* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %42, !llvm.loop !11

70:                                               ; preds = %42
  %71 = load %struct.string*, %struct.string** %10, align 8
  %72 = getelementptr inbounds %struct.string, %struct.string* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.string*, %struct.string** %10, align 8
  %75 = getelementptr inbounds %struct.string, %struct.string* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load %struct.string*, %struct.string** %9, align 8
  %79 = getelementptr inbounds %struct.string, %struct.string* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64*, i64** %17, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = sub i64 %85, %86
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %82, i64 %87, i1 false)
  %88 = load %struct.string*, %struct.string** %10, align 8
  %89 = getelementptr inbounds %struct.string, %struct.string* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.string*, %struct.string** %10, align 8
  %92 = getelementptr inbounds %struct.string, %struct.string* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i64*, i64** %17, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i64, i64* %15, align 8
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %101, i8* align 1 %102, i64 %104, i1 false)
  %105 = load i64*, i64** %17, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %15, align 8
  %109 = sub i64 %107, %108
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %109, %111
  %113 = load %struct.string*, %struct.string** %10, align 8
  %114 = getelementptr inbounds %struct.string, %struct.string* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load i64*, i64** %17, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %15, align 8
  br label %28, !llvm.loop !12

120:                                              ; preds = %28
  %121 = load %struct.pcre2_real_code_8*, %struct.pcre2_real_code_8** %18, align 8
  call void @pcre2_code_free_8(%struct.pcre2_real_code_8* noundef %121)
  br label %122

122:                                              ; preds = %136, %120
  %123 = load %struct.string*, %struct.string** %10, align 8
  %124 = getelementptr inbounds %struct.string, %struct.string* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.string*, %struct.string** %9, align 8
  %127 = getelementptr inbounds %struct.string, %struct.string* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %125, %128
  %130 = load i64, i64* %15, align 8
  %131 = sub i64 %129, %130
  %132 = load %struct.string*, %struct.string** %10, align 8
  %133 = getelementptr inbounds %struct.string, %struct.string* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ugt i64 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %122
  %137 = load %struct.string*, %struct.string** %10, align 8
  %138 = getelementptr inbounds %struct.string, %struct.string* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.string*, %struct.string** %10, align 8
  %141 = getelementptr inbounds %struct.string, %struct.string* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = mul i64 %142, 2
  store i64 %143, i64* %141, align 8
  %144 = call i8* @realloc(i8* noundef %139, i64 noundef %143) #5
  %145 = load %struct.string*, %struct.string** %10, align 8
  %146 = getelementptr inbounds %struct.string, %struct.string* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %122, !llvm.loop !13

147:                                              ; preds = %122
  %148 = load %struct.string*, %struct.string** %10, align 8
  %149 = getelementptr inbounds %struct.string, %struct.string* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.string*, %struct.string** %10, align 8
  %152 = getelementptr inbounds %struct.string, %struct.string* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load %struct.string*, %struct.string** %9, align 8
  %156 = getelementptr inbounds %struct.string, %struct.string* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load %struct.string*, %struct.string** %9, align 8
  %161 = getelementptr inbounds %struct.string, %struct.string* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %15, align 8
  %164 = sub i64 %162, %163
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %154, i8* align 1 %159, i64 %164, i1 false)
  %165 = load %struct.string*, %struct.string** %9, align 8
  %166 = getelementptr inbounds %struct.string, %struct.string* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = sub i64 %167, %168
  %170 = load %struct.string*, %struct.string** %10, align 8
  %171 = getelementptr inbounds %struct.string, %struct.string* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare i64* @pcre2_get_ovector_pointer_8(%struct.pcre2_real_match_data_8* noundef) #3

declare %struct.pcre2_real_code_8* @pcre2_compile_8(i8* noundef, i64 noundef, i32 noundef, i32* noundef, i64* noundef, %struct.pcre2_real_compile_context_8* noundef) #3

declare i32 @pcre2_jit_compile_8(%struct.pcre2_real_code_8* noundef, i32 noundef) #3

declare i32 @pcre2_jit_match_8(%struct.pcre2_real_code_8* noundef, i8* noundef, i64 noundef, i64 noundef, i32 noundef, %struct.pcre2_real_match_data_8* noundef, %struct.pcre2_real_match_context_8* noundef) #3

declare void @pcre2_code_free_8(%struct.pcre2_real_code_8* noundef) #3

declare i32 @printf(i8* noundef, ...) #3

declare void @pcre2_match_context_free_8(%struct.pcre2_real_match_context_8* noundef) #3

declare void @pcre2_jit_stack_free_8(%struct.pcre2_real_jit_stack_8* noundef) #3

declare void @pcre2_match_data_free_8(%struct.pcre2_real_match_data_8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
