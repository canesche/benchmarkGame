; ModuleID = 'fannkuch/fannkuch.c'
source_filename = "fannkuch/fannkuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"%jd\0APfannkuchen(%jd) = %jd\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !5
  %5 = tail call i64 @strtol(i8* nocapture noundef nonnull %4, i8** noundef null, i32 noundef 10) #6
  %6 = shl i64 %5, 32
  %7 = ashr exact i64 %6, 32
  %8 = add nsw i64 %7, 1
  %9 = alloca i64, i64 %8, align 16
  store i64 1, i64* %9, align 16, !tbaa !9
  %10 = icmp sgt i64 %6, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = call i64 @llvm.smax.i64(i64 %7, i64 1)
  %13 = add nsw i64 %12, -1
  %14 = and i64 %12, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = and i64 %12, 9223372036854775804
  br label %54

18:                                               ; preds = %54, %11
  %19 = phi i64 [ 1, %11 ], [ %67, %54 ]
  %20 = phi i64 [ 1, %11 ], [ %69, %54 ]
  %21 = icmp eq i64 %14, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %26, %22 ], [ %19, %18 ]
  %24 = phi i64 [ %28, %22 ], [ %20, %18 ]
  %25 = phi i64 [ %29, %22 ], [ 0, %18 ]
  %26 = mul nsw i64 %23, %24
  %27 = getelementptr inbounds i64, i64* %9, i64 %24
  store i64 %26, i64* %27, align 8, !tbaa !9
  %28 = add nuw nsw i64 %24, 1
  %29 = add i64 %25, 1
  %30 = icmp eq i64 %29, %14
  br i1 %30, label %31, label %22, !llvm.loop !11

31:                                               ; preds = %18, %22, %2
  %32 = getelementptr inbounds i64, i64* %9, i64 %7
  %33 = load i64, i64* %32, align 8, !tbaa !9
  %34 = icmp slt i64 %33, 12
  %35 = select i1 %34, i64 1, i64 12
  %36 = sdiv i64 %33, %35
  %37 = icmp sgt i64 %33, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %31
  %39 = icmp sgt i64 %6, 4294967296
  %40 = call i64 @llvm.smax.i64(i64 %7, i64 1)
  %41 = call i64 @llvm.smax.i64(i64 %7, i64 2)
  %42 = add nsw i64 %41, -1
  %43 = and i64 %40, 9223372036854775776
  %44 = add nsw i64 %43, -32
  %45 = lshr exact i64 %44, 5
  %46 = add nuw nsw i64 %45, 1
  %47 = icmp ult i64 %40, 32
  %48 = and i64 %40, 9223372036854775776
  %49 = and i64 %46, 3
  %50 = icmp ult i64 %44, 96
  %51 = and i64 %46, 1152921504606846972
  %52 = icmp eq i64 %49, 0
  %53 = icmp eq i64 %40, %48
  br label %76

54:                                               ; preds = %54, %16
  %55 = phi i64 [ 1, %16 ], [ %67, %54 ]
  %56 = phi i64 [ 1, %16 ], [ %69, %54 ]
  %57 = phi i64 [ 0, %16 ], [ %70, %54 ]
  %58 = mul nsw i64 %55, %56
  %59 = getelementptr inbounds i64, i64* %9, i64 %56
  store i64 %58, i64* %59, align 8, !tbaa !9
  %60 = add nuw nsw i64 %56, 1
  %61 = mul nsw i64 %58, %60
  %62 = getelementptr inbounds i64, i64* %9, i64 %60
  store i64 %61, i64* %62, align 8, !tbaa !9
  %63 = add nuw nsw i64 %56, 2
  %64 = mul nsw i64 %61, %63
  %65 = getelementptr inbounds i64, i64* %9, i64 %63
  store i64 %64, i64* %65, align 8, !tbaa !9
  %66 = add nuw nsw i64 %56, 3
  %67 = mul nsw i64 %64, %66
  %68 = getelementptr inbounds i64, i64* %9, i64 %66
  store i64 %67, i64* %68, align 8, !tbaa !9
  %69 = add nuw nsw i64 %56, 4
  %70 = add nuw i64 %57, 4
  %71 = icmp eq i64 %70, %17
  br i1 %71, label %18, label %54, !llvm.loop !13

72:                                               ; preds = %262, %31
  %73 = phi i64 [ 0, %31 ], [ %259, %262 ]
  %74 = phi i64 [ 0, %31 ], [ %260, %262 ]
  %75 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 noundef %73, i64 noundef %7, i64 noundef %74)
  ret i32 0

76:                                               ; preds = %38, %262
  %77 = phi i64 [ 0, %38 ], [ %260, %262 ]
  %78 = phi i64 [ 0, %38 ], [ %259, %262 ]
  %79 = phi i64 [ 0, %38 ], [ %161, %262 ]
  %80 = tail call i8* @llvm.stacksave()
  %81 = alloca i64, i64 %7, align 16
  %82 = alloca i8, i64 %7, align 16
  %83 = alloca i8, i64 %7, align 16
  store i64 0, i64* %81, align 16, !tbaa !9
  br i1 %10, label %84, label %139

84:                                               ; preds = %76
  br i1 %47, label %137, label %85

85:                                               ; preds = %84
  br i1 %50, label %120, label %86

86:                                               ; preds = %85, %86
  %87 = phi i64 [ %116, %86 ], [ 0, %85 ]
  %88 = phi <16 x i8> [ %117, %86 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %85 ]
  %89 = phi i64 [ %118, %86 ], [ 0, %85 ]
  %90 = add <16 x i8> %88, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %91 = getelementptr inbounds i8, i8* %83, i64 %87
  %92 = bitcast i8* %91 to <16 x i8>*
  store <16 x i8> %88, <16 x i8>* %92, align 16, !tbaa !15
  %93 = getelementptr inbounds i8, i8* %91, i64 16
  %94 = bitcast i8* %93 to <16 x i8>*
  store <16 x i8> %90, <16 x i8>* %94, align 16, !tbaa !15
  %95 = or i64 %87, 32
  %96 = add <16 x i8> %88, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %97 = add <16 x i8> %88, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %98 = getelementptr inbounds i8, i8* %83, i64 %95
  %99 = bitcast i8* %98 to <16 x i8>*
  store <16 x i8> %96, <16 x i8>* %99, align 16, !tbaa !15
  %100 = getelementptr inbounds i8, i8* %98, i64 16
  %101 = bitcast i8* %100 to <16 x i8>*
  store <16 x i8> %97, <16 x i8>* %101, align 16, !tbaa !15
  %102 = or i64 %87, 64
  %103 = add <16 x i8> %88, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %104 = add <16 x i8> %88, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %105 = getelementptr inbounds i8, i8* %83, i64 %102
  %106 = bitcast i8* %105 to <16 x i8>*
  store <16 x i8> %103, <16 x i8>* %106, align 16, !tbaa !15
  %107 = getelementptr inbounds i8, i8* %105, i64 16
  %108 = bitcast i8* %107 to <16 x i8>*
  store <16 x i8> %104, <16 x i8>* %108, align 16, !tbaa !15
  %109 = or i64 %87, 96
  %110 = add <16 x i8> %88, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %111 = add <16 x i8> %88, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %112 = getelementptr inbounds i8, i8* %83, i64 %109
  %113 = bitcast i8* %112 to <16 x i8>*
  store <16 x i8> %110, <16 x i8>* %113, align 16, !tbaa !15
  %114 = getelementptr inbounds i8, i8* %112, i64 16
  %115 = bitcast i8* %114 to <16 x i8>*
  store <16 x i8> %111, <16 x i8>* %115, align 16, !tbaa !15
  %116 = add nuw i64 %87, 128
  %117 = xor <16 x i8> %88, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %118 = add i64 %89, 4
  %119 = icmp eq i64 %118, %51
  br i1 %119, label %120, label %86, !llvm.loop !16

120:                                              ; preds = %86, %85
  %121 = phi i64 [ 0, %85 ], [ %116, %86 ]
  %122 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %85 ], [ %117, %86 ]
  br i1 %52, label %136, label %123

123:                                              ; preds = %120, %123
  %124 = phi i64 [ %132, %123 ], [ %121, %120 ]
  %125 = phi <16 x i8> [ %133, %123 ], [ %122, %120 ]
  %126 = phi i64 [ %134, %123 ], [ 0, %120 ]
  %127 = add <16 x i8> %125, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %128 = getelementptr inbounds i8, i8* %83, i64 %124
  %129 = bitcast i8* %128 to <16 x i8>*
  store <16 x i8> %125, <16 x i8>* %129, align 16, !tbaa !15
  %130 = getelementptr inbounds i8, i8* %128, i64 16
  %131 = bitcast i8* %130 to <16 x i8>*
  store <16 x i8> %127, <16 x i8>* %131, align 16, !tbaa !15
  %132 = add nuw i64 %124, 32
  %133 = add <16 x i8> %125, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %134 = add i64 %126, 1
  %135 = icmp eq i64 %134, %49
  br i1 %135, label %136, label %123, !llvm.loop !18

136:                                              ; preds = %123, %120
  br i1 %53, label %139, label %137

137:                                              ; preds = %84, %136
  %138 = phi i64 [ 0, %84 ], [ %48, %136 ]
  br label %140

139:                                              ; preds = %140, %136, %76
  br i1 %39, label %170, label %160

140:                                              ; preds = %137, %140
  %141 = phi i64 [ %144, %140 ], [ %138, %137 ]
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds i8, i8* %83, i64 %141
  store i8 %142, i8* %143, align 1, !tbaa !15
  %144 = add nuw nsw i64 %141, 1
  %145 = icmp eq i64 %144, %40
  br i1 %145, label %139, label %140, !llvm.loop !19

146:                                              ; preds = %189, %184
  %147 = phi i64 [ 0, %184 ], [ %207, %189 ]
  %148 = icmp eq i64 %185, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %146
  %150 = add nsw i64 %147, %178
  %151 = icmp slt i64 %150, %173
  %152 = select i1 %151, i64 0, i64 %173
  %153 = sub i64 %150, %152
  %154 = getelementptr inbounds i8, i8* %82, i64 %153
  %155 = load i8, i8* %154, align 1, !tbaa !15
  %156 = getelementptr inbounds i8, i8* %83, i64 %147
  store i8 %155, i8* %156, align 1, !tbaa !15
  br label %157

157:                                              ; preds = %146, %149
  %158 = icmp sgt i64 %173, 2
  %159 = add i64 %171, 1
  br i1 %158, label %170, label %160, !llvm.loop !21

160:                                              ; preds = %182, %157, %139
  %161 = add nsw i64 %79, %36
  %162 = add nsw i64 %161, -1
  %163 = getelementptr inbounds i8, i8* %83, i64 1
  %164 = getelementptr inbounds i64, i64* %81, i64 1
  %165 = getelementptr inbounds i8, i8* %82, i64 1
  %166 = getelementptr i8, i8* %83, i64 2
  %167 = load i8, i8* %83, align 16, !tbaa !15
  %168 = getelementptr inbounds i8, i8* %83, i64 2
  %169 = getelementptr inbounds i64, i64* %81, i64 2
  br label %210

170:                                              ; preds = %139, %157
  %171 = phi i64 [ %159, %157 ], [ 0, %139 ]
  %172 = phi i64 [ %179, %157 ], [ %79, %139 ]
  %173 = phi i64 [ %175, %157 ], [ %7, %139 ]
  %174 = add i64 %171, 1
  %175 = add nsw i64 %173, -1
  %176 = getelementptr inbounds i64, i64* %9, i64 %175
  %177 = load i64, i64* %176, align 8, !tbaa !9
  %178 = sdiv i64 %172, %177
  %179 = srem i64 %172, %177
  %180 = getelementptr inbounds i64, i64* %81, i64 %175
  store i64 %178, i64* %180, align 8, !tbaa !9
  br i1 %10, label %181, label %182

181:                                              ; preds = %170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %82, i8* nonnull align 16 %83, i64 %40, i1 false), !tbaa !15
  br label %182

182:                                              ; preds = %181, %170
  %183 = icmp sgt i64 %173, 0
  br i1 %183, label %184, label %160

184:                                              ; preds = %182
  %185 = and i64 %173, 1
  %186 = icmp eq i64 %7, %174
  br i1 %186, label %146, label %187

187:                                              ; preds = %184
  %188 = and i64 %173, -2
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi i64 [ 0, %187 ], [ %207, %189 ]
  %191 = phi i64 [ 0, %187 ], [ %208, %189 ]
  %192 = add nsw i64 %190, %178
  %193 = icmp slt i64 %192, %173
  %194 = select i1 %193, i64 0, i64 %173
  %195 = sub i64 %192, %194
  %196 = getelementptr inbounds i8, i8* %82, i64 %195
  %197 = load i8, i8* %196, align 1, !tbaa !15
  %198 = getelementptr inbounds i8, i8* %83, i64 %190
  store i8 %197, i8* %198, align 2, !tbaa !15
  %199 = or i64 %190, 1
  %200 = add nsw i64 %199, %178
  %201 = icmp slt i64 %200, %173
  %202 = select i1 %201, i64 0, i64 %173
  %203 = sub i64 %200, %202
  %204 = getelementptr inbounds i8, i8* %82, i64 %203
  %205 = load i8, i8* %204, align 1, !tbaa !15
  %206 = getelementptr inbounds i8, i8* %83, i64 %199
  store i8 %205, i8* %206, align 1, !tbaa !15
  %207 = add nuw nsw i64 %190, 2
  %208 = add i64 %191, 2
  %209 = icmp eq i64 %208, %188
  br i1 %209, label %146, label %189, !llvm.loop !22

210:                                              ; preds = %274, %160
  %211 = phi i8 [ %167, %160 ], [ %275, %274 ]
  %212 = phi i64 [ %78, %160 ], [ %259, %274 ]
  %213 = phi i64 [ %79, %160 ], [ %276, %274 ]
  %214 = phi i64 [ %77, %160 ], [ %260, %274 ]
  %215 = icmp sgt i8 %211, 0
  br i1 %215, label %216, label %258

216:                                              ; preds = %210
  br i1 %39, label %217, label %218

217:                                              ; preds = %216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %165, i8* nonnull align 1 %163, i64 %42, i1 false), !tbaa !15
  br label %218

218:                                              ; preds = %217, %216
  %219 = zext i8 %211 to i64
  %220 = getelementptr inbounds i8, i8* %82, i64 %219
  %221 = load i8, i8* %220, align 1, !tbaa !15
  %222 = icmp sgt i8 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %252, %218
  %224 = phi i64 [ 1, %218 ], [ %253, %252 ]
  %225 = and i64 %213, 1
  %226 = icmp eq i64 %225, 0
  %227 = sub nsw i64 0, %224
  %228 = select i1 %226, i64 %224, i64 %227
  %229 = add i64 %228, %212
  %230 = icmp sgt i64 %224, %214
  %231 = select i1 %230, i64 %224, i64 %214
  br label %258

232:                                              ; preds = %218, %252
  %233 = phi i8 [ %256, %252 ], [ %221, %218 ]
  %234 = phi i8* [ %255, %252 ], [ %220, %218 ]
  %235 = phi i64 [ %254, %252 ], [ %219, %218 ]
  %236 = phi i8 [ %233, %252 ], [ %211, %218 ]
  %237 = phi i64 [ %253, %252 ], [ 1, %218 ]
  store i8 %236, i8* %234, align 1, !tbaa !15
  %238 = icmp sgt i8 %236, 2
  br i1 %238, label %239, label %252

239:                                              ; preds = %232, %239
  %240 = phi i64 [ %247, %239 ], [ 1, %232 ]
  %241 = phi i64 [ %242, %239 ], [ %235, %232 ]
  %242 = add nsw i64 %241, -1
  %243 = getelementptr inbounds i8, i8* %82, i64 %242
  %244 = load i8, i8* %243, align 1, !tbaa !15
  %245 = getelementptr inbounds i8, i8* %82, i64 %240
  %246 = load i8, i8* %245, align 1, !tbaa !15
  store i8 %246, i8* %243, align 1, !tbaa !15
  store i8 %244, i8* %245, align 1, !tbaa !15
  %247 = add nuw nsw i64 %240, 1
  %248 = add nuw nsw i64 %240, 3
  %249 = icmp slt i64 %248, %241
  %250 = icmp ult i64 %240, 15
  %251 = and i1 %250, %249
  br i1 %251, label %239, label %252, !llvm.loop !23

252:                                              ; preds = %239, %232
  %253 = add nuw nsw i64 %237, 1
  %254 = sext i8 %233 to i64
  %255 = getelementptr inbounds i8, i8* %82, i64 %254
  %256 = load i8, i8* %255, align 1, !tbaa !15
  %257 = icmp sgt i8 %256, 0
  br i1 %257, label %232, label %223, !llvm.loop !24

258:                                              ; preds = %223, %210
  %259 = phi i64 [ %229, %223 ], [ %212, %210 ]
  %260 = phi i64 [ %231, %223 ], [ %214, %210 ]
  %261 = icmp slt i64 %213, %162
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  tail call void @llvm.stackrestore(i8* %80)
  %263 = icmp slt i64 %161, %33
  br i1 %263, label %76, label %72, !llvm.loop !25

264:                                              ; preds = %258
  %265 = load i8, i8* %163, align 1, !tbaa !15
  store i8 %211, i8* %163, align 1, !tbaa !15
  store i8 %265, i8* %83, align 16, !tbaa !15
  %266 = load i64, i64* %164, align 8, !tbaa !9
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %164, align 8, !tbaa !9
  %268 = icmp slt i64 %266, 1
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  store i64 0, i64* %164, align 8, !tbaa !9
  store i8 %211, i8* %83, align 16, !tbaa !15
  %270 = load i8, i8* %166, align 2, !tbaa !15
  store i8 %270, i8* %163, align 1, !tbaa !15
  store i8 %265, i8* %168, align 2, !tbaa !15
  %271 = load i64, i64* %169, align 16, !tbaa !9
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %169, align 16, !tbaa !9
  %273 = icmp sgt i64 %271, 1
  br i1 %273, label %277, label %274, !llvm.loop !26

274:                                              ; preds = %277, %269, %264
  %275 = phi i8 [ %265, %264 ], [ %211, %269 ], [ %281, %277 ]
  %276 = add nsw i64 %213, 1
  br label %210

277:                                              ; preds = %269, %277
  %278 = phi i64* [ %284, %277 ], [ %169, %269 ]
  %279 = phi i64 [ %282, %277 ], [ 2, %269 ]
  %280 = phi i8 [ %281, %277 ], [ %211, %269 ]
  %281 = load i8, i8* %163, align 1, !tbaa !15
  store i64 0, i64* %278, align 8, !tbaa !9
  store i8 %281, i8* %83, align 16, !tbaa !15
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %163, i8* noundef nonnull align 2 dereferenceable(1) %166, i64 %279, i1 false), !tbaa !15
  %282 = add nuw nsw i64 %279, 1
  %283 = getelementptr inbounds i8, i8* %83, i64 %282
  store i8 %280, i8* %283, align 1, !tbaa !15
  %284 = getelementptr inbounds i64, i64* %81, i64 %282
  %285 = load i64, i64* %284, align 8, !tbaa !9
  %286 = add nsw i64 %285, 1
  store i64 %286, i64* %284, align 8, !tbaa !9
  %287 = icmp sgt i64 %285, %279
  br i1 %287, label %277, label %274, !llvm.loop !26
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !14, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !14, !20, !17}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
