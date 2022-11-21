; ModuleID = 'methcall/methcall.c'
source_filename = "methcall/methcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1

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
  %4 = call noalias i8* @malloc(i64 noundef 24) #4
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
  %6 = call noalias i8* @malloc(i64 noundef 32) #4
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @atoi(i8* noundef %16) #5
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 500000000, %18 ]
  store i32 %20, i32* %7, align 4
  store i8 1, i8* %10, align 1
  %21 = call %struct.Toggle* @new_Toggle(i8 noundef signext 1)
  store %struct.Toggle* %21, %struct.Toggle** %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %37, %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %28 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %27, i32 0, i32 2
  %29 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %28, align 8
  %30 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %31 = call %struct.Toggle* %29(%struct.Toggle* noundef %30)
  %32 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i8 (%struct.Toggle*)**
  %34 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %33, align 8
  %35 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %36 = call signext i8 %34(%struct.Toggle* noundef %35)
  store i8 %36, i8* %10, align 1
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %22, !llvm.loop !6

40:                                               ; preds = %22
  %41 = load i8, i8* %10, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %46 = call i32 @puts(i8* noundef %45)
  %47 = load %struct.Toggle*, %struct.Toggle** %8, align 8
  %48 = bitcast %struct.Toggle* %47 to i8*
  call void @free(i8* noundef %48) #4
  store i8 1, i8* %10, align 1
  %49 = load i8, i8* %10, align 1
  %50 = call %struct.NthToggle* @new_NthToggle(i8 noundef signext %49, i32 noundef 3)
  store %struct.NthToggle* %50, %struct.NthToggle** %9, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %68, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %57 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %56, i32 0, i32 2
  %58 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %57, align 8
  %59 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %60 = bitcast %struct.NthToggle* %59 to %struct.Toggle*
  %61 = call %struct.Toggle* %58(%struct.Toggle* noundef %60)
  %62 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %61, i32 0, i32 1
  %63 = bitcast {}** %62 to i8 (%struct.Toggle*)**
  %64 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %63, align 8
  %65 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %66 = bitcast %struct.NthToggle* %65 to %struct.Toggle*
  %67 = call signext i8 %64(%struct.Toggle* noundef %66)
  store i8 %67, i8* %10, align 1
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %51, !llvm.loop !8

71:                                               ; preds = %51
  %72 = load i8, i8* %10, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %77 = call i32 @puts(i8* noundef %76)
  %78 = load %struct.NthToggle*, %struct.NthToggle** %9, align 8
  %79 = bitcast %struct.NthToggle* %78 to i8*
  call void @free(i8* noundef %79) #4
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

declare i32 @puts(i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

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
