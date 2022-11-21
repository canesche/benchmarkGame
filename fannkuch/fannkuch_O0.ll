; ModuleID = 'fannkuch/fannkuch.c'
source_filename = "fannkuch/fannkuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"%jd\0APfannkuchen(%jd) = %jd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8, align 1
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i64, align 8
  %35 = alloca i8, align 1
  %36 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @atoi(i8* noundef %39) #4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %7, align 8
  %45 = alloca i64, i64 %43, align 16
  store i64 %43, i64* %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 1, i64* %46, align 16
  store i64 0, i64* %9, align 8
  br label %47

47:                                               ; preds = %52, %2
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, 1
  %56 = getelementptr inbounds i64, i64* %45, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = mul nsw i64 %53, %57
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i64, i64* %45, i64 %59
  store i64 %58, i64* %60, align 8
  br label %47, !llvm.loop !6

61:                                               ; preds = %47
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %45, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %45, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 12
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 12
  %71 = sext i32 %70 to i64
  %72 = sdiv i64 %64, %71
  store i64 %72, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %73

73:                                               ; preds = %320, %61
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i64, i64* %45, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %324

79:                                               ; preds = %73
  %80 = load i64, i64* %6, align 8
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %14, align 8
  %82 = alloca i64, i64 %80, align 16
  store i64 %80, i64* %15, align 8
  %83 = load i64, i64* %6, align 8
  %84 = alloca i8, i64 %83, align 16
  store i64 %83, i64* %16, align 8
  %85 = load i64, i64* %6, align 8
  %86 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %17, align 8
  %87 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 0, i64* %87, align 16
  store i64 0, i64* %18, align 8
  br label %88

88:                                               ; preds = %97, %79
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i64, i64* %18, align 8
  %94 = trunc i64 %93 to i8
  %95 = load i64, i64* %18, align 8
  %96 = getelementptr inbounds i8, i8* %86, i64 %95
  store i8 %94, i8* %96, align 1
  br label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %18, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %18, align 8
  br label %88, !llvm.loop !8

100:                                              ; preds = %88
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %101, 1
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %13, align 8
  store i64 %103, i64* %20, align 8
  br label %104

104:                                              ; preds = %171, %100
  %105 = load i64, i64* %19, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %174

107:                                              ; preds = %104
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds i64, i64* %45, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = sdiv i64 %108, %111
  store i64 %112, i64* %21, align 8
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %19, align 8
  %115 = getelementptr inbounds i64, i64* %45, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = srem i64 %113, %116
  store i64 %117, i64* %20, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %19, align 8
  %120 = getelementptr inbounds i64, i64* %82, i64 %119
  store i64 %118, i64* %120, align 8
  store i64 0, i64* %22, align 8
  br label %121

121:                                              ; preds = %131, %107
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* %6, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i64, i64* %22, align 8
  %127 = getelementptr inbounds i8, i8* %86, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = load i64, i64* %22, align 8
  %130 = getelementptr inbounds i8, i8* %84, i64 %129
  store i8 %128, i8* %130, align 1
  br label %131

131:                                              ; preds = %125
  %132 = load i64, i64* %22, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %22, align 8
  br label %121, !llvm.loop !9

134:                                              ; preds = %121
  store i64 0, i64* %23, align 8
  br label %135

135:                                              ; preds = %167, %134
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %19, align 8
  %138 = icmp sle i64 %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %135
  %140 = load i64, i64* %23, align 8
  %141 = load i64, i64* %21, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i64, i64* %19, align 8
  %144 = icmp sle i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %21, align 8
  %148 = add nsw i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %84, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  br label %162

152:                                              ; preds = %139
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %21, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* %19, align 8
  %157 = sub nsw i64 %155, %156
  %158 = sub nsw i64 %157, 1
  %159 = getelementptr inbounds i8, i8* %84, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  br label %162

162:                                              ; preds = %152, %145
  %163 = phi i32 [ %151, %145 ], [ %161, %152 ]
  %164 = trunc i32 %163 to i8
  %165 = load i64, i64* %23, align 8
  %166 = getelementptr inbounds i8, i8* %86, i64 %165
  store i8 %164, i8* %166, align 1
  br label %167

167:                                              ; preds = %162
  %168 = load i64, i64* %23, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %23, align 8
  br label %135, !llvm.loop !10

170:                                              ; preds = %135
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %19, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %19, align 8
  br label %104, !llvm.loop !11

174:                                              ; preds = %104
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* %10, align 8
  %177 = add nsw i64 %175, %176
  %178 = sub nsw i64 %177, 1
  store i64 %178, i64* %24, align 8
  %179 = load i64, i64* %13, align 8
  store i64 %179, i64* %25, align 8
  br label %180

180:                                              ; preds = %315, %174
  %181 = getelementptr inbounds i8, i8* %86, i64 0
  %182 = load i8, i8* %181, align 16
  %183 = sext i8 %182 to i32
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %270

185:                                              ; preds = %180
  store i64 0, i64* %26, align 8
  br label %186

186:                                              ; preds = %191, %185
  %187 = load i64, i64* %26, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %26, align 8
  %189 = load i64, i64* %6, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i64, i64* %26, align 8
  %193 = getelementptr inbounds i8, i8* %86, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = load i64, i64* %26, align 8
  %196 = getelementptr inbounds i8, i8* %84, i64 %195
  store i8 %194, i8* %196, align 1
  br label %186, !llvm.loop !12

197:                                              ; preds = %186
  store i64 1, i64* %27, align 8
  %198 = getelementptr inbounds i8, i8* %86, i64 0
  %199 = load i8, i8* %198, align 16
  %200 = sext i8 %199 to i64
  store i64 %200, i64* %28, align 8
  br label %201

201:                                              ; preds = %248, %197
  %202 = load i64, i64* %28, align 8
  %203 = getelementptr inbounds i8, i8* %84, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %251

207:                                              ; preds = %201
  %208 = load i64, i64* %28, align 8
  %209 = getelementptr inbounds i8, i8* %84, i64 %208
  %210 = load i8, i8* %209, align 1
  store i8 %210, i8* %29, align 1
  %211 = load i64, i64* %28, align 8
  %212 = trunc i64 %211 to i8
  %213 = load i64, i64* %28, align 8
  %214 = getelementptr inbounds i8, i8* %84, i64 %213
  store i8 %212, i8* %214, align 1
  %215 = load i64, i64* %28, align 8
  %216 = icmp sgt i64 %215, 2
  br i1 %216, label %217, label %245

217:                                              ; preds = %207
  store i64 1, i64* %30, align 8
  %218 = load i64, i64* %28, align 8
  %219 = sub nsw i64 %218, 1
  store i64 %219, i64* %31, align 8
  br label %220

220:                                              ; preds = %242, %217
  %221 = load i64, i64* %31, align 8
  %222 = getelementptr inbounds i8, i8* %84, i64 %221
  %223 = load i8, i8* %222, align 1
  store i8 %223, i8* %32, align 1
  %224 = load i64, i64* %30, align 8
  %225 = getelementptr inbounds i8, i8* %84, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = load i64, i64* %31, align 8
  %228 = getelementptr inbounds i8, i8* %84, i64 %227
  store i8 %226, i8* %228, align 1
  %229 = load i8, i8* %32, align 1
  %230 = load i64, i64* %30, align 8
  %231 = getelementptr inbounds i8, i8* %84, i64 %230
  store i8 %229, i8* %231, align 1
  br label %232

232:                                              ; preds = %220
  %233 = load i64, i64* %30, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %30, align 8
  %235 = add nsw i64 %233, 3
  %236 = load i64, i64* %31, align 8
  %237 = add nsw i64 %236, -1
  store i64 %237, i64* %31, align 8
  %238 = icmp sle i64 %235, %236
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load i64, i64* %30, align 8
  %241 = icmp slt i64 %240, 16
  br label %242

242:                                              ; preds = %239, %232
  %243 = phi i1 [ false, %232 ], [ %241, %239 ]
  br i1 %243, label %220, label %244, !llvm.loop !13

244:                                              ; preds = %242
  br label %245

245:                                              ; preds = %244, %207
  %246 = load i8, i8* %29, align 1
  %247 = sext i8 %246 to i64
  store i64 %247, i64* %28, align 8
  br label %248

248:                                              ; preds = %245
  %249 = load i64, i64* %27, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %27, align 8
  br label %201, !llvm.loop !14

251:                                              ; preds = %201
  %252 = load i64, i64* %25, align 8
  %253 = srem i64 %252, 2
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load i64, i64* %27, align 8
  %257 = load i64, i64* %12, align 8
  %258 = add nsw i64 %257, %256
  store i64 %258, i64* %12, align 8
  br label %263

259:                                              ; preds = %251
  %260 = load i64, i64* %27, align 8
  %261 = load i64, i64* %12, align 8
  %262 = sub nsw i64 %261, %260
  store i64 %262, i64* %12, align 8
  br label %263

263:                                              ; preds = %259, %255
  %264 = load i64, i64* %27, align 8
  %265 = load i64, i64* %11, align 8
  %266 = icmp sgt i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = load i64, i64* %27, align 8
  store i64 %268, i64* %11, align 8
  br label %269

269:                                              ; preds = %267, %263
  br label %270

270:                                              ; preds = %269, %180
  %271 = load i64, i64* %25, align 8
  %272 = load i64, i64* %24, align 8
  %273 = icmp sge i64 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  br label %318

275:                                              ; preds = %270
  %276 = getelementptr inbounds i8, i8* %86, i64 1
  %277 = load i8, i8* %276, align 1
  store i8 %277, i8* %33, align 1
  %278 = getelementptr inbounds i8, i8* %86, i64 0
  %279 = load i8, i8* %278, align 16
  %280 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %279, i8* %280, align 1
  %281 = load i8, i8* %33, align 1
  %282 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %281, i8* %282, align 16
  store i64 1, i64* %34, align 8
  br label %283

283:                                              ; preds = %309, %275
  %284 = load i64, i64* %34, align 8
  %285 = getelementptr inbounds i64, i64* %82, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %286, 1
  store i64 %287, i64* %285, align 8
  %288 = load i64, i64* %34, align 8
  %289 = icmp sgt i64 %287, %288
  br i1 %289, label %290, label %314

290:                                              ; preds = %283
  %291 = load i64, i64* %34, align 8
  %292 = add nsw i64 %291, 1
  store i64 %292, i64* %34, align 8
  %293 = getelementptr inbounds i64, i64* %82, i64 %291
  store i64 0, i64* %293, align 8
  %294 = getelementptr inbounds i8, i8* %86, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %295, i8* %296, align 16
  store i8 %295, i8* %35, align 1
  store i64 0, i64* %36, align 8
  br label %297

297:                                              ; preds = %302, %290
  %298 = load i64, i64* %36, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %36, align 8
  %300 = load i64, i64* %34, align 8
  %301 = icmp slt i64 %299, %300
  br i1 %301, label %302, label %309

302:                                              ; preds = %297
  %303 = load i64, i64* %36, align 8
  %304 = add nsw i64 %303, 1
  %305 = getelementptr inbounds i8, i8* %86, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = load i64, i64* %36, align 8
  %308 = getelementptr inbounds i8, i8* %86, i64 %307
  store i8 %306, i8* %308, align 1
  br label %297, !llvm.loop !15

309:                                              ; preds = %297
  %310 = load i8, i8* %33, align 1
  %311 = load i64, i64* %34, align 8
  %312 = getelementptr inbounds i8, i8* %86, i64 %311
  store i8 %310, i8* %312, align 1
  %313 = load i8, i8* %35, align 1
  store i8 %313, i8* %33, align 1
  br label %283, !llvm.loop !16

314:                                              ; preds = %283
  br label %315

315:                                              ; preds = %314
  %316 = load i64, i64* %25, align 8
  %317 = add nsw i64 %316, 1
  store i64 %317, i64* %25, align 8
  br label %180

318:                                              ; preds = %274
  %319 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %319)
  br label %320

320:                                              ; preds = %318
  %321 = load i64, i64* %10, align 8
  %322 = load i64, i64* %13, align 8
  %323 = add nsw i64 %322, %321
  store i64 %323, i64* %13, align 8
  br label %73, !llvm.loop !17

324:                                              ; preds = %73
  %325 = load i64, i64* %12, align 8
  %326 = load i64, i64* %6, align 8
  %327 = load i64, i64* %11, align 8
  %328 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 noundef %325, i64 noundef %326, i64 noundef %327)
  store i32 0, i32* %3, align 4
  %329 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %329)
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

declare i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

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
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
