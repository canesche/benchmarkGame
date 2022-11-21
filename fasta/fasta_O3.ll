; ModuleID = 'fasta/fasta.c'
source_filename = "fasta/fasta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@header1 = dso_local constant [23 x i8] c">ONE Homo sapiens alu\0A\00", align 16
@header2 = dso_local constant [26 x i8] c">TWO IUB ambiguity codes\0A\00", align 16
@header3 = dso_local constant [31 x i8] c">THREE Homo sapiens frequency\0A\00", align 16
@iub_p = internal constant [15 x float] [float 0x3FD147AE20000000, float 0x3FBEB851E0000000, float 0x3FBEB851E0000000, float 0x3FD147AE20000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000], align 16
@homosapiens_p = internal constant [4 x float] [float 0x3FD3639D20000000, float 0x3FC957AE40000000, float 0x3FC9493AE0000000, float 0x3FD34BEE40000000], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 1
@seed = internal unnamed_addr global i32 42, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"acgtBDHKMNRSVWY\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"acgt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #8
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %8, %4 ], [ 1000, %2 ]
  %11 = tail call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @header1, i64 0, i64 0), i64 noundef 22) #8
  %12 = tail call noalias dereferenceable_or_null(347) i8* @malloc(i64 noundef 347) #8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(287) %12, i8* noundef nonnull align 1 dereferenceable(287) getelementptr inbounds ([288 x i8], [288 x i8]* @.str.1, i64 0, i64 0), i64 287, i1 false) #8
  %13 = getelementptr inbounds i8, i8* %12, i64 287
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(60) %13, i8* noundef nonnull align 1 dereferenceable(60) getelementptr inbounds ([288 x i8], [288 x i8]* @.str.1, i64 0, i64 0), i64 60, i1 false) #8
  %14 = tail call noalias dereferenceable_or_null(17507) i8* @malloc(i64 noundef 17507) #8
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi i64 [ 0, %9 ], [ %24, %15 ]
  %17 = mul nuw nsw i64 %16, 61
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = trunc i64 %16 to i16
  %20 = mul i16 %19, 60
  %21 = urem i16 %20, 287
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds i8, i8* %12, i64 %22
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(60) %18, i8* noundef nonnull align 1 dereferenceable(60) %23, i64 60, i1 false) #8
  %24 = add nuw nsw i64 %16, 1
  %25 = mul nuw nsw i64 %24, 61
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds i8, i8* %14, i64 %26
  store i8 10, i8* %27, align 1, !tbaa !9
  %28 = icmp eq i64 %24, 287
  br i1 %28, label %29, label %15, !llvm.loop !10

29:                                               ; preds = %15
  %30 = shl nsw i32 %10, 1
  %31 = sdiv i32 %10, 8610
  %32 = icmp sgt i32 %10, 8609
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %36, %33 ], [ 0, %29 ]
  %35 = tail call i64 @write(i32 noundef 1, i8* noundef %14, i64 noundef 17507) #8
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp eq i32 %36, %31
  br i1 %37, label %38, label %33, !llvm.loop !12

38:                                               ; preds = %33, %29
  %39 = mul i32 %31, -17220
  %40 = add i32 %39, %30
  %41 = sdiv i32 %40, 60
  %42 = add nsw i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = tail call i64 @write(i32 noundef 1, i8* noundef %14, i64 noundef %43) #8
  tail call void @free(i8* noundef %12) #8
  tail call void @free(i8* noundef %14) #8
  %45 = srem i32 %30, 60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = tail call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 noundef 1) #8
  br label %49

49:                                               ; preds = %38, %47
  %50 = tail call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @header2, i64 0, i64 0), i64 noundef 25) #8
  %51 = mul nsw i32 %10, 3
  tail call fastcc void @random_fasta(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), float* noundef getelementptr inbounds ([15 x float], [15 x float]* @iub_p, i64 0, i64 0), i32 noundef %51)
  %52 = tail call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @header3, i64 0, i64 0), i64 noundef 30) #8
  %53 = mul nsw i32 %10, 5
  tail call fastcc void @random_fasta(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), float* noundef getelementptr inbounds ([4 x float], [4 x float]* @homosapiens_p, i64 0, i64 0), i32 noundef %53)
  ret i32 0
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @random_fasta(i8* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(139968) i8* @malloc(i64 noundef 139968) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @exit(i32 noundef -1) #9
  unreachable

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #10
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load float, float* %1, align 4, !tbaa !13
  br label %13

13:                                               ; preds = %30, %11
  %14 = phi i64 [ 0, %11 ], [ %37, %30 ]
  %15 = phi i32 [ 0, %11 ], [ %33, %30 ]
  %16 = phi float [ %12, %11 ], [ %32, %30 ]
  %17 = trunc i64 %14 to i32
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %18, 1.399680e+05
  %20 = fptrunc double %19 to float
  %21 = fcmp ugt float %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = sext i32 %15 to i64
  br label %30

24:                                               ; preds = %13
  %25 = add nsw i32 %15, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %1, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !13
  %29 = fadd float %16, %28
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi i64 [ %23, %22 ], [ %26, %24 ]
  %32 = phi float [ %16, %22 ], [ %29, %24 ]
  %33 = phi i32 [ %15, %22 ], [ %25, %24 ]
  %34 = getelementptr inbounds i8, i8* %0, i64 %31
  %35 = load i8, i8* %34, align 1, !tbaa !9
  %36 = getelementptr inbounds i8, i8* %4, i64 %14
  store i8 %35, i8* %36, align 1, !tbaa !9
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp ult i64 %14, 139967
  %39 = icmp slt i32 %33, %9
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %13, label %41, !llvm.loop !15

41:                                               ; preds = %30, %7
  %42 = tail call noalias dereferenceable_or_null(6100) i8* @malloc(i64 noundef 6100) #8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void @exit(i32 noundef -1) #9
  unreachable

45:                                               ; preds = %41, %45
  %46 = phi i64 [ %62, %45 ], [ 0, %41 ]
  %47 = mul nuw nsw i64 %46, 61
  %48 = add nuw nsw i64 %47, 60
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  store i8 10, i8* %49, align 1, !tbaa !9
  %50 = mul i64 %46, 61
  %51 = add i64 %50, 121
  %52 = getelementptr inbounds i8, i8* %42, i64 %51
  store i8 10, i8* %52, align 1, !tbaa !9
  %53 = mul i64 %46, 61
  %54 = add i64 %53, 182
  %55 = getelementptr inbounds i8, i8* %42, i64 %54
  store i8 10, i8* %55, align 1, !tbaa !9
  %56 = mul i64 %46, 61
  %57 = add i64 %56, 243
  %58 = getelementptr inbounds i8, i8* %42, i64 %57
  store i8 10, i8* %58, align 1, !tbaa !9
  %59 = mul i64 %46, 61
  %60 = add i64 %59, 304
  %61 = getelementptr inbounds i8, i8* %42, i64 %60
  store i8 10, i8* %61, align 1, !tbaa !9
  %62 = add nuw nsw i64 %46, 5
  %63 = icmp eq i64 %62, 100
  br i1 %63, label %64, label %45, !llvm.loop !16

64:                                               ; preds = %45
  %65 = sdiv i32 %2, 60
  %66 = srem i32 %2, 60
  %67 = sdiv i32 %2, 6000
  %68 = icmp sgt i32 %2, 5999
  br i1 %68, label %69, label %105

69:                                               ; preds = %64, %101
  %70 = phi i32 [ %103, %101 ], [ 0, %64 ]
  %71 = load i32, i32* @seed, align 4, !tbaa !17
  br label %72

72:                                               ; preds = %69, %98
  %73 = phi i64 [ 0, %69 ], [ %99, %98 ]
  %74 = phi i32 [ %71, %69 ], [ %90, %98 ]
  %75 = mul nuw nsw i64 %73, 61
  br label %76

76:                                               ; preds = %76, %72
  %77 = phi i64 [ 0, %72 ], [ %96, %76 ]
  %78 = phi i32 [ %74, %72 ], [ %90, %76 ]
  %79 = mul i32 %78, 3877
  %80 = add i32 %79, 29573
  %81 = urem i32 %80, 139968
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %4, i64 %82
  %84 = load i8, i8* %83, align 1, !tbaa !9
  %85 = add nuw nsw i64 %77, %75
  %86 = getelementptr inbounds i8, i8* %42, i64 %85
  store i8 %84, i8* %86, align 1, !tbaa !9
  %87 = or i64 %77, 1
  %88 = mul nuw nsw i32 %81, 3877
  %89 = add nuw nsw i32 %88, 29573
  %90 = urem i32 %89, 139968
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %4, i64 %91
  %93 = load i8, i8* %92, align 1, !tbaa !9
  %94 = add nuw nsw i64 %87, %75
  %95 = getelementptr inbounds i8, i8* %42, i64 %94
  store i8 %93, i8* %95, align 1, !tbaa !9
  %96 = add nuw nsw i64 %77, 2
  %97 = icmp eq i64 %96, 60
  br i1 %97, label %98, label %76, !llvm.loop !19

98:                                               ; preds = %76
  %99 = add nuw nsw i64 %73, 1
  %100 = icmp eq i64 %99, 100
  br i1 %100, label %101, label %72, !llvm.loop !20

101:                                              ; preds = %98
  store i32 %90, i32* @seed, align 4, !tbaa !17
  %102 = tail call i64 @write(i32 noundef 1, i8* noundef nonnull %42, i64 noundef 6100) #8
  %103 = add nuw nsw i32 %70, 1
  %104 = icmp eq i32 %103, %67
  br i1 %104, label %105, label %69, !llvm.loop !21

105:                                              ; preds = %101, %64
  %106 = mul nsw i32 %67, -100
  %107 = add nsw i32 %106, %65
  %108 = load i32, i32* @seed, align 4, !tbaa !17
  %109 = icmp sgt i32 %107, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %105
  %111 = zext i32 %107 to i64
  br label %112

112:                                              ; preds = %110, %138
  %113 = phi i64 [ 0, %110 ], [ %139, %138 ]
  %114 = phi i32 [ %108, %110 ], [ %130, %138 ]
  %115 = mul nuw nsw i64 %113, 61
  br label %116

116:                                              ; preds = %116, %112
  %117 = phi i64 [ 0, %112 ], [ %136, %116 ]
  %118 = phi i32 [ %114, %112 ], [ %130, %116 ]
  %119 = mul i32 %118, 3877
  %120 = add i32 %119, 29573
  %121 = urem i32 %120, 139968
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %4, i64 %122
  %124 = load i8, i8* %123, align 1, !tbaa !9
  %125 = add nuw nsw i64 %117, %115
  %126 = getelementptr inbounds i8, i8* %42, i64 %125
  store i8 %124, i8* %126, align 1, !tbaa !9
  %127 = or i64 %117, 1
  %128 = mul nuw nsw i32 %121, 3877
  %129 = add nuw nsw i32 %128, 29573
  %130 = urem i32 %129, 139968
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %4, i64 %131
  %133 = load i8, i8* %132, align 1, !tbaa !9
  %134 = add nuw nsw i64 %127, %115
  %135 = getelementptr inbounds i8, i8* %42, i64 %134
  store i8 %133, i8* %135, align 1, !tbaa !9
  %136 = add nuw nsw i64 %117, 2
  %137 = icmp eq i64 %136, 60
  br i1 %137, label %138, label %116, !llvm.loop !22

138:                                              ; preds = %116
  %139 = add nuw nsw i64 %113, 1
  %140 = icmp eq i64 %139, %111
  br i1 %140, label %141, label %112, !llvm.loop !23

141:                                              ; preds = %138
  store i32 %130, i32* @seed, align 4, !tbaa !17
  br label %142

142:                                              ; preds = %141, %105
  %143 = phi i32 [ %130, %141 ], [ %108, %105 ]
  %144 = mul i32 %107, -60
  %145 = mul i32 %67, -6000
  %146 = add i32 %145, %2
  %147 = add i32 %146, %144
  %148 = icmp sgt i32 %147, 0
  %149 = mul nsw i32 %107, 61
  br i1 %148, label %150, label %197

150:                                              ; preds = %142
  %151 = sext i32 %149 to i64
  %152 = zext i32 %147 to i64
  %153 = and i64 %152, 1
  %154 = icmp eq i32 %147, 1
  br i1 %154, label %181, label %155

155:                                              ; preds = %150
  %156 = and i64 %152, 4294967294
  br label %157

157:                                              ; preds = %157, %155
  %158 = phi i64 [ 0, %155 ], [ %178, %157 ]
  %159 = phi i32 [ %143, %155 ], [ %172, %157 ]
  %160 = phi i64 [ 0, %155 ], [ %179, %157 ]
  %161 = mul i32 %159, 3877
  %162 = add i32 %161, 29573
  %163 = urem i32 %162, 139968
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %4, i64 %164
  %166 = load i8, i8* %165, align 1, !tbaa !9
  %167 = add nsw i64 %158, %151
  %168 = getelementptr inbounds i8, i8* %42, i64 %167
  store i8 %166, i8* %168, align 1, !tbaa !9
  %169 = or i64 %158, 1
  %170 = mul nuw nsw i32 %163, 3877
  %171 = add nuw nsw i32 %170, 29573
  %172 = urem i32 %171, 139968
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %4, i64 %173
  %175 = load i8, i8* %174, align 1, !tbaa !9
  %176 = add nsw i64 %169, %151
  %177 = getelementptr inbounds i8, i8* %42, i64 %176
  store i8 %175, i8* %177, align 1, !tbaa !9
  %178 = add nuw nsw i64 %158, 2
  %179 = add i64 %160, 2
  %180 = icmp eq i64 %179, %156
  br i1 %180, label %181, label %157, !llvm.loop !24

181:                                              ; preds = %157, %150
  %182 = phi i32 [ undef, %150 ], [ %172, %157 ]
  %183 = phi i64 [ 0, %150 ], [ %178, %157 ]
  %184 = phi i32 [ %143, %150 ], [ %172, %157 ]
  %185 = icmp eq i64 %153, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %181
  %187 = mul i32 %184, 3877
  %188 = add i32 %187, 29573
  %189 = urem i32 %188, 139968
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %4, i64 %190
  %192 = load i8, i8* %191, align 1, !tbaa !9
  %193 = add nsw i64 %183, %151
  %194 = getelementptr inbounds i8, i8* %42, i64 %193
  store i8 %192, i8* %194, align 1, !tbaa !9
  br label %195

195:                                              ; preds = %181, %186
  %196 = phi i32 [ %182, %181 ], [ %189, %186 ]
  store i32 %196, i32* @seed, align 4, !tbaa !17
  br label %197

197:                                              ; preds = %142, %195
  %198 = add nsw i32 %147, %149
  %199 = sext i32 %198 to i64
  %200 = tail call i64 @write(i32 noundef 1, i8* noundef nonnull %42, i64 noundef %199) #8
  %201 = icmp eq i32 %66, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = tail call i64 @write(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 noundef 1) #8
  br label %204

204:                                              ; preds = %202, %197
  tail call void @free(i8* noundef nonnull %42) #8
  tail call void @free(i8* noundef %4) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
