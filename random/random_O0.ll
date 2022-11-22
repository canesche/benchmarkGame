; ModuleID = 'random/random.c'
source_filename = "random/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@gen_random.last = internal global i64 42, align 8

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
  store i32 400000000, i32* %6, align 4
  %9 = call i64 @clock() #3
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call double @gen_random(double noundef 1.000000e+02)
  br label %10, !llvm.loop !6

16:                                               ; preds = %10
  %17 = call double @gen_random(double noundef 1.000000e+02)
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double noundef %17)
  %19 = call i64 @clock() #3
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %19, %20
  %22 = sitofp i64 %21 to double
  %23 = fdiv double %22, 1.000000e+06
  store double %23, double* %8, align 8
  %24 = load double, double* %8, align 8
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %24)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal double @gen_random(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load i64, i64* @gen_random.last, align 8
  %4 = mul nsw i64 %3, 3877
  %5 = add nsw i64 %4, 29573
  %6 = srem i64 %5, 139968
  store i64 %6, i64* @gen_random.last, align 8
  %7 = load double, double* %2, align 8
  %8 = load i64, i64* @gen_random.last, align 8
  %9 = sitofp i64 %8 to double
  %10 = fmul double %7, %9
  %11 = fdiv double %10, 1.399680e+05
  ret double %11
}

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
