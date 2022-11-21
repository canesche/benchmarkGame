; ModuleID = 'sieve/sieve.c'
source_filename = "sieve/sieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.flags = internal global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* noundef %15) #3
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ %16, %12 ], [ 170000, %17 ]
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %64, %18
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  store i64 2, i64* %7, align 8
  br label %25

25:                                               ; preds = %31, %24
  %26 = load i64, i64* %7, align 8
  %27 = icmp sle i64 %26, 8192
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %29
  store i8 1, i8* %30, align 1
  br label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %25, !llvm.loop !6

34:                                               ; preds = %25
  store i64 2, i64* %7, align 8
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp sle i64 %36, 8192
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %53, %43
  %48 = load i64, i64* %8, align 8
  %49 = icmp sle i64 %48, 8192
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %47, !llvm.loop !8

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %35, !llvm.loop !9

64:                                               ; preds = %35
  br label %20, !llvm.loop !10

65:                                               ; preds = %20
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %66)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #1

declare i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
