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

@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c">.*|\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@variants = internal global [10 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@subst = internal global [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x %struct.fbuf], align 16
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca [9 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0
  call void @fb_init(%struct.fbuf* noundef %17)
  %18 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 1
  call void @fb_init(%struct.fbuf* noundef %18)
  %19 = call i64 @clock() #6
  store i64 %19, i64* %12, align 8
  %20 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %22 = call i64 @fb_readall(%struct.fbuf* noundef %20, %struct._IO_FILE* noundef %21)
  store i64 %22, i64* %8, align 8
  %23 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 1
  %24 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 0
  %25 = call i64 @fb_subst(%struct.fbuf* noundef %23, %struct.fbuf* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %49, %2
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = call noalias i8* @malloc(i64 noundef 40) #6
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %32
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i8*], [10 x i8*]* @variants, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 1
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* @variants, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fb_countmatches(%struct.fbuf* noundef %42, i8* noundef %46)
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %37, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef %41, i32 noundef %47) #6
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %26, !llvm.loop !6

52:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 9
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %60)
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  call void @free(i8* noundef %65) #6
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %53, !llvm.loop !8

69:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  store i32 1, i32* %11, align 4
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @subst, i64 0, i64 0), i8*** %7, align 8
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i8**, i8*** %7, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 1, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %6, i64 0, i64 %80
  %82 = load i8**, i8*** %7, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @fb_subst(%struct.fbuf* noundef %78, %struct.fbuf* noundef %81, i8* noundef %83, i8* noundef %86)
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %74
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  store i8** %90, i8*** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 1, %91
  store i32 %92, i32* %11, align 4
  br label %70, !llvm.loop !9

93:                                               ; preds = %70
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 noundef %94, i64 noundef %95, i64 noundef %96)
  %98 = call i64 @clock() #6
  %99 = load i64, i64* %12, align 8
  %100 = sub nsw i64 %98, %99
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %101, 1.000000e+06
  store double %102, double* %13, align 8
  %103 = load double, double* %13, align 8
  %104 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), double noundef %103)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fb_init(%struct.fbuf* noundef %0) #0 {
  %2 = alloca %struct.fbuf*, align 8
  store %struct.fbuf* %0, %struct.fbuf** %2, align 8
  %3 = load %struct.fbuf*, %struct.fbuf** %2, align 8
  %4 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %3, i32 0, i32 0
  store i8* null, i8** %4, align 8
  %5 = load %struct.fbuf*, %struct.fbuf** %2, align 8
  %6 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.fbuf*, %struct.fbuf** %2, align 8
  %8 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fb_readall(%struct.fbuf* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.fbuf*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fbuf* %0, %struct.fbuf** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %7 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %8 = call i8* @fb_need(%struct.fbuf* noundef %7, i64 noundef 196608)
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %12 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %15 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = call i64 @fread(i8* noundef %10, i64 noundef 1, i64 noundef %17, %struct._IO_FILE* noundef %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %9
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %26 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %31 = call i8* @fb_need(%struct.fbuf* noundef %30, i64 noundef 196608)
  store i8* %31, i8** %5, align 8
  br label %9, !llvm.loop !10

32:                                               ; preds = %9
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %34 = call i32 @ferror(%struct._IO_FILE* noundef %33) #6
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  call void @exit(i32 noundef 1) #7
  unreachable

37:                                               ; preds = %32
  %38 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %39 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  ret i64 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fb_subst(%struct.fbuf* noundef %0, %struct.fbuf* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.fbuf*, align 8
  %6 = alloca %struct.fbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.real_pcre*, align 8
  %10 = alloca %struct.pcre_extra*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fbuf* %0, %struct.fbuf** %5, align 8
  store %struct.fbuf* %1, %struct.fbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.real_pcre* @pcre_compile(i8* noundef %18, i32 noundef 0, i8** noundef %11, i32* noundef %13, i8* noundef null)
  store %struct.real_pcre* %19, %struct.real_pcre** %9, align 8
  %20 = icmp ne %struct.real_pcre* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  call void @exit(i32 noundef 1) #7
  unreachable

22:                                               ; preds = %4
  %23 = load %struct.real_pcre*, %struct.real_pcre** %9, align 8
  %24 = call %struct.pcre_extra* @pcre_study(%struct.real_pcre* noundef %23, i32 noundef 1, i8** noundef %11)
  store %struct.pcre_extra* %24, %struct.pcre_extra** %10, align 8
  %25 = load %struct.fbuf*, %struct.fbuf** %5, align 8
  %26 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strlen(i8* noundef %27) #8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %79, %22
  %31 = load %struct.real_pcre*, %struct.real_pcre** %9, align 8
  %32 = load %struct.pcre_extra*, %struct.pcre_extra** %10, align 8
  %33 = load %struct.fbuf*, %struct.fbuf** %6, align 8
  %34 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.fbuf*, %struct.fbuf** %6, align 8
  %37 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %15, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %42 = call i32 @pcre_exec(%struct.real_pcre* noundef %31, %struct.pcre_extra* noundef %32, i8* noundef %35, i32 noundef %39, i32 noundef %40, i32 noundef 0, i32* noundef %41, i32 noundef 3)
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %30
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %17, align 4
  %49 = load %struct.fbuf*, %struct.fbuf** %5, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = call i8* @fb_need(%struct.fbuf* noundef %49, i64 noundef %53)
  store i8* %54, i8** %12, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = load %struct.fbuf*, %struct.fbuf** %5, align 8
  %60 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.fbuf*, %struct.fbuf** %6, align 8
  %65 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %63, i8* align 1 %69, i64 %71, i1 false)
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %75, i8* align 1 %76, i64 %78, i1 false)
  br label %79

79:                                               ; preds = %44
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  br label %30, !llvm.loop !11

82:                                               ; preds = %30
  %83 = load %struct.fbuf*, %struct.fbuf** %6, align 8
  %84 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 %85, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %17, align 4
  %90 = load %struct.fbuf*, %struct.fbuf** %5, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = call i8* @fb_need(%struct.fbuf* noundef %90, i64 noundef %92)
  store i8* %93, i8** %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.fbuf*, %struct.fbuf** %5, align 8
  %97 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load %struct.fbuf*, %struct.fbuf** %6, align 8
  %102 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %100, i8* align 1 %106, i64 %108, i1 false)
  %109 = load %struct.fbuf*, %struct.fbuf** %5, align 8
  %110 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  ret i64 %111
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_countmatches(%struct.fbuf* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.fbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.real_pcre*, align 8
  %6 = alloca %struct.pcre_extra*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fbuf* %0, %struct.fbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.real_pcre* @pcre_compile(i8* noundef %12, i32 noundef 0, i8** noundef %7, i32* noundef %8, i8* noundef null)
  store %struct.real_pcre* %13, %struct.real_pcre** %5, align 8
  %14 = icmp ne %struct.real_pcre* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  call void @exit(i32 noundef 1) #7
  unreachable

16:                                               ; preds = %2
  %17 = load %struct.real_pcre*, %struct.real_pcre** %5, align 8
  %18 = call %struct.pcre_extra* @pcre_study(%struct.real_pcre* noundef %17, i32 noundef 1, i8** noundef %7)
  store %struct.pcre_extra* %18, %struct.pcre_extra** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %36, %16
  %20 = load %struct.real_pcre*, %struct.real_pcre** %5, align 8
  %21 = load %struct.pcre_extra*, %struct.pcre_extra** %6, align 8
  %22 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %23 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %26 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %31 = call i32 @pcre_exec(%struct.real_pcre* noundef %20, %struct.pcre_extra* noundef %21, i8* noundef %24, i32 noundef %28, i32 noundef %29, i32 noundef 0, i32* noundef %30, i32 noundef 3)
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  br label %19, !llvm.loop !12

39:                                               ; preds = %19
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fb_need(%struct.fbuf* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.fbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.fbuf* %0, %struct.fbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %6 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, %7
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %12 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %17 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %23 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %40

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %31, %24
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %28 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %33 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %36 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %34
  store i64 %38, i64* %36, align 8
  br label %25, !llvm.loop !13

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %42 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %45 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @realloc(i8* noundef %43, i64 noundef %46) #6
  %48 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %49 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = icmp ne i8* %47, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  call void @exit(i32 noundef 1) #7
  unreachable

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %55 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.fbuf*, %struct.fbuf** %3, align 8
  %58 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  ret i8* %60
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #1

declare %struct.real_pcre* @pcre_compile(i8* noundef, i32 noundef, i8** noundef, i32* noundef, i8* noundef) #2

declare %struct.pcre_extra* @pcre_study(%struct.real_pcre* noundef, i32 noundef, i8** noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

declare i32 @pcre_exec(%struct.real_pcre* noundef, %struct.pcre_extra* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }

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
