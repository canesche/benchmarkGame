; ModuleID = 'bin-trees/bin-trees.c'
source_filename = "bin-trees/bin-trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tn = type { %struct.tn*, %struct.tn* }

@.str = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%li\09 trees of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %u\09 check: %li\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tn* @NewTreeNode(%struct.tn* noundef %0, %struct.tn* noundef %1) #0 {
  %3 = alloca %struct.tn*, align 8
  %4 = alloca %struct.tn*, align 8
  %5 = alloca %struct.tn*, align 8
  store %struct.tn* %0, %struct.tn** %3, align 8
  store %struct.tn* %1, %struct.tn** %4, align 8
  %6 = call noalias i8* @malloc(i64 noundef 16) #3
  %7 = bitcast i8* %6 to %struct.tn*
  store %struct.tn* %7, %struct.tn** %5, align 8
  %8 = load %struct.tn*, %struct.tn** %3, align 8
  %9 = load %struct.tn*, %struct.tn** %5, align 8
  %10 = getelementptr inbounds %struct.tn, %struct.tn* %9, i32 0, i32 0
  store %struct.tn* %8, %struct.tn** %10, align 8
  %11 = load %struct.tn*, %struct.tn** %4, align 8
  %12 = load %struct.tn*, %struct.tn** %5, align 8
  %13 = getelementptr inbounds %struct.tn, %struct.tn* %12, i32 0, i32 1
  store %struct.tn* %11, %struct.tn** %13, align 8
  %14 = load %struct.tn*, %struct.tn** %5, align 8
  ret %struct.tn* %14
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ItemCheck(%struct.tn* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tn*, align 8
  store %struct.tn* %0, %struct.tn** %3, align 8
  %4 = load %struct.tn*, %struct.tn** %3, align 8
  %5 = getelementptr inbounds %struct.tn, %struct.tn* %4, i32 0, i32 0
  %6 = load %struct.tn*, %struct.tn** %5, align 8
  %7 = icmp eq %struct.tn* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 1, i64* %2, align 8
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.tn*, %struct.tn** %3, align 8
  %11 = getelementptr inbounds %struct.tn, %struct.tn* %10, i32 0, i32 0
  %12 = load %struct.tn*, %struct.tn** %11, align 8
  %13 = call i64 @ItemCheck(%struct.tn* noundef %12)
  %14 = add nsw i64 1, %13
  %15 = load %struct.tn*, %struct.tn** %3, align 8
  %16 = getelementptr inbounds %struct.tn, %struct.tn* %15, i32 0, i32 1
  %17 = load %struct.tn*, %struct.tn** %16, align 8
  %18 = call i64 @ItemCheck(%struct.tn* noundef %17)
  %19 = add nsw i64 %14, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tn* @BottomUpTree(i32 noundef %0) #0 {
  %2 = alloca %struct.tn*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ugt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sub i32 %7, 1
  %9 = call %struct.tn* @BottomUpTree(i32 noundef %8)
  %10 = load i32, i32* %3, align 4
  %11 = sub i32 %10, 1
  %12 = call %struct.tn* @BottomUpTree(i32 noundef %11)
  %13 = call %struct.tn* @NewTreeNode(%struct.tn* noundef %9, %struct.tn* noundef %12)
  store %struct.tn* %13, %struct.tn** %2, align 8
  br label %16

14:                                               ; preds = %1
  %15 = call %struct.tn* @NewTreeNode(%struct.tn* noundef null, %struct.tn* noundef null)
  store %struct.tn* %15, %struct.tn** %2, align 8
  br label %16

16:                                               ; preds = %14, %6
  %17 = load %struct.tn*, %struct.tn** %2, align 8
  ret %struct.tn* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteTree(%struct.tn* noundef %0) #0 {
  %2 = alloca %struct.tn*, align 8
  store %struct.tn* %0, %struct.tn** %2, align 8
  %3 = load %struct.tn*, %struct.tn** %2, align 8
  %4 = getelementptr inbounds %struct.tn, %struct.tn* %3, i32 0, i32 0
  %5 = load %struct.tn*, %struct.tn** %4, align 8
  %6 = icmp ne %struct.tn* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.tn*, %struct.tn** %2, align 8
  %9 = getelementptr inbounds %struct.tn, %struct.tn* %8, i32 0, i32 0
  %10 = load %struct.tn*, %struct.tn** %9, align 8
  call void @DeleteTree(%struct.tn* noundef %10)
  %11 = load %struct.tn*, %struct.tn** %2, align 8
  %12 = getelementptr inbounds %struct.tn, %struct.tn* %11, i32 0, i32 1
  %13 = load %struct.tn*, %struct.tn** %12, align 8
  call void @DeleteTree(%struct.tn* noundef %13)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.tn*, %struct.tn** %2, align 8
  %16 = bitcast %struct.tn* %15 to i8*
  call void @free(i8* noundef %16) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tn*, align 8
  %12 = alloca %struct.tn*, align 8
  %13 = alloca %struct.tn*, align 8
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 20, i32* %6, align 4
  store i32 4, i32* %8, align 4
  %19 = call i64 @clock() #3
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, 2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 2
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.tn* @BottomUpTree(i32 noundef %32)
  store %struct.tn* %33, %struct.tn** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.tn*, %struct.tn** %11, align 8
  %36 = call i64 @ItemCheck(%struct.tn* noundef %35)
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef %34, i64 noundef %36)
  %38 = load %struct.tn*, %struct.tn** %11, align 8
  call void @DeleteTree(%struct.tn* noundef %38)
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.tn* @BottomUpTree(i32 noundef %39)
  store %struct.tn* %40, %struct.tn** %12, align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %75, %29
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %49, %50
  %52 = uitofp i32 %51 to double
  %53 = call double @pow(double noundef 2.000000e+00, double noundef %52) #3
  %54 = fptosi double %53 to i64
  store i64 %54, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 1, i64* %16, align 8
  br label %55

55:                                               ; preds = %67, %46
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.tn* @BottomUpTree(i32 noundef %60)
  store %struct.tn* %61, %struct.tn** %13, align 8
  %62 = load %struct.tn*, %struct.tn** %13, align 8
  %63 = call i64 @ItemCheck(%struct.tn* noundef %62)
  %64 = load i64, i64* %18, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %18, align 8
  %66 = load %struct.tn*, %struct.tn** %13, align 8
  call void @DeleteTree(%struct.tn* noundef %66)
  br label %67

67:                                               ; preds = %59
  %68 = load i64, i64* %16, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %16, align 8
  br label %55, !llvm.loop !6

70:                                               ; preds = %55
  %71 = load i64, i64* %17, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %18, align 8
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef %71, i32 noundef %72, i64 noundef %73)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 2
  store i32 %77, i32* %7, align 4
  br label %42, !llvm.loop !8

78:                                               ; preds = %42
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.tn*, %struct.tn** %12, align 8
  %81 = call i64 @ItemCheck(%struct.tn* noundef %80)
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef %79, i64 noundef %81)
  %83 = call i64 @clock() #3
  %84 = load i64, i64* %14, align 8
  %85 = sub nsw i64 %83, %84
  %86 = sitofp i64 %85 to double
  %87 = fdiv double %86, 1.000000e+06
  store double %87, double* %15, align 8
  %88 = load double, double* %15, align 8
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double noundef %88)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

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
