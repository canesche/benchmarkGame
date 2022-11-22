; ModuleID = 'fasta/fasta.c'
source_filename = "fasta/fasta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@header1 = dso_local constant [23 x i8] c">ONE Homo sapiens alu\0A\00", align 16
@header2 = dso_local constant [26 x i8] c">TWO IUB ambiguity codes\0A\00", align 16
@header3 = dso_local constant [31 x i8] c">THREE Homo sapiens frequency\0A\00", align 16
@alu = internal global i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.2, i32 0, i32 0), align 8
@iub = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), align 8
@iub_p = internal constant [15 x float] [float 0x3FD147AE20000000, float 0x3FBEB851E0000000, float 0x3FBEB851E0000000, float 0x3FD147AE20000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000], align 16
@homosapiens = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), align 8
@homosapiens_p = internal constant [4 x float] [float 0x3FD3639D20000000, float 0x3FC957AE40000000, float 0x3FC9493AE0000000, float 0x3FD34BEE40000000], align 16
@.str = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 1
@seed = internal global i32 42, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"acgtBDHKMNRSVWY\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"acgt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 500000, i32* %6, align 4
  %9 = call i64 @clock() #6
  store i64 %9, i64* %7, align 8
  %10 = call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @header1, i64 0, i64 0), i64 noundef 22)
  %11 = load i8*, i8** @alu, align 8
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 2
  call void @repeat_fasta(i8* noundef %11, i32 noundef %13)
  %14 = call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @header2, i64 0, i64 0), i64 noundef 25)
  %15 = load i8*, i8** @iub, align 8
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 3
  call void @random_fasta(i8* noundef %15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @iub_p, i64 0, i64 0), i32 noundef %17)
  %18 = call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @header3, i64 0, i64 0), i64 noundef 30)
  %19 = load i8*, i8** @homosapiens, align 8
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 5
  call void @random_fasta(i8* noundef %19, float* noundef getelementptr inbounds ([4 x float], [4 x float]* @homosapiens_p, i64 0, i64 0), i32 noundef %21)
  %22 = call i64 @clock() #6
  %23 = load i64, i64* %7, align 8
  %24 = sub nsw i64 %22, %23
  %25 = sitofp i64 %24 to double
  %26 = fdiv double %25, 1.000000e+06
  store double %26, double* %8, align 8
  %27 = load double, double* %8, align 8
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double noundef %27)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repeat_fasta(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* noundef %14) #7
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 60
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = call noalias i8* @malloc(i64 noundef %20) #6
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 60, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %26, i64 %28, i1 false)
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 60, i1 false)
  br label %67

34:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 60, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %47, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %35, !llvm.loop !6

53:                                               ; preds = %35
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %4, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sub nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %60, i64 %66, i1 false)
  br label %67

67:                                               ; preds = %53, %24
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 61, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = call noalias i8* @malloc(i64 noundef %71) #6
  store i8* %72, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %97, %67
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 61
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 60
  %86 = load i32, i32* %5, align 4
  %87 = srem i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 %89, i64 60, i1 false)
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = mul nsw i32 %92, 61
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %90, i64 %95
  store i8 10, i8* %96, align 1
  br label %97

97:                                               ; preds = %77
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %73, !llvm.loop !8

100:                                              ; preds = %73
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %102, 60
  %104 = sdiv i32 %101, %103
  store i32 %104, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %114, %100
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = call i64 @write(i32 noundef 1, i8* noundef %110, i64 noundef %112)
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %105, !llvm.loop !9

117:                                              ; preds = %105
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %119, %120
  %122 = mul nsw i32 %121, 60
  %123 = sub nsw i32 %118, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sdiv i32 %124, 60
  store i32 %125, i32* %13, align 4
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = call i64 @write(i32 noundef 1, i8* noundef %126, i64 noundef %130)
  %132 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %132) #6
  %133 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %133) #6
  %134 = load i32, i32* %4, align 4
  %135 = srem i32 %134, 60
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %117
  %138 = call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1)
  br label %139

139:                                              ; preds = %137, %117
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_fasta(i8* noundef %0, float* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load float*, float** %5, align 8
  %20 = call i8* @build_hash(i8* noundef %18, float* noundef %19)
  store i8* %20, i8** %10, align 8
  %21 = call i8* @buffer_with_linebreaks(i32 noundef 100)
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 60
  %24 = sdiv i32 %23, 100
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %64, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 60
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32, i32* @seed, align 4
  %39 = mul i32 %38, 3877
  %40 = add i32 %39, 29573
  %41 = urem i32 %40, 139968
  store i32 %41, i32* @seed, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 61
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  store i8 %46, i8* %53, align 1
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %34, !llvm.loop !10

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %30, !llvm.loop !11

61:                                               ; preds = %30
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @write(i32 noundef 1, i8* noundef %62, i64 noundef 6100)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %25, !llvm.loop !12

67:                                               ; preds = %25
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 60
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 100
  %72 = sub nsw i32 %69, %71
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %102, %67
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 60
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32, i32* @seed, align 4
  %83 = mul i32 %82, 3877
  %84 = add i32 %83, 29573
  %85 = urem i32 %84, 139968
  store i32 %85, i32* @seed, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 61
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  store i8 %90, i8* %97, align 1
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %78, !llvm.loop !13

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %73, !llvm.loop !14

105:                                              ; preds = %73
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 60, %107
  %109 = sub nsw i32 %106, %108
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %110, 100
  %112 = mul nsw i32 %111, 60
  %113 = sub nsw i32 %109, %112
  store i32 %113, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %135, %105
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  %119 = load i32, i32* @seed, align 4
  %120 = mul i32 %119, 3877
  %121 = add i32 %120, 29573
  %122 = urem i32 %121, 139968
  store i32 %122, i32* @seed, align 4
  store i32 %122, i32* %17, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %17, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %129, 61
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %128, i64 %133
  store i8 %127, i8* %134, align 1
  br label %135

135:                                              ; preds = %118
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %114, !llvm.loop !15

138:                                              ; preds = %114
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %14, align 4
  %141 = mul nsw i32 %140, 61
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = call i64 @write(i32 noundef 1, i8* noundef %139, i64 noundef %144)
  %146 = load i32, i32* %6, align 4
  %147 = srem i32 %146, 60
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %138
  %150 = call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 noundef 1)
  br label %151

151:                                              ; preds = %149, %138
  %152 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %152) #6
  %153 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %153) #6
  ret void
}

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_hash(i8* noundef %0, float* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store float* %1, float** %4, align 8
  %11 = call noalias i8* @malloc(i64 noundef 139968) #6
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  call void @exit(i32 noundef -1) #8
  unreachable

15:                                               ; preds = %2
  store float 0.000000e+00, float* %8, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* noundef %16) #7
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load float*, float** %4, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  store float %21, float* %8, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %60, %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 139968
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %63

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double 1.000000e+00, %33
  %35 = fdiv double %34, 1.399680e+05
  %36 = fptrunc double %35 to float
  store float %36, float* %10, align 4
  %37 = load float, float* %10, align 4
  %38 = load float, float* %8, align 4
  %39 = fcmp oge float %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load float*, float** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float, float* %8, align 4
  %49 = fadd float %48, %47
  store float %49, float* %8, align 4
  br label %50

50:                                               ; preds = %40, %31
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %22, !llvm.loop !16

63:                                               ; preds = %29
  %64 = load i8*, i8** %7, align 8
  ret i8* %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @buffer_with_linebreaks(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 61, %5
  %7 = sext i32 %6 to i64
  %8 = call noalias i8* @malloc(i64 noundef %7) #6
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  call void @exit(i32 noundef -1) #8
  unreachable

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 61
  %21 = add nsw i32 %20, 60
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8 10, i8* %23, align 1
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %13, !llvm.loop !17

27:                                               ; preds = %13
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
