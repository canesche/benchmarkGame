; ModuleID = 'strcat/strcat.c'
source_filename = "strcat/strcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"calloc strbuf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc strbuf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 100000000, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %14 = call i64 @clock() #5
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %16) #5
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  store i8* %18, i8** %12, align 8
  store i32 6, i32* %13, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** %12, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 2, %42
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = call i8* @realloc(i8* noundef %44, i64 noundef %46) #5
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

51:                                               ; preds = %41
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @strlen(i8* noundef %53) #7
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %12, align 8
  br label %56

56:                                               ; preds = %51, %28
  %57 = load i8*, i8** %12, align 8
  %58 = call i8* @strcat(i8* noundef %57, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #5
  %59 = load i32, i32* %13, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %23, !llvm.loop !6

66:                                               ; preds = %23
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strlen(i8* noundef %67) #7
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %69)
  %71 = call i64 @clock() #5
  %72 = load i64, i64* %9, align 8
  %73 = sub nsw i64 %71, %72
  %74 = sitofp i64 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  store double %75, double* %10, align 8
  %76 = load double, double* %10, align 8
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), double noundef %76)
  %78 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %78) #5
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare void @perror(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

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
