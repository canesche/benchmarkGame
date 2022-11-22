; ModuleID = 'ary3/ary3.c'
source_filename = "ary3/ary3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000000, i32* %6, align 4
  %13 = call i64 @clock() #3
  store i64 %13, i64* %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = call noalias i8* @calloc(i64 noundef %15, i64 noundef 4) #3
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = call noalias i8* @calloc(i64 noundef %19, i64 noundef 4) #3
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %33, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %22, !llvm.loop !6

36:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 1000
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %58, %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %51
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %43, !llvm.loop !8

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %37, !llvm.loop !9

65:                                               ; preds = %37
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %68, i32 noundef %74)
  %76 = call i64 @clock() #3
  %77 = load i64, i64* %11, align 8
  %78 = sub nsw i64 %76, %77
  %79 = sitofp i64 %78 to double
  %80 = fdiv double %79, 1.000000e+06
  store double %80, double* %12, align 8
  %81 = load double, double* %12, align 8
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %81)
  %83 = load i32*, i32** %9, align 8
  %84 = bitcast i32* %83 to i8*
  call void @free(i8* noundef %84) #3
  %85 = load i32*, i32** %10, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* noundef %86) #3
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

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
!9 = distinct !{!9, !7}
