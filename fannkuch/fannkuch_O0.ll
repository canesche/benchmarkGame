; ModuleID = 'fannkuch/fannkuch.c'
source_filename = "fannkuch/fannkuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"%jd\0APfannkuchen(%jd) = %jd\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
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
  %27 = alloca i8, align 1
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i64, align 8
  %33 = alloca i8, align 1
  %34 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 11, i64* %6, align 8
  %35 = call i64 @clock() #4
  store i64 %35, i64* %7, align 8
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %9, align 8
  %37 = alloca i64, i64 12, align 16
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 1, i64* %38, align 16
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %43, %2
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %10, align 8
  %42 = icmp sle i64 %41, 11
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub nsw i64 %45, 1
  %47 = getelementptr inbounds i64, i64* %37, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = mul nsw i64 %44, %48
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %37, i64 %50
  store i64 %49, i64* %51, align 8
  br label %39, !llvm.loop !6

52:                                               ; preds = %39
  %53 = getelementptr inbounds i64, i64* %37, i64 11
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %37, i64 11
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 12
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 12
  %60 = sext i32 %59 to i64
  %61 = sdiv i64 %54, %60
  store i64 %61, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %62

62:                                               ; preds = %300, %52
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i64, i64* %37, i64 11
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %304

67:                                               ; preds = %62
  %68 = call i8* @llvm.stacksave()
  store i8* %68, i8** %15, align 8
  %69 = alloca i64, i64 11, align 16
  %70 = alloca i8, i64 11, align 16
  %71 = alloca i8, i64 11, align 16
  %72 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 0, i64* %72, align 16
  store i64 0, i64* %16, align 8
  br label %73

73:                                               ; preds = %81, %67
  %74 = load i64, i64* %16, align 8
  %75 = icmp slt i64 %74, 11
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i64, i64* %16, align 8
  %78 = trunc i64 %77 to i8
  %79 = load i64, i64* %16, align 8
  %80 = getelementptr inbounds i8, i8* %71, i64 %79
  store i8 %78, i8* %80, align 1
  br label %81

81:                                               ; preds = %76
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %16, align 8
  br label %73, !llvm.loop !8

84:                                               ; preds = %73
  store i64 10, i64* %17, align 8
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %18, align 8
  br label %86

86:                                               ; preds = %152, %84
  %87 = load i64, i64* %17, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %155

89:                                               ; preds = %86
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds i64, i64* %37, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = sdiv i64 %90, %93
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %17, align 8
  %97 = getelementptr inbounds i64, i64* %37, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = srem i64 %95, %98
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %17, align 8
  %102 = getelementptr inbounds i64, i64* %69, i64 %101
  store i64 %100, i64* %102, align 8
  store i64 0, i64* %20, align 8
  br label %103

103:                                              ; preds = %112, %89
  %104 = load i64, i64* %20, align 8
  %105 = icmp slt i64 %104, 11
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i64, i64* %20, align 8
  %108 = getelementptr inbounds i8, i8* %71, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load i64, i64* %20, align 8
  %111 = getelementptr inbounds i8, i8* %70, i64 %110
  store i8 %109, i8* %111, align 1
  br label %112

112:                                              ; preds = %106
  %113 = load i64, i64* %20, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %20, align 8
  br label %103, !llvm.loop !9

115:                                              ; preds = %103
  store i64 0, i64* %21, align 8
  br label %116

116:                                              ; preds = %148, %115
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %17, align 8
  %119 = icmp sle i64 %117, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %116
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %19, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i64, i64* %17, align 8
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i64, i64* %21, align 8
  %128 = load i64, i64* %19, align 8
  %129 = add nsw i64 %127, %128
  %130 = getelementptr inbounds i8, i8* %70, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  br label %143

133:                                              ; preds = %120
  %134 = load i64, i64* %21, align 8
  %135 = load i64, i64* %19, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64, i64* %17, align 8
  %138 = sub nsw i64 %136, %137
  %139 = sub nsw i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %70, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  br label %143

143:                                              ; preds = %133, %126
  %144 = phi i32 [ %132, %126 ], [ %142, %133 ]
  %145 = trunc i32 %144 to i8
  %146 = load i64, i64* %21, align 8
  %147 = getelementptr inbounds i8, i8* %71, i64 %146
  store i8 %145, i8* %147, align 1
  br label %148

148:                                              ; preds = %143
  %149 = load i64, i64* %21, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %21, align 8
  br label %116, !llvm.loop !10

151:                                              ; preds = %116
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %17, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %17, align 8
  br label %86, !llvm.loop !11

155:                                              ; preds = %86
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %11, align 8
  %158 = add nsw i64 %156, %157
  %159 = sub nsw i64 %158, 1
  store i64 %159, i64* %22, align 8
  %160 = load i64, i64* %14, align 8
  store i64 %160, i64* %23, align 8
  br label %161

161:                                              ; preds = %295, %155
  %162 = getelementptr inbounds i8, i8* %71, i64 0
  %163 = load i8, i8* %162, align 16
  %164 = sext i8 %163 to i32
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %250

166:                                              ; preds = %161
  store i64 0, i64* %24, align 8
  br label %167

167:                                              ; preds = %171, %166
  %168 = load i64, i64* %24, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %24, align 8
  %170 = icmp slt i64 %169, 11
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i64, i64* %24, align 8
  %173 = getelementptr inbounds i8, i8* %71, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i64, i64* %24, align 8
  %176 = getelementptr inbounds i8, i8* %70, i64 %175
  store i8 %174, i8* %176, align 1
  br label %167, !llvm.loop !12

177:                                              ; preds = %167
  store i64 1, i64* %25, align 8
  %178 = getelementptr inbounds i8, i8* %71, i64 0
  %179 = load i8, i8* %178, align 16
  %180 = sext i8 %179 to i64
  store i64 %180, i64* %26, align 8
  br label %181

181:                                              ; preds = %228, %177
  %182 = load i64, i64* %26, align 8
  %183 = getelementptr inbounds i8, i8* %70, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %231

187:                                              ; preds = %181
  %188 = load i64, i64* %26, align 8
  %189 = getelementptr inbounds i8, i8* %70, i64 %188
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %27, align 1
  %191 = load i64, i64* %26, align 8
  %192 = trunc i64 %191 to i8
  %193 = load i64, i64* %26, align 8
  %194 = getelementptr inbounds i8, i8* %70, i64 %193
  store i8 %192, i8* %194, align 1
  %195 = load i64, i64* %26, align 8
  %196 = icmp sgt i64 %195, 2
  br i1 %196, label %197, label %225

197:                                              ; preds = %187
  store i64 1, i64* %28, align 8
  %198 = load i64, i64* %26, align 8
  %199 = sub nsw i64 %198, 1
  store i64 %199, i64* %29, align 8
  br label %200

200:                                              ; preds = %222, %197
  %201 = load i64, i64* %29, align 8
  %202 = getelementptr inbounds i8, i8* %70, i64 %201
  %203 = load i8, i8* %202, align 1
  store i8 %203, i8* %30, align 1
  %204 = load i64, i64* %28, align 8
  %205 = getelementptr inbounds i8, i8* %70, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = load i64, i64* %29, align 8
  %208 = getelementptr inbounds i8, i8* %70, i64 %207
  store i8 %206, i8* %208, align 1
  %209 = load i8, i8* %30, align 1
  %210 = load i64, i64* %28, align 8
  %211 = getelementptr inbounds i8, i8* %70, i64 %210
  store i8 %209, i8* %211, align 1
  br label %212

212:                                              ; preds = %200
  %213 = load i64, i64* %28, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %28, align 8
  %215 = add nsw i64 %213, 3
  %216 = load i64, i64* %29, align 8
  %217 = add nsw i64 %216, -1
  store i64 %217, i64* %29, align 8
  %218 = icmp sle i64 %215, %216
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load i64, i64* %28, align 8
  %221 = icmp slt i64 %220, 16
  br label %222

222:                                              ; preds = %219, %212
  %223 = phi i1 [ false, %212 ], [ %221, %219 ]
  br i1 %223, label %200, label %224, !llvm.loop !13

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224, %187
  %226 = load i8, i8* %27, align 1
  %227 = sext i8 %226 to i64
  store i64 %227, i64* %26, align 8
  br label %228

228:                                              ; preds = %225
  %229 = load i64, i64* %25, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %25, align 8
  br label %181, !llvm.loop !14

231:                                              ; preds = %181
  %232 = load i64, i64* %23, align 8
  %233 = srem i64 %232, 2
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i64, i64* %25, align 8
  %237 = load i64, i64* %13, align 8
  %238 = add nsw i64 %237, %236
  store i64 %238, i64* %13, align 8
  br label %243

239:                                              ; preds = %231
  %240 = load i64, i64* %25, align 8
  %241 = load i64, i64* %13, align 8
  %242 = sub nsw i64 %241, %240
  store i64 %242, i64* %13, align 8
  br label %243

243:                                              ; preds = %239, %235
  %244 = load i64, i64* %25, align 8
  %245 = load i64, i64* %12, align 8
  %246 = icmp sgt i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = load i64, i64* %25, align 8
  store i64 %248, i64* %12, align 8
  br label %249

249:                                              ; preds = %247, %243
  br label %250

250:                                              ; preds = %249, %161
  %251 = load i64, i64* %23, align 8
  %252 = load i64, i64* %22, align 8
  %253 = icmp sge i64 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  br label %298

255:                                              ; preds = %250
  %256 = getelementptr inbounds i8, i8* %71, i64 1
  %257 = load i8, i8* %256, align 1
  store i8 %257, i8* %31, align 1
  %258 = getelementptr inbounds i8, i8* %71, i64 0
  %259 = load i8, i8* %258, align 16
  %260 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %259, i8* %260, align 1
  %261 = load i8, i8* %31, align 1
  %262 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %261, i8* %262, align 16
  store i64 1, i64* %32, align 8
  br label %263

263:                                              ; preds = %289, %255
  %264 = load i64, i64* %32, align 8
  %265 = getelementptr inbounds i64, i64* %69, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %265, align 8
  %268 = load i64, i64* %32, align 8
  %269 = icmp sgt i64 %267, %268
  br i1 %269, label %270, label %294

270:                                              ; preds = %263
  %271 = load i64, i64* %32, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %32, align 8
  %273 = getelementptr inbounds i64, i64* %69, i64 %271
  store i64 0, i64* %273, align 8
  %274 = getelementptr inbounds i8, i8* %71, i64 1
  %275 = load i8, i8* %274, align 1
  %276 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %275, i8* %276, align 16
  store i8 %275, i8* %33, align 1
  store i64 0, i64* %34, align 8
  br label %277

277:                                              ; preds = %282, %270
  %278 = load i64, i64* %34, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %34, align 8
  %280 = load i64, i64* %32, align 8
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = load i64, i64* %34, align 8
  %284 = add nsw i64 %283, 1
  %285 = getelementptr inbounds i8, i8* %71, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = load i64, i64* %34, align 8
  %288 = getelementptr inbounds i8, i8* %71, i64 %287
  store i8 %286, i8* %288, align 1
  br label %277, !llvm.loop !15

289:                                              ; preds = %277
  %290 = load i8, i8* %31, align 1
  %291 = load i64, i64* %32, align 8
  %292 = getelementptr inbounds i8, i8* %71, i64 %291
  store i8 %290, i8* %292, align 1
  %293 = load i8, i8* %33, align 1
  store i8 %293, i8* %31, align 1
  br label %263, !llvm.loop !16

294:                                              ; preds = %263
  br label %295

295:                                              ; preds = %294
  %296 = load i64, i64* %23, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %23, align 8
  br label %161

298:                                              ; preds = %254
  %299 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %299)
  br label %300

300:                                              ; preds = %298
  %301 = load i64, i64* %11, align 8
  %302 = load i64, i64* %14, align 8
  %303 = add nsw i64 %302, %301
  store i64 %303, i64* %14, align 8
  br label %62, !llvm.loop !17

304:                                              ; preds = %62
  %305 = load i64, i64* %13, align 8
  %306 = load i64, i64* %12, align 8
  %307 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 noundef %305, i64 noundef 11, i64 noundef %306)
  %308 = call i64 @clock() #4
  %309 = load i64, i64* %7, align 8
  %310 = sub nsw i64 %308, %309
  %311 = sitofp i64 %310 to double
  %312 = fdiv double %311, 1.000000e+06
  store double %312, double* %8, align 8
  %313 = load double, double* %8, align 8
  %314 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double noundef %313)
  store i32 0, i32* %3, align 4
  %315 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %315)
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

declare i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
