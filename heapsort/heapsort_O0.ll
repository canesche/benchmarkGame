; ModuleID = 'heapsort/heapsort.c'
source_filename = "heapsort/heapsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gen_random.last = internal global i64 42, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gen_random(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = load i64, i64* @gen_random.last, align 8
  %5 = mul nsw i64 %4, 3877
  %6 = add nsw i64 %5, 29573
  %7 = srem i64 %6, 139968
  store i64 %7, i64* @gen_random.last, align 8
  %8 = sitofp i64 %7 to double
  %9 = fmul double %3, %8
  %10 = fdiv double %9, 1.399680e+05
  ret double %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @benchmark_heapsort(i32 noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 1
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %98, %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load double*, double** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %18, i64 %21
  %23 = load double, double* %22, align 8
  store double %23, double* %9, align 8
  br label %45

24:                                               ; preds = %14
  %25 = load double*, double** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  store double %29, double* %9, align 8
  %30 = load double*, double** %4, align 8
  %31 = getelementptr inbounds double, double* %30, i64 1
  %32 = load double, double* %31, align 8
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  store double %32, double* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load double, double* %9, align 8
  %42 = load double*, double** %4, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  store double %41, double* %43, align 8
  ret void

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %97, %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load double*, double** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %63, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fcmp olt double %62, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %57, %53
  %74 = load double, double* %9, align 8
  %75 = load double*, double** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fcmp olt double %74, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load double*, double** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = load double*, double** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  store double %86, double* %90, align 8
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %73
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %81
  br label %49, !llvm.loop !6

98:                                               ; preds = %49
  %99 = load double, double* %9, align 8
  %100 = load double*, double** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %100, i64 %102
  store double %99, double* %103, align 8
  br label %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 8000000, i32* %6, align 4
  %11 = call i64 @clock() #3
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = call noalias i8* @malloc(i64 noundef %15) #3
  %17 = bitcast i8* %16 to double*
  store double* %17, double** %7, align 8
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %28, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = call double @gen_random(double noundef 1.000000e+00)
  %24 = load double*, double** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  store double %23, double* %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %18, !llvm.loop !8

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = load double*, double** %7, align 8
  call void @benchmark_heapsort(i32 noundef %32, double* noundef %33)
  %34 = load double*, double** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %38)
  %40 = call i64 @clock() #3
  %41 = load i64, i64* %9, align 8
  %42 = sub nsw i64 %40, %41
  %43 = sitofp i64 %42 to double
  %44 = fdiv double %43, 1.000000e+06
  store double %44, double* %10, align 8
  %45 = load double, double* %10, align 8
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %45)
  %47 = load double*, double** %7, align 8
  %48 = bitcast double* %47 to i8*
  call void @free(i8* noundef %48) #3
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
