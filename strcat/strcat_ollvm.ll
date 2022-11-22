; ModuleID = 'strcat/strcat.c'
source_filename = "strcat/strcat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"calloc strbuf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc strbuf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %buflen.0.reload.reg2mem = alloca i32, align 4
  %strbuf.0.reload.reg2mem = alloca i8*, align 8
  %strend.0.reload.reg2mem = alloca i8*, align 8
  %i.0.reload.reg2mem = alloca i32, align 4
  %call9.reg2mem = alloca i8*, align 8
  %mul.reg2mem = alloca i32, align 4
  %call1.reg2mem = alloca i8*, align 8
  %call.reg2mem = alloca i64, align 8
  %call = tail call i64 @clock() #5
  store i64 %call, i64* %call.reg2mem, align 8
  %call1 = tail call noalias i8* @calloc(i64 1, i64 1) #5
  store i8* %call1, i8** %call1.reg2mem, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %strend.1.reg2mem.0 = phi i8* [ undef, %entry ], [ %strend.1.reg2mem.0.be, %loopEntry.backedge ]
  %strbuf.1.reg2mem.0 = phi i8* [ undef, %entry ], [ %strbuf.1.reg2mem.0.be, %loopEntry.backedge ]
  %buflen.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %buflen.1.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %strend.0.reg2mem.0 = phi i8* [ undef, %entry ], [ %strend.0.reg2mem.0.be, %loopEntry.backedge ]
  %strbuf.0.reg2mem.0 = phi i8* [ undef, %entry ], [ %strbuf.0.reg2mem.0.be, %loopEntry.backedge ]
  %buflen.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %buflen.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 1191884239, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 1191884239, label %first
    i32 -740707281, label %if.then
    i32 1184222465, label %if.end
    i32 -1677549020, label %for.cond
    i32 -1638186797, label %for.body
    i32 1131228963, label %if.then7
    i32 993558644, label %if.then11
    i32 -1551636759, label %originalBB
    i32 2147002055, label %originalBBalteredBB
    i32 979657901, label %if.end12
    i32 411405378, label %if.end15
    i32 242238720, label %for.end
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %if.end15, %if.end12, %if.then11, %if.then7, %for.body, %for.cond, %if.end, %first
  %strend.1.reg2mem.0.be = phi i8* [ %strend.1.reg2mem.0, %if.end15 ], [ %add.ptr14, %if.end12 ], [ %strend.1.reg2mem.0, %if.then11 ], [ %strend.1.reg2mem.0, %if.then7 ], [ %strend.0.reload.reg2mem.0.strend.0.reload.reload, %for.body ], [ %strend.1.reg2mem.0, %for.cond ], [ %strend.1.reg2mem.0, %if.end ], [ %strend.1.reg2mem.0, %first ], [ %strend.1.reg2mem.0, %loopEntry ]
  %strbuf.1.reg2mem.0.be = phi i8* [ %strbuf.1.reg2mem.0, %if.end15 ], [ %call9.reg2mem.0.call9.reload, %if.end12 ], [ %strbuf.1.reg2mem.0, %if.then11 ], [ %strbuf.1.reg2mem.0, %if.then7 ], [ %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload, %for.body ], [ %strbuf.1.reg2mem.0, %for.cond ], [ %strbuf.1.reg2mem.0, %if.end ], [ %strbuf.1.reg2mem.0, %first ], [ %strbuf.1.reg2mem.0, %loopEntry ]
  %buflen.1.reg2mem.0.be = phi i32 [ %buflen.1.reg2mem.0, %if.end15 ], [ %mul.reg2mem.0.mul.reload, %if.end12 ], [ %buflen.1.reg2mem.0, %if.then11 ], [ %buflen.1.reg2mem.0, %if.then7 ], [ %buflen.0.reload.reg2mem.0.buflen.0.reload.reload, %for.body ], [ %buflen.1.reg2mem.0, %for.cond ], [ %buflen.1.reg2mem.0, %if.end ], [ %buflen.1.reg2mem.0, %first ], [ %buflen.1.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %42, %if.end15 ], [ %i.0.reg2mem.0, %if.end12 ], [ %i.0.reg2mem.0, %if.then11 ], [ %i.0.reg2mem.0, %if.then7 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ 0, %if.end ], [ %i.0.reg2mem.0, %first ], [ %i.0.reg2mem.0, %loopEntry ]
  %strend.0.reg2mem.0.be = phi i8* [ %add.ptr18, %if.end15 ], [ %strend.0.reg2mem.0, %if.end12 ], [ %strend.0.reg2mem.0, %if.then11 ], [ %strend.0.reg2mem.0, %if.then7 ], [ %strend.0.reg2mem.0, %for.body ], [ %strend.0.reg2mem.0, %for.cond ], [ %call1.reg2mem.0.call1.reload, %if.end ], [ %strend.0.reg2mem.0, %first ], [ %strend.0.reg2mem.0, %loopEntry ]
  %strbuf.0.reg2mem.0.be = phi i8* [ %strbuf.1.reg2mem.0, %if.end15 ], [ %strbuf.0.reg2mem.0, %if.end12 ], [ %strbuf.0.reg2mem.0, %if.then11 ], [ %strbuf.0.reg2mem.0, %if.then7 ], [ %strbuf.0.reg2mem.0, %for.body ], [ %strbuf.0.reg2mem.0, %for.cond ], [ %call1.reg2mem.0.call1.reload48, %if.end ], [ %strbuf.0.reg2mem.0, %first ], [ %strbuf.0.reg2mem.0, %loopEntry ]
  %buflen.0.reg2mem.0.be = phi i32 [ %buflen.1.reg2mem.0, %if.end15 ], [ %buflen.0.reg2mem.0, %if.end12 ], [ %buflen.0.reg2mem.0, %if.then11 ], [ %buflen.0.reg2mem.0, %if.then7 ], [ %buflen.0.reg2mem.0, %for.body ], [ %buflen.0.reg2mem.0, %for.cond ], [ 1, %if.end ], [ %buflen.0.reg2mem.0, %first ], [ %buflen.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -1677549020, %if.end15 ], [ 411405378, %if.end12 ], [ %39, %if.then11 ], [ %5, %if.then7 ], [ %4, %for.body ], [ %1, %for.cond ], [ -1677549020, %if.end ], [ %0, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload49 = load volatile i8*, i8** %call1.reg2mem, align 8
  %tobool = icmp ne i8* %call1.reg2mem.0.call1.reload49, null
  %0 = select i1 %tobool, i32 1184222465, i32 -740707281
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  tail call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6
  tail call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload = load volatile i8*, i8** %call1.reg2mem, align 8
  %call1.reg2mem.0.call1.reload48 = load volatile i8*, i8** %call1.reg2mem, align 8
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  store i8* %strend.0.reg2mem.0, i8** %strend.0.reload.reg2mem, align 8
  store i8* %strbuf.0.reg2mem.0, i8** %strbuf.0.reload.reg2mem, align 8
  store i32 %buflen.0.reg2mem.0, i32* %buflen.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 100000000
  %1 = select i1 %cmp, i32 -1638186797, i32 242238720
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %buflen.0.reload.reg2mem.0.buflen.0.reload.reload60 = load volatile i32, i32* %buflen.0.reload.reg2mem, align 4
  %idx.ext = sext i32 %buflen.0.reload.reg2mem.0.buflen.0.reload.reload60 to i64
  %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload56 = load volatile i8*, i8** %strbuf.0.reload.reg2mem, align 8
  %add.ptr = getelementptr inbounds i8, i8* %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload56, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %strend.0.reload.reg2mem.0.strend.0.reload.reload55 = load volatile i8*, i8** %strend.0.reload.reg2mem, align 8
  %sub.ptr.rhs.cast = ptrtoint i8* %strend.0.reload.reg2mem.0.strend.0.reload.reload55 to i64
  %2 = sub i64 0, %sub.ptr.rhs.cast
  %3 = add i64 %sub.ptr.lhs.cast, %2
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp slt i64 %3, 7
  %4 = select i1 %cmp5, i32 1131228963, i32 411405378
  %buflen.0.reload.reg2mem.0.buflen.0.reload.reload = load volatile i32, i32* %buflen.0.reload.reg2mem, align 4
  %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload = load volatile i8*, i8** %strbuf.0.reload.reg2mem, align 8
  %strend.0.reload.reg2mem.0.strend.0.reload.reload = load volatile i8*, i8** %strend.0.reload.reg2mem, align 8
  br label %loopEntry.backedge

if.then7:                                         ; preds = %loopEntry
  %buflen.0.reload.reg2mem.0.buflen.0.reload.reload61 = load volatile i32, i32* %buflen.0.reload.reg2mem, align 4
  %mul = shl nsw i32 %buflen.0.reload.reg2mem.0.buflen.0.reload.reload61, 1
  store i32 %mul, i32* %mul.reg2mem, align 4
  %mul.reg2mem.0.mul.reload50 = load volatile i32, i32* %mul.reg2mem, align 4
  %conv8 = sext i32 %mul.reg2mem.0.mul.reload50 to i64
  %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload58 = load volatile i8*, i8** %strbuf.0.reload.reg2mem, align 8
  %call9 = tail call i8* @realloc(i8* %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload58, i64 %conv8) #5
  store i8* %call9, i8** %call9.reg2mem, align 8
  %call9.reg2mem.0.call9.reload53 = load volatile i8*, i8** %call9.reg2mem, align 8
  %tobool10 = icmp ne i8* %call9.reg2mem.0.call9.reload53, null
  %5 = select i1 %tobool10, i32 979657901, i32 993558644
  br label %loopEntry.backedge

if.then11:                                        ; preds = %loopEntry
  %6 = load i32, i32* @x, align 4
  %7 = load i32, i32* @y, align 4
  %8 = sub i32 %6, 1975297281
  %9 = add i32 %8, -1
  %10 = add i32 %9, 1975297281
  %11 = add i32 %6, -1
  %12 = mul i32 %10, %6
  %13 = xor i32 %12, -1
  %14 = xor i32 1, -1
  %15 = xor i32 1996168254, -1
  %16 = or i32 %13, %14
  %17 = or i32 1996168254, %15
  %18 = xor i32 %16, -1
  %19 = and i32 %18, %17
  %20 = and i32 %12, 1
  %21 = icmp eq i32 %19, 0
  %22 = icmp slt i32 %7, 10
  %23 = xor i1 %22, true
  %24 = xor i1 %21, true
  %25 = xor i1 false, true
  %26 = and i1 %23, false
  %27 = and i1 %22, %25
  %28 = and i1 %24, false
  %29 = and i1 %21, %25
  %30 = or i1 %26, %27
  %31 = or i1 %28, %29
  %32 = xor i1 %30, %31
  %33 = or i1 %23, %24
  %34 = xor i1 %33, true
  %35 = or i1 false, %25
  %36 = and i1 %34, %35
  %37 = or i1 %32, %36
  %38 = or i1 %22, %21
  %39 = select i1 %37, i32 -1551636759, i32 2147002055
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  tail call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6
  tail call void @exit(i32 1) #7
  unreachable

if.end12:                                         ; preds = %loopEntry
  %call9.reg2mem.0.call9.reload51 = load volatile i8*, i8** %call9.reg2mem, align 8
  %call13 = tail call i64 @strlen(i8* %call9.reg2mem.0.call9.reload51) #8
  %call9.reg2mem.0.call9.reload52 = load volatile i8*, i8** %call9.reg2mem, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %call9.reg2mem.0.call9.reload52, i64 %call13
  %mul.reg2mem.0.mul.reload = load volatile i32, i32* %mul.reg2mem, align 4
  %call9.reg2mem.0.call9.reload = load volatile i8*, i8** %call9.reg2mem, align 8
  br label %loopEntry.backedge

if.end15:                                         ; preds = %loopEntry
  %strlen = tail call i64 @strlen(i8* %strend.1.reg2mem.0)
  %endptr = getelementptr i8, i8* %strend.1.reg2mem.0, i64 %strlen
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 7, i32 1, i1 false)
  %add.ptr18 = getelementptr inbounds i8, i8* %strend.1.reg2mem.0, i64 6
  %i.0.reload.reg2mem.0.i.0.reload.reload54 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %40 = add i32 %i.0.reload.reg2mem.0.i.0.reload.reload54, 998403729
  %41 = add i32 %40, 1
  %42 = sub i32 %41, 998403729
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload54, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload57 = load volatile i8*, i8** %strbuf.0.reload.reg2mem, align 8
  %call19 = tail call i64 @strlen(i8* %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload57) #8
  %conv20 = trunc i64 %call19 to i32
  %call21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %conv20)
  %call22 = tail call i64 @clock() #5
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %43 = add i64 %call22, 4582651876427957284
  %44 = sub i64 %43, %call.reg2mem.0.call.reload
  %45 = sub i64 %44, 4582651876427957284
  %sub = sub nsw i64 %call22, %call.reg2mem.0.call.reload
  %conv23 = sitofp i64 %45 to double
  %div = fdiv double %conv23, 1.000000e+06
  %call24 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), double %div)
  %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload59 = load volatile i8*, i8** %strbuf.0.reload.reg2mem, align 8
  tail call void @free(i8* %strbuf.0.reload.reg2mem.0.strbuf.0.reload.reload59) #5
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  tail call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #6
  tail call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
