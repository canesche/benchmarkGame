; ModuleID = 'methcall/methcall.c'
source_filename = "methcall/methcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @toggle_value(%struct.Toggle* noundef %0) #0 {
  %2 = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %0, %struct.Toggle** %2, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Toggle* @toggle_activate(%struct.Toggle* noundef %0) #0 {
  %2 = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %0, %struct.Toggle** %2, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = icmp ne i8 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = trunc i32 %8 to i8
  %10 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  %11 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 8
  %12 = load %struct.Toggle*, %struct.Toggle** %2, align 8
  ret %struct.Toggle* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Toggle* @init_Toggle(%struct.Toggle* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca %struct.Toggle*, align 8
  %4 = alloca i8, align 1
  store %struct.Toggle* %0, %struct.Toggle** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %7 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %6, i32 0, i32 0
  store i8 %5, i8* %7, align 8
  %8 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %9 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %8, i32 0, i32 1
  %10 = bitcast {}** %9 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %10, align 8
  %11 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %12 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %11, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %12, align 8
  %13 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  ret %struct.Toggle* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Toggle* @new_Toggle(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.Toggle*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call noalias i8* @malloc(i64 noundef 24) #3
  %5 = bitcast i8* %4 to %struct.Toggle*
  store %struct.Toggle* %5, %struct.Toggle** %3, align 8
  %6 = load %struct.Toggle*, %struct.Toggle** %3, align 8
  %7 = load i8, i8* %2, align 1
  %8 = call %struct.Toggle* @init_Toggle(%struct.Toggle* noundef %6, i8 noundef signext %7)
  ret %struct.Toggle* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* noundef %0) #0 {
  %2 = alloca %struct.NthToggle*, align 8
  store %struct.NthToggle* %0, %struct.NthToggle** %2, align 8
  %3 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %4 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %8 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %13 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = icmp ne i8 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = trunc i32 %17 to i8
  %19 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %20 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %19, i32 0, i32 0
  store i8 %18, i8* %20, align 8
  %21 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  %22 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %21, i32 0, i32 4
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.NthToggle*, %struct.NthToggle** %2, align 8
  ret %struct.NthToggle* %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NthToggle* @init_NthToggle(%struct.NthToggle* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.NthToggle*, align 8
  %4 = alloca i32, align 4
  store %struct.NthToggle* %0, %struct.NthToggle** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  %7 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  %9 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %8, i32 0, i32 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  %11 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %10, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %11, align 8
  %12 = load %struct.NthToggle*, %struct.NthToggle** %3, align 8
  ret %struct.NthToggle* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NthToggle* @new_NthToggle(i8 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %struct.NthToggle*, align 8
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %6 = call noalias i8* @malloc(i64 noundef 32) #3
  %7 = bitcast i8* %6 to %struct.NthToggle*
  store %struct.NthToggle* %7, %struct.NthToggle** %5, align 8
  %8 = load %struct.NthToggle*, %struct.NthToggle** %5, align 8
  %9 = bitcast %struct.NthToggle* %8 to %struct.Toggle*
  %10 = load i8, i8* %3, align 1
  %11 = call %struct.Toggle* @init_Toggle(%struct.Toggle* noundef %9, i8 noundef signext %10)
  %12 = bitcast %struct.Toggle* %11 to %struct.NthToggle*
  store %struct.NthToggle* %12, %struct.NthToggle** %5, align 8
  %13 = load %struct.NthToggle*, %struct.NthToggle** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.NthToggle* @init_NthToggle(%struct.NthToggle* noundef %13, i32 noundef %14)
  ret %struct.NthToggle* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Toggle*, align 8
  %9 = alloca %struct.NthToggle*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 500000000, i32* %7, align 4
  store i8 1, i8* %10, align 1
  %13 = call i64 @clock() #3
  store i64 %13, i64* %11, align 8
  %14 = call %struct.Toggle* @new_Toggle(i8 noundef signext 1)
  store %struct.Toggle* %14, %struct.Toggle** %8, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %21 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %20, i32 0, i32 2
  %22 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %21, align 8
  %23 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %24 = call %struct.Toggle* %22(%struct.Toggle* noundef %23)
  %25 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %24, i32 0, i32 1
  %26 = bitcast {}** %25 to i8 (%struct.Toggle*)**
  %27 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %26, align 8
  %28 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %29 = call signext i8 %27(%struct.Toggle* noundef %28)
  store i8 %29, i8* %10, align 1
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %15, !llvm.loop !6

33:                                               ; preds = %15
  %34 = load i8, i8* %10, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %39 = call i32 @puts(i8* noundef %38)
  %40 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %41 = bitcast %struct.Toggle* %40 to i8*
  call void @free(i8* noundef %41) #3
  store i8 1, i8* %10, align 1
  %42 = load i8, i8* %10, align 1
  %43 = call %struct.NthToggle* @new_NthToggle(i8 noundef signext %42, i32 noundef 3)
  store %struct.NthToggle* %43, %struct.NthToggle** %9, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %61, %33
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %50 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %49, i32 0, i32 2
  %51 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %50, align 8
  %52 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %53 = bitcast %struct.NthToggle* %52 to %struct.Toggle*
  %54 = call %struct.Toggle* %51(%struct.Toggle* noundef %53)
  %55 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %54, i32 0, i32 1
  %56 = bitcast {}** %55 to i8 (%struct.Toggle*)**
  %57 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %56, align 8
  %58 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %59 = bitcast %struct.NthToggle* %58 to %struct.Toggle*
  %60 = call signext i8 %57(%struct.Toggle* noundef %59)
  store i8 %60, i8* %10, align 1
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %44, !llvm.loop !8

64:                                               ; preds = %44
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %70 = call i32 @puts(i8* noundef %69)
  %71 = call i64 @clock() #3
  %72 = load i64, i64* %11, align 8
  %73 = sub nsw i64 %71, %72
  %74 = sitofp i64 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  store double %75, double* %12, align 8
  %76 = load double, double* %12, align 8
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double noundef %76)
  %78 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %79 = bitcast %struct.NthToggle* %78 to i8*
  call void @free(i8* noundef %79) #3
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

declare i32 @puts(i8* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

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
