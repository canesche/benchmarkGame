; ModuleID = 'sieve/sieve.c'
source_filename = "sieve/sieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.flags = internal global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 170000, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = call i64 @clock() #3
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %57, %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  store i64 2, i64* %7, align 8
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp sle i64 %19, 8192
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %22
  store i8 1, i8* %23, align 1
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %18, !llvm.loop !6

27:                                               ; preds = %18
  store i64 2, i64* %7, align 8
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i64, i64* %7, align 8
  %30 = icmp sle i64 %29, 8192
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %46, %36
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %41, 8192
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %40, !llvm.loop !8

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %31
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %28, !llvm.loop !9

57:                                               ; preds = %28
  br label %13, !llvm.loop !10

58:                                               ; preds = %13
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %59)
  %61 = call i64 @clock() #3
  %62 = load i64, i64* %10, align 8
  %63 = sub nsw i64 %61, %62
  %64 = sitofp i64 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  store double %65, double* %11, align 8
  %66 = load double, double* %11, align 8
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %66)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

declare i32 @printf(i8* noundef, ...) #2

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
