; ModuleID = 'sptl-norm/sptl-norm.c'
source_filename = "sptl-norm/sptl-norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1

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
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* noundef %18) #6
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ %19, %15 ], [ 2000, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca double, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca double, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %38, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %26, i64 %36
  store double 1.000000e+00, double* %37, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %30, !llvm.loop !11

41:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  call void @eval_AtA_times_u(i32 noundef %46, double* noundef %26, double* noundef %29)
  %47 = load i32, i32* %7, align 4
  call void @eval_AtA_times_u(i32 noundef %47, double* noundef %29, double* noundef %26)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %42, !llvm.loop !12

51:                                               ; preds = %42
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %26, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %29, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load double, double* %11, align 8
  %66 = call double @llvm.fmuladd.f64(double %60, double %64, double %65)
  store double %66, double* %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %29, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %29, i64 %72
  %74 = load double, double* %73, align 8
  %75 = load double, double* %12, align 8
  %76 = call double @llvm.fmuladd.f64(double %70, double %74, double %75)
  store double %76, double* %12, align 8
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %52, !llvm.loop !13

80:                                               ; preds = %52
  %81 = load double, double* %11, align 8
  %82 = load double, double* %12, align 8
  %83 = fdiv double %81, %82
  %84 = call double @sqrt(double noundef %83) #7
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double noundef %84)
  store i32 0, i32* %3, align 4
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #3

declare i32 @printf(i8* noundef, ...) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
