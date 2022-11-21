; ModuleID = 'bin-trees/bin-trees.c'
source_filename = "bin-trees/bin-trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tn = type { %struct.tn*, %struct.tn* }

@.str = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%li\09 trees of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %u\09 check: %li\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tn* @NewTreeNode(%struct.tn* noundef %0, %struct.tn* noundef %1) #0 {
  %3 = alloca %struct.tn*, align 8
  %4 = alloca %struct.tn*, align 8
  %5 = alloca %struct.tn*, align 8
  store %struct.tn* %0, %struct.tn** %3, align 8
  store %struct.tn* %1, %struct.tn** %4, align 8
  %6 = call noalias i8* @malloc(i64 noundef 16) #4
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
  call void @free(i8* noundef %16) #4
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
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @atol(i8* noundef %19) #5
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  store i32 4, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, 2
  store i32 %28, i32* %9, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.tn* @BottomUpTree(i32 noundef %34)
  store %struct.tn* %35, %struct.tn** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.tn*, %struct.tn** %11, align 8
  %38 = call i64 @ItemCheck(%struct.tn* noundef %37)
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef %36, i64 noundef %38)
  %40 = load %struct.tn*, %struct.tn** %11, align 8
  call void @DeleteTree(%struct.tn* noundef %40)
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.tn* @BottomUpTree(i32 noundef %41)
  store %struct.tn* %42, %struct.tn** %12, align 8
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %77, %31
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %51, %52
  %54 = uitofp i32 %53 to double
  %55 = call double @pow(double noundef 2.000000e+00, double noundef %54) #4
  %56 = fptosi double %55 to i64
  store i64 %56, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 1, i64* %14, align 8
  br label %57

57:                                               ; preds = %69, %48
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.tn* @BottomUpTree(i32 noundef %62)
  store %struct.tn* %63, %struct.tn** %13, align 8
  %64 = load %struct.tn*, %struct.tn** %13, align 8
  %65 = call i64 @ItemCheck(%struct.tn* noundef %64)
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %16, align 8
  %68 = load %struct.tn*, %struct.tn** %13, align 8
  call void @DeleteTree(%struct.tn* noundef %68)
  br label %69

69:                                               ; preds = %61
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %57, !llvm.loop !6

72:                                               ; preds = %57
  %73 = load i64, i64* %15, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* %16, align 8
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 noundef %73, i32 noundef %74, i64 noundef %75)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 2
  store i32 %79, i32* %7, align 4
  br label %44, !llvm.loop !8

80:                                               ; preds = %44
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.tn*, %struct.tn** %12, align 8
  %83 = call i64 @ItemCheck(%struct.tn* noundef %82)
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef %81, i64 noundef %83)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare i64 @atol(i8* noundef) #2

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
