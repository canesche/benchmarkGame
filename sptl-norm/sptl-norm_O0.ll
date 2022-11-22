; ModuleID = 'sptl-norm/sptl-norm.c'
source_filename = "sptl-norm/sptl-norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @eval_A(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = mul nsw i32 %7, %11
  %13 = sdiv i32 %12, 2
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to double
  %18 = fdiv double 1.000000e+00, %17
  ret double %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eval_A_times_u(i32 noundef %0, double* noundef %1, double* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %41, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load double*, double** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %37, %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call double @eval_A(i32 noundef %23, i32 noundef %24)
  %26 = load double*, double** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %25, double %30, double %35)
  store double %36, double* %34, align 8
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %18, !llvm.loop !6

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %9, !llvm.loop !8

44:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eval_At_times_u(i32 noundef %0, double* noundef %1, double* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %41, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load double*, double** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %37, %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call double @eval_A(i32 noundef %23, i32 noundef %24)
  %26 = load double*, double** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %25, double %30, double %35)
  store double %36, double* %34, align 8
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %18, !llvm.loop !9

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %9, !llvm.loop !10

44:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eval_AtA_times_u(i32 noundef %0, double* noundef %1, double* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca double, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load double*, double** %5, align 8
  call void @eval_A_times_u(i32 noundef %13, double* noundef %14, double* noundef %12)
  %15 = load i32, i32* %4, align 4
  %16 = load double*, double** %6, align 8
  call void @eval_At_times_u(i32 noundef %15, double* noundef %12, double* noundef %16)
  %17 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %17)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 5000, i32* %7, align 4
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca double, i64 5000, align 16
  %15 = alloca double, i64 5000, align 16
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %23, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 5000
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %14, i64 %21
  store double 1.000000e+00, double* %22, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %16, !llvm.loop !11

26:                                               ; preds = %16
  %27 = call i64 @clock() #5
  store i64 %27, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %32, %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  call void @eval_AtA_times_u(i32 noundef 5000, double* noundef %14, double* noundef %15)
  call void @eval_AtA_times_u(i32 noundef 5000, double* noundef %15, double* noundef %14)
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %28, !llvm.loop !12

35:                                               ; preds = %28
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 5000
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %14, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %15, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double, double* %9, align 8
  %49 = call double @llvm.fmuladd.f64(double %43, double %47, double %48)
  store double %49, double* %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %15, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %15, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load double, double* %10, align 8
  %59 = call double @llvm.fmuladd.f64(double %53, double %57, double %58)
  store double %59, double* %10, align 8
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %36, !llvm.loop !13

63:                                               ; preds = %36
  %64 = load double, double* %9, align 8
  %65 = load double, double* %10, align 8
  %66 = fdiv double %64, %65
  %67 = call double @sqrt(double noundef %66) #5
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double noundef %67)
  %69 = call i64 @clock() #5
  %70 = load i64, i64* %11, align 8
  %71 = sub nsw i64 %69, %70
  %72 = sitofp i64 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  store double %73, double* %12, align 8
  %74 = load double, double* %12, align 8
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %74)
  store i32 0, i32* %3, align 4
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i64 @clock() #3

declare i32 @printf(i8* noundef, ...) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
