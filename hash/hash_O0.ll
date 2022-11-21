; ModuleID = 'hash/hash.c'
source_filename = "hash/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ht_node = type { i8*, i32, %struct.ht_node* }
%struct.ht_ht = type { i32, %struct.ht_node**, i32, %struct.ht_node*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal global [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ht_node* @ht_node_create(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ht_node*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call noalias i8* @malloc(i64 noundef 24) #5
  %6 = bitcast i8* %5 to %struct.ht_node*
  store %struct.ht_node* %6, %struct.ht_node** %4, align 8
  %7 = icmp eq %struct.ht_node* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call noalias i8* @strdup(i8* noundef %10) #5
  store i8* %11, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @perror(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  %17 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  %19 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %18, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  %21 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %20, i32 0, i32 2
  store %struct.ht_node* null, %struct.ht_node** %21, align 8
  %22 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  ret %struct.ht_node* %22
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

declare void @perror(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ht_ht* @ht_create(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ht_ht*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 noundef 40) #5
  %6 = bitcast i8* %5 to %struct.ht_ht*
  store %struct.ht_ht* %6, %struct.ht_ht** %4, align 8
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %7, !llvm.loop !6

18:                                               ; preds = %7
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %25 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %27 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = call noalias i8* @calloc(i64 noundef %29, i64 noundef 8) #5
  %31 = bitcast i8* %30 to %struct.ht_node**
  %32 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %33 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %32, i32 0, i32 1
  store %struct.ht_node** %31, %struct.ht_node*** %33, align 8
  %34 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %35 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %37 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %36, i32 0, i32 3
  store %struct.ht_node* null, %struct.ht_node** %37, align 8
  %38 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %39 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %38, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  ret %struct.ht_ht* %40
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht_destroy(%struct.ht_ht* noundef %0) #0 {
  %2 = alloca %struct.ht_ht*, align 8
  %3 = alloca %struct.ht_node*, align 8
  %4 = alloca %struct.ht_node*, align 8
  %5 = alloca i32, align 4
  store %struct.ht_ht* %0, %struct.ht_ht** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ht_ht*, %struct.ht_ht** %2, align 8
  %9 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.ht_ht*, %struct.ht_ht** %2, align 8
  %14 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %13, i32 0, i32 1
  %15 = load %struct.ht_node**, %struct.ht_node*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %15, i64 %17
  %19 = load %struct.ht_node*, %struct.ht_node** %18, align 8
  store %struct.ht_node* %19, %struct.ht_node** %4, align 8
  br label %20

20:                                               ; preds = %23, %12
  %21 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  %22 = icmp ne %struct.ht_node* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  store %struct.ht_node* %24, %struct.ht_node** %3, align 8
  %25 = load %struct.ht_node*, %struct.ht_node** %4, align 8
  %26 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %25, i32 0, i32 2
  %27 = load %struct.ht_node*, %struct.ht_node** %26, align 8
  store %struct.ht_node* %27, %struct.ht_node** %4, align 8
  %28 = load %struct.ht_node*, %struct.ht_node** %3, align 8
  %29 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  call void @free(i8* noundef %30) #5
  %31 = load %struct.ht_node*, %struct.ht_node** %3, align 8
  %32 = bitcast %struct.ht_node* %31 to i8*
  call void @free(i8* noundef %32) #5
  br label %20, !llvm.loop !8

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6, !llvm.loop !9

37:                                               ; preds = %6
  %38 = load %struct.ht_ht*, %struct.ht_ht** %2, align 8
  %39 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %38, i32 0, i32 1
  %40 = load %struct.ht_node**, %struct.ht_node*** %39, align 8
  %41 = bitcast %struct.ht_node** %40 to i8*
  call void @free(i8* noundef %41) #5
  %42 = load %struct.ht_ht*, %struct.ht_ht** %2, align 8
  %43 = bitcast %struct.ht_ht* %42 to i8*
  call void @free(i8* noundef %43) #5
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
  %9 = alloca [32 x i8], align 16
  %10 = alloca %struct.ht_ht*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @atoi(i8* noundef %16) #7
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 3500000, %18 ]
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.ht_ht* @ht_create(i32 noundef %21)
  store %struct.ht_ht* %22, %struct.ht_ht** %10, align 8
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %36, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %29) #5
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ht_ht*, %struct.ht_ht** %10, align 8
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %34 = call %struct.ht_node* @ht_find_new(%struct.ht_ht* noundef %32, i8* noundef %33)
  %35 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %23, !llvm.loop !10

39:                                               ; preds = %23
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %56, %39
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %46) #5
  %48 = load %struct.ht_ht*, %struct.ht_ht** %10, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %50 = call %struct.ht_node* @ht_find(%struct.ht_ht* noundef %48, i8* noundef %49)
  %51 = icmp ne %struct.ht_node* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  br label %41, !llvm.loop !11

59:                                               ; preds = %41
  %60 = load %struct.ht_ht*, %struct.ht_ht** %10, align 8
  call void @ht_destroy(%struct.ht_ht* noundef %60)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %61)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ht_node* @ht_find_new(%struct.ht_ht* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.ht_node*, align 8
  %4 = alloca %struct.ht_ht*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ht_node*, align 8
  %8 = alloca %struct.ht_node*, align 8
  store %struct.ht_ht* %0, %struct.ht_ht** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @ht_hashcode(%struct.ht_ht* noundef %9, i8* noundef %10)
  store i32 %11, i32* %6, align 4
  store %struct.ht_node* null, %struct.ht_node** %7, align 8
  %12 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %13 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %12, i32 0, i32 1
  %14 = load %struct.ht_node**, %struct.ht_node*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %14, i64 %16
  %18 = load %struct.ht_node*, %struct.ht_node** %17, align 8
  store %struct.ht_node* %18, %struct.ht_node** %8, align 8
  br label %19

19:                                               ; preds = %31, %2
  %20 = load %struct.ht_node*, %struct.ht_node** %8, align 8
  %21 = icmp ne %struct.ht_node* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.ht_node*, %struct.ht_node** %8, align 8
  %25 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* noundef %23, i8* noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load %struct.ht_node*, %struct.ht_node** %8, align 8
  store %struct.ht_node* %30, %struct.ht_node** %3, align 8
  br label %57

31:                                               ; preds = %22
  %32 = load %struct.ht_node*, %struct.ht_node** %8, align 8
  store %struct.ht_node* %32, %struct.ht_node** %7, align 8
  %33 = load %struct.ht_node*, %struct.ht_node** %8, align 8
  %34 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %33, i32 0, i32 2
  %35 = load %struct.ht_node*, %struct.ht_node** %34, align 8
  store %struct.ht_node* %35, %struct.ht_node** %8, align 8
  br label %19, !llvm.loop !12

36:                                               ; preds = %19
  %37 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %38 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.ht_node*, %struct.ht_node** %7, align 8
  %42 = icmp ne %struct.ht_node* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = call %struct.ht_node* @ht_node_create(i8* noundef %44)
  %46 = load %struct.ht_node*, %struct.ht_node** %7, align 8
  %47 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %46, i32 0, i32 2
  store %struct.ht_node* %45, %struct.ht_node** %47, align 8
  store %struct.ht_node* %45, %struct.ht_node** %3, align 8
  br label %57

48:                                               ; preds = %36
  %49 = load i8*, i8** %5, align 8
  %50 = call %struct.ht_node* @ht_node_create(i8* noundef %49)
  %51 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %52 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %51, i32 0, i32 1
  %53 = load %struct.ht_node**, %struct.ht_node*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %53, i64 %55
  store %struct.ht_node* %50, %struct.ht_node** %56, align 8
  store %struct.ht_node* %50, %struct.ht_node** %3, align 8
  br label %57

57:                                               ; preds = %48, %43, %29
  %58 = load %struct.ht_node*, %struct.ht_node** %3, align 8
  ret %struct.ht_node* %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ht_node* @ht_find(%struct.ht_ht* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.ht_node*, align 8
  %4 = alloca %struct.ht_ht*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ht_node*, align 8
  store %struct.ht_ht* %0, %struct.ht_ht** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @ht_hashcode(%struct.ht_ht* noundef %8, i8* noundef %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ht_ht*, %struct.ht_ht** %4, align 8
  %12 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i32 0, i32 1
  %13 = load %struct.ht_node**, %struct.ht_node*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %13, i64 %15
  %17 = load %struct.ht_node*, %struct.ht_node** %16, align 8
  store %struct.ht_node* %17, %struct.ht_node** %7, align 8
  br label %18

18:                                               ; preds = %30, %2
  %19 = load %struct.ht_node*, %struct.ht_node** %7, align 8
  %20 = icmp ne %struct.ht_node* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.ht_node*, %struct.ht_node** %7, align 8
  %24 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* noundef %22, i8* noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load %struct.ht_node*, %struct.ht_node** %7, align 8
  store %struct.ht_node* %29, %struct.ht_node** %3, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.ht_node*, %struct.ht_node** %7, align 8
  %32 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %31, i32 0, i32 2
  %33 = load %struct.ht_node*, %struct.ht_node** %32, align 8
  store %struct.ht_node* %33, %struct.ht_node** %7, align 8
  br label %18, !llvm.loop !13

34:                                               ; preds = %18
  store %struct.ht_node* null, %struct.ht_node** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.ht_node*, %struct.ht_node** %3, align 8
  ret %struct.ht_node* %36
}

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_hashcode(%struct.ht_ht* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.ht_ht*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ht_ht* %0, %struct.ht_ht** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* %5, align 8
  %12 = mul i64 5, %11
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i64
  %16 = add i64 %12, %15
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %6, !llvm.loop !14

20:                                               ; preds = %6
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.ht_ht*, %struct.ht_ht** %3, align 8
  %23 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = urem i64 %21, %25
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #4

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
