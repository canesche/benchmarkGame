; ModuleID = 'fasta/fasta.c'
source_filename = "fasta/fasta.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@header1 = constant [23 x i8] c">ONE Homo sapiens alu\0A\00", align 16
@header2 = constant [26 x i8] c">TWO IUB ambiguity codes\0A\00", align 16
@header3 = constant [31 x i8] c">THREE Homo sapiens frequency\0A\00", align 16
@iub_p = internal constant [15 x float] [float 0x3FD147AE20000000, float 0x3FBEB851E0000000, float 0x3FBEB851E0000000, float 0x3FD147AE20000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000], align 16
@homosapiens_p = internal constant [4 x float] [float 0x3FD3639D20000000, float 0x3FC957AE40000000, float 0x3FC9493AE0000000, float 0x3FD34BEE40000000], align 16
@.str = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 1
@seed = internal unnamed_addr global i32 42, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"acgtBDHKMNRSVWY\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"acgt\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.5 = common local_unnamed_addr global i32 0
@y.6 = common local_unnamed_addr global i32 0
@x.7 = common local_unnamed_addr global i32 0
@y.8 = common local_unnamed_addr global i32 0
@x.9 = common local_unnamed_addr global i32 0
@y.10 = common local_unnamed_addr global i32 0
@x.11 = common local_unnamed_addr global i32 0
@y.12 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %i.2.reload.reg2mem.i = alloca i32, align 4
  %i.1.reload.reg2mem.i = alloca i32, align 4
  %i.0.reload.reg2mem.i = alloca i32, align 4
  %div35.reg2mem.i = alloca i32, align 4
  %add28.reg2mem.i = alloca i32, align 4
  %cmp19.reg2mem.i = alloca i1, align 1
  %call17.reg2mem.i = alloca i8*, align 8
  %conv16.reg2mem.i = alloca i64, align 8
  %add.ptr8.reg2mem.i = alloca i8*, align 8
  %cmp5.reg2mem.i = alloca i1, align 1
  %call2.reg2mem.i = alloca i8*, align 8
  %conv.reg2mem.i = alloca i32, align 4
  %call = tail call i64 @clock() #6
  %call1 = tail call i64 @write(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @header1, i64 0, i64 0), i64 22) #6
  %i.2.reload.reg2mem.i.0..sroa_cast = bitcast i32* %i.2.reload.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %i.2.reload.reg2mem.i.0..sroa_cast)
  %i.1.reload.reg2mem.i.0..sroa_cast = bitcast i32* %i.1.reload.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %i.1.reload.reg2mem.i.0..sroa_cast)
  %i.0.reload.reg2mem.i.0..sroa_cast = bitcast i32* %i.0.reload.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %i.0.reload.reg2mem.i.0..sroa_cast)
  %div35.reg2mem.i.0..sroa_cast = bitcast i32* %div35.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %div35.reg2mem.i.0..sroa_cast)
  %add28.reg2mem.i.0..sroa_cast = bitcast i32* %add28.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %add28.reg2mem.i.0..sroa_cast)
  %cmp19.reg2mem.i.0..sroa_cast = bitcast i1* %cmp19.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %cmp19.reg2mem.i.0..sroa_cast)
  %call17.reg2mem.i.0..sroa_cast = bitcast i8** %call17.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call17.reg2mem.i.0..sroa_cast)
  %conv16.reg2mem.i.0..sroa_cast = bitcast i64* %conv16.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %conv16.reg2mem.i.0..sroa_cast)
  %add.ptr8.reg2mem.i.0..sroa_cast = bitcast i8** %add.ptr8.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %add.ptr8.reg2mem.i.0..sroa_cast)
  %cmp5.reg2mem.i.0..sroa_cast = bitcast i1* %cmp5.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %cmp5.reg2mem.i.0..sroa_cast)
  %call2.reg2mem.i.0..sroa_cast = bitcast i8** %call2.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call2.reg2mem.i.0..sroa_cast)
  %conv.reg2mem.i.0..sroa_cast = bitcast i32* %conv.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %conv.reg2mem.i.0..sroa_cast)
  store i32 287, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload221.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %0 = sub i32 0, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload221.i
  %1 = sub i32 0, 60
  %2 = add i32 %0, %1
  %3 = sub i32 0, %2
  %add.i = add nsw i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload221.i, 60
  %conv1.i = sext i32 %3 to i64
  %call2.i = tail call noalias i8* @malloc(i64 %conv1.i) #6
  store i8* %call2.i, i8** %call2.reg2mem.i, align 8
  br label %loopEntry.i

loopEntry.i:                                      ; preds = %loopEntry.i.backedge, %entry
  %i.2.reg2mem.0.i = phi i32 [ undef, %entry ], [ %i.2.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %i.1.reg2mem.0.i = phi i32 [ undef, %entry ], [ %i.1.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %i.0.reg2mem.0.i = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %switchVar.0.i = phi i32 [ -2090614635, %entry ], [ %switchVar.0.i.be, %loopEntry.i.backedge ]
  switch i32 %switchVar.0.i, label %loopEntry.i.backedge [
    i32 -2090614635, label %first.i
    i32 -2131661884, label %if.then.i
    i32 149527946, label %if.else.i
    i32 1508144873, label %originalBB.i
    i32 1533824719, label %originalBBpart2.i
    i32 -368859646, label %for.cond.i
    i32 -120959215, label %originalBB106.i
    i32 -979194610, label %originalBBpart2122.i
    i32 -154564915, label %for.body.i
    i32 2034838230, label %for.end.i
    i32 2043893118, label %if.end.i
    i32 1330805119, label %for.cond18.i
    i32 -1127145790, label %originalBB124.i
    i32 1297588568, label %originalBBpart2126.i
    i32 -529185180, label %for.body21.i
    i32 -685899812, label %originalBB128.i
    i32 1381932558, label %originalBBpart2190.i
    i32 1691575369, label %for.end33.i
    i32 675470899, label %for.cond36.i
    i32 -1703634112, label %for.body39.i
    i32 1673475675, label %for.end44.i
    i32 -693365429, label %if.then55.i
    i32 -1713141935, label %if.end57.i
    i32 -993287622, label %originalBB192.i
    i32 173087567, label %repeat_fasta.exit
    i32 2006349831, label %originalBBalteredBB.i
    i32 665517021, label %originalBB106alteredBB.i
    i32 1239683216, label %originalBB124alteredBB.i
    i32 405959777, label %originalBB128alteredBB.i
    i32 -55129624, label %originalBB192alteredBB.i
  ]

loopEntry.i.backedge:                             ; preds = %loopEntry.i, %first.i, %if.then.i, %if.else.i, %originalBB.i, %originalBBpart2.i, %for.cond.i, %originalBB106.i, %originalBBpart2122.i, %for.body.i, %for.end.i, %if.end.i, %for.cond18.i, %originalBB124.i, %originalBBpart2126.i, %for.body21.i, %originalBB128.i, %originalBBpart2190.i, %for.end33.i, %for.cond36.i, %for.body39.i, %for.end44.i, %if.then55.i, %if.end57.i, %originalBB192.i, %originalBBalteredBB.i, %originalBB106alteredBB.i, %originalBB124alteredBB.i, %originalBB128alteredBB.i, %originalBB192alteredBB.i
  %i.2.reg2mem.0.i.be = phi i32 [ %i.2.reg2mem.0.i, %originalBB192alteredBB.i ], [ %i.2.reg2mem.0.i, %originalBB128alteredBB.i ], [ %i.2.reg2mem.0.i, %originalBB124alteredBB.i ], [ %i.2.reg2mem.0.i, %originalBB106alteredBB.i ], [ %i.2.reg2mem.0.i, %originalBBalteredBB.i ], [ %i.2.reg2mem.0.i, %originalBB192.i ], [ %i.2.reg2mem.0.i, %if.end57.i ], [ %i.2.reg2mem.0.i, %if.then55.i ], [ %i.2.reg2mem.0.i, %for.end44.i ], [ %222, %for.body39.i ], [ %i.2.reg2mem.0.i, %for.cond36.i ], [ 0, %for.end33.i ], [ %i.2.reg2mem.0.i, %originalBBpart2190.i ], [ %i.2.reg2mem.0.i, %originalBB128.i ], [ %i.2.reg2mem.0.i, %for.body21.i ], [ %i.2.reg2mem.0.i, %originalBBpart2126.i ], [ %i.2.reg2mem.0.i, %originalBB124.i ], [ %i.2.reg2mem.0.i, %for.cond18.i ], [ %i.2.reg2mem.0.i, %if.end.i ], [ %i.2.reg2mem.0.i, %for.end.i ], [ %i.2.reg2mem.0.i, %for.body.i ], [ %i.2.reg2mem.0.i, %originalBBpart2122.i ], [ %i.2.reg2mem.0.i, %originalBB106.i ], [ %i.2.reg2mem.0.i, %for.cond.i ], [ %i.2.reg2mem.0.i, %originalBBpart2.i ], [ %i.2.reg2mem.0.i, %originalBB.i ], [ %i.2.reg2mem.0.i, %if.else.i ], [ %i.2.reg2mem.0.i, %if.then.i ], [ %i.2.reg2mem.0.i, %first.i ], [ %i.2.reg2mem.0.i, %loopEntry.i ]
  %i.1.reg2mem.0.i.be = phi i32 [ %i.1.reg2mem.0.i, %originalBB192alteredBB.i ], [ %i.1.reg2mem.0.i, %originalBB128alteredBB.i ], [ %i.1.reg2mem.0.i, %originalBB124alteredBB.i ], [ %i.1.reg2mem.0.i, %originalBB106alteredBB.i ], [ %i.1.reg2mem.0.i, %originalBBalteredBB.i ], [ %i.1.reg2mem.0.i, %originalBB192.i ], [ %i.1.reg2mem.0.i, %if.end57.i ], [ %i.1.reg2mem.0.i, %if.then55.i ], [ %i.1.reg2mem.0.i, %for.end44.i ], [ %i.1.reg2mem.0.i, %for.body39.i ], [ %i.1.reg2mem.0.i, %for.cond36.i ], [ %i.1.reg2mem.0.i, %for.end33.i ], [ %add28.reg2mem.i.0.add28.reg2mem.0.add28.reload.i, %originalBBpart2190.i ], [ %i.1.reg2mem.0.i, %originalBB128.i ], [ %i.1.reg2mem.0.i, %for.body21.i ], [ %i.1.reg2mem.0.i, %originalBBpart2126.i ], [ %i.1.reg2mem.0.i, %originalBB124.i ], [ %i.1.reg2mem.0.i, %for.cond18.i ], [ 0, %if.end.i ], [ %i.1.reg2mem.0.i, %for.end.i ], [ %i.1.reg2mem.0.i, %for.body.i ], [ %i.1.reg2mem.0.i, %originalBBpart2122.i ], [ %i.1.reg2mem.0.i, %originalBB106.i ], [ %i.1.reg2mem.0.i, %for.cond.i ], [ %i.1.reg2mem.0.i, %originalBBpart2.i ], [ %i.1.reg2mem.0.i, %originalBB.i ], [ %i.1.reg2mem.0.i, %if.else.i ], [ %i.1.reg2mem.0.i, %if.then.i ], [ %i.1.reg2mem.0.i, %first.i ], [ %i.1.reg2mem.0.i, %loopEntry.i ]
  %i.0.reg2mem.0.i.be = phi i32 [ %i.0.reg2mem.0.i, %originalBB192alteredBB.i ], [ %i.0.reg2mem.0.i, %originalBB128alteredBB.i ], [ %i.0.reg2mem.0.i, %originalBB124alteredBB.i ], [ %i.0.reg2mem.0.i, %originalBB106alteredBB.i ], [ %i.0.reg2mem.0.i, %originalBBalteredBB.i ], [ %i.0.reg2mem.0.i, %originalBB192.i ], [ %i.0.reg2mem.0.i, %if.end57.i ], [ %i.0.reg2mem.0.i, %if.then55.i ], [ %i.0.reg2mem.0.i, %for.end44.i ], [ %i.0.reg2mem.0.i, %for.body39.i ], [ %i.0.reg2mem.0.i, %for.cond36.i ], [ %i.0.reg2mem.0.i, %for.end33.i ], [ %i.0.reg2mem.0.i, %originalBBpart2190.i ], [ %i.0.reg2mem.0.i, %originalBB128.i ], [ %i.0.reg2mem.0.i, %for.body21.i ], [ %i.0.reg2mem.0.i, %originalBBpart2126.i ], [ %i.0.reg2mem.0.i, %originalBB124.i ], [ %i.0.reg2mem.0.i, %for.cond18.i ], [ %i.0.reg2mem.0.i, %if.end.i ], [ %i.0.reg2mem.0.i, %for.end.i ], [ %109, %for.body.i ], [ %i.0.reg2mem.0.i, %originalBBpart2122.i ], [ %i.0.reg2mem.0.i, %originalBB106.i ], [ %i.0.reg2mem.0.i, %for.cond.i ], [ 0, %originalBBpart2.i ], [ %i.0.reg2mem.0.i, %originalBB.i ], [ %i.0.reg2mem.0.i, %if.else.i ], [ %i.0.reg2mem.0.i, %if.then.i ], [ %i.0.reg2mem.0.i, %first.i ], [ %i.0.reg2mem.0.i, %loopEntry.i ]
  %switchVar.0.i.be = phi i32 [ -993287622, %originalBB192alteredBB.i ], [ -685899812, %originalBB128alteredBB.i ], [ -1127145790, %originalBB124alteredBB.i ], [ -120959215, %originalBB106alteredBB.i ], [ 1508144873, %originalBBalteredBB.i ], [ %276, %originalBB192.i ], [ %259, %if.end57.i ], [ -1713141935, %if.then55.i ], [ -693365429, %for.end44.i ], [ 675470899, %for.body39.i ], [ %219, %for.cond36.i ], [ 675470899, %for.end33.i ], [ 1330805119, %originalBBpart2190.i ], [ %218, %originalBB128.i ], [ %193, %for.body21.i ], [ %163, %originalBBpart2126.i ], [ %162, %originalBB124.i ], [ %141, %for.cond18.i ], [ 1330805119, %if.end.i ], [ 2043893118, %for.end.i ], [ -368859646, %for.body.i ], [ %106, %originalBBpart2122.i ], [ %105, %originalBB106.i ], [ %86, %for.cond.i ], [ -368859646, %originalBBpart2.i ], [ %52, %originalBB.i ], [ %34, %if.else.i ], [ 2043893118, %if.then.i ], [ %4, %first.i ], [ %switchVar.0.i, %loopEntry.i ]
  br label %loopEntry.i

first.i:                                          ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload222.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %cmp.i = icmp sgt i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload222.i, 60
  %4 = select i1 %cmp.i, i32 -2131661884, i32 149527946
  br label %loopEntry.i.backedge

if.then.i:                                        ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload223.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv4.i = sext i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload223.i to i64
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload233.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload233.i, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.2, i64 0, i64 0), i64 %conv4.i, i32 1, i1 false) #6
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload234.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload234.i, i64 %conv4.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr.i, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.2, i64 0, i64 0), i64 60, i32 1, i1 false) #6
  br label %loopEntry.i.backedge

if.else.i:                                        ; preds = %loopEntry.i
  %5 = load i32, i32* @x.5, align 4
  %6 = load i32, i32* @y.6, align 4
  %7 = sub i32 %5, -773307038
  %8 = add i32 %7, -1
  %9 = add i32 %8, -773307038
  %10 = add i32 %5, -1
  %11 = mul i32 %9, %5
  %12 = xor i32 1, -1
  %13 = xor i32 %11, %12
  %14 = and i32 %13, %11
  %15 = and i32 %11, 1
  %16 = icmp eq i32 %14, 0
  %17 = icmp slt i32 %6, 10
  %18 = xor i1 %17, true
  %19 = xor i1 %16, true
  %20 = xor i1 true, true
  %21 = and i1 %18, true
  %22 = and i1 %17, %20
  %23 = and i1 %19, true
  %24 = and i1 %16, %20
  %25 = or i1 %21, %22
  %26 = or i1 %23, %24
  %27 = xor i1 %25, %26
  %28 = or i1 %18, %19
  %29 = xor i1 %28, true
  %30 = or i1 true, %20
  %31 = and i1 %29, %30
  %32 = or i1 %27, %31
  %33 = or i1 %17, %16
  %34 = select i1 %32, i32 1508144873, i32 2006349831
  br label %loopEntry.i.backedge

originalBB.i:                                     ; preds = %loopEntry.i
  %35 = load i32, i32* @x.5, align 4
  %36 = load i32, i32* @y.6, align 4
  %37 = add i32 %35, 1219565612
  %38 = add i32 %37, -1
  %39 = sub i32 %38, 1219565612
  %40 = add i32 %35, -1
  %41 = mul i32 %39, %35
  %42 = xor i32 1, -1
  %43 = xor i32 %41, %42
  %44 = and i32 %43, %41
  %45 = and i32 %41, 1
  %46 = icmp eq i32 %44, 0
  %47 = icmp slt i32 %36, 10
  %48 = and i1 %47, %46
  %49 = xor i1 %47, %46
  %50 = or i1 %48, %49
  %51 = or i1 %47, %46
  %52 = select i1 %50, i32 1533824719, i32 2006349831
  br label %loopEntry.i.backedge

originalBBpart2.i:                                ; preds = %loopEntry.i
  br label %loopEntry.i.backedge

for.cond.i:                                       ; preds = %loopEntry.i
  store i32 %i.0.reg2mem.0.i, i32* %i.0.reload.reg2mem.i, align 4
  %53 = load i32, i32* @x.5, align 4
  %54 = load i32, i32* @y.6, align 4
  %55 = sub i32 %53, 1895780376
  %56 = add i32 %55, -1
  %57 = add i32 %56, 1895780376
  %58 = add i32 %53, -1
  %59 = mul i32 %57, %53
  %60 = xor i32 %59, -1
  %61 = xor i32 1, -1
  %62 = xor i32 1161544877, -1
  %63 = or i32 %60, %61
  %64 = or i32 1161544877, %62
  %65 = xor i32 %63, -1
  %66 = and i32 %65, %64
  %67 = and i32 %59, 1
  %68 = icmp eq i32 %66, 0
  %69 = icmp slt i32 %54, 10
  %70 = xor i1 %69, true
  %71 = xor i1 %68, true
  %72 = xor i1 false, true
  %73 = and i1 %70, false
  %74 = and i1 %69, %72
  %75 = and i1 %71, false
  %76 = and i1 %68, %72
  %77 = or i1 %73, %74
  %78 = or i1 %75, %76
  %79 = xor i1 %77, %78
  %80 = or i1 %70, %71
  %81 = xor i1 %80, true
  %82 = or i1 false, %72
  %83 = and i1 %81, %82
  %84 = or i1 %79, %83
  %85 = or i1 %69, %68
  %86 = select i1 %84, i32 -120959215, i32 665517021
  br label %loopEntry.i.backedge

originalBB106.i:                                  ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload224.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %div.i = sdiv i32 60, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload224.i
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %cmp5.i = icmp slt i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload.i, %div.i
  store i1 %cmp5.i, i1* %cmp5.reg2mem.i, align 1
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload225.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload248.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %mul.i = mul nsw i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload248.i, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload225.i
  %idx.ext7.i = sext i32 %mul.i to i64
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload235.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  %add.ptr8.i = getelementptr inbounds i8, i8* %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload235.i, i64 %idx.ext7.i
  store i8* %add.ptr8.i, i8** %add.ptr8.reg2mem.i, align 8
  %87 = load i32, i32* @x.5, align 4
  %88 = load i32, i32* @y.6, align 4
  %89 = sub i32 0, %87
  %90 = sub i32 0, -1
  %91 = add i32 %89, %90
  %92 = sub i32 0, %91
  %93 = add i32 %87, -1
  %94 = mul i32 %92, %87
  %95 = xor i32 1, -1
  %96 = xor i32 %94, %95
  %97 = and i32 %96, %94
  %98 = and i32 %94, 1
  %99 = icmp eq i32 %97, 0
  %100 = icmp slt i32 %88, 10
  %101 = and i1 %100, %99
  %102 = xor i1 %100, %99
  %103 = or i1 %101, %102
  %104 = or i1 %100, %99
  %105 = select i1 %103, i32 -979194610, i32 665517021
  br label %loopEntry.i.backedge

originalBBpart2122.i:                             ; preds = %loopEntry.i
  %cmp5.reg2mem.i.0.cmp5.reg2mem.0.cmp5.reload.i = load volatile i1, i1* %cmp5.reg2mem.i, align 1
  %106 = select i1 %cmp5.reg2mem.i.0.cmp5.reg2mem.0.cmp5.reload.i, i32 -154564915, i32 2034838230
  br label %loopEntry.i.backedge

for.body.i:                                       ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload226.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv9.i = sext i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload226.i to i64
  %add.ptr8.reg2mem.i.0.add.ptr8.reg2mem.0.add.ptr8.reload238.i = load volatile i8*, i8** %add.ptr8.reg2mem.i, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr8.reg2mem.i.0.add.ptr8.reg2mem.0.add.ptr8.reload238.i, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.2, i64 0, i64 0), i64 %conv9.i, i32 1, i1 false) #6
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload249.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %107 = sub i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload249.i, -1953187066
  %108 = add i32 %107, 1
  %109 = add i32 %108, -1953187066
  %inc.i = add nsw i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload249.i, 1
  br label %loopEntry.i.backedge

for.end.i:                                        ; preds = %loopEntry.i
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload250.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %110 = mul i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload250.i, -1000000
  %111 = sub i32 0, 1000000
  %112 = sub i32 %110, %111
  %sub.i = add i32 %110, 1000000
  %conv14.i = sext i32 %112 to i64
  %add.ptr8.reg2mem.i.0.add.ptr8.reg2mem.0.add.ptr8.reload.i = load volatile i8*, i8** %add.ptr8.reg2mem.i, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr8.reg2mem.i.0.add.ptr8.reg2mem.0.add.ptr8.reload.i, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.2, i64 0, i64 0), i64 %conv14.i, i32 1, i1 false) #6
  br label %loopEntry.i.backedge

if.end.i:                                         ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload227.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %mul15.i = mul nsw i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload227.i, 61
  %conv16.i = sext i32 %mul15.i to i64
  store i64 %conv16.i, i64* %conv16.reg2mem.i, align 8
  %conv16.reg2mem.i.0.conv16.reg2mem.0.conv16.reload239.i = load volatile i64, i64* %conv16.reg2mem.i, align 8
  %call17.i = tail call noalias i8* @malloc(i64 %conv16.reg2mem.i.0.conv16.reg2mem.0.conv16.reload239.i) #6
  store i8* %call17.i, i8** %call17.reg2mem.i, align 8
  br label %loopEntry.i.backedge

for.cond18.i:                                     ; preds = %loopEntry.i
  store i32 %i.1.reg2mem.0.i, i32* %i.1.reload.reg2mem.i, align 4
  %113 = load i32, i32* @x.5, align 4
  %114 = load i32, i32* @y.6, align 4
  %115 = sub i32 0, -1
  %116 = sub i32 %113, %115
  %117 = add i32 %113, -1
  %118 = mul i32 %116, %113
  %119 = xor i32 1, -1
  %120 = xor i32 %118, %119
  %121 = and i32 %120, %118
  %122 = and i32 %118, 1
  %123 = icmp eq i32 %121, 0
  %124 = icmp slt i32 %114, 10
  %125 = xor i1 %124, true
  %126 = xor i1 %123, true
  %127 = xor i1 true, true
  %128 = and i1 %125, true
  %129 = and i1 %124, %127
  %130 = and i1 %126, true
  %131 = and i1 %123, %127
  %132 = or i1 %128, %129
  %133 = or i1 %130, %131
  %134 = xor i1 %132, %133
  %135 = or i1 %125, %126
  %136 = xor i1 %135, true
  %137 = or i1 true, %127
  %138 = and i1 %136, %137
  %139 = or i1 %134, %138
  %140 = or i1 %124, %123
  %141 = select i1 %139, i32 -1127145790, i32 1239683216
  br label %loopEntry.i.backedge

originalBB124.i:                                  ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload228.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %cmp19.i = icmp slt i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload.i, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload228.i
  store i1 %cmp19.i, i1* %cmp19.reg2mem.i, align 1
  %142 = load i32, i32* @x.5, align 4
  %143 = load i32, i32* @y.6, align 4
  %144 = sub i32 0, -1
  %145 = sub i32 %142, %144
  %146 = add i32 %142, -1
  %147 = mul i32 %145, %142
  %148 = xor i32 %147, -1
  %149 = xor i32 1, -1
  %150 = xor i32 -784422368, -1
  %151 = or i32 %148, %149
  %152 = or i32 -784422368, %150
  %153 = xor i32 %151, -1
  %154 = and i32 %153, %152
  %155 = and i32 %147, 1
  %156 = icmp eq i32 %154, 0
  %157 = icmp slt i32 %143, 10
  %158 = and i1 %157, %156
  %159 = xor i1 %157, %156
  %160 = or i1 %158, %159
  %161 = or i1 %157, %156
  %162 = select i1 %160, i32 1297588568, i32 1239683216
  br label %loopEntry.i.backedge

originalBBpart2126.i:                             ; preds = %loopEntry.i
  %cmp19.reg2mem.i.0.cmp19.reg2mem.0.cmp19.reload.i = load volatile i1, i1* %cmp19.reg2mem.i, align 1
  %163 = select i1 %cmp19.reg2mem.i.0.cmp19.reg2mem.0.cmp19.reload.i, i32 -529185180, i32 1691575369
  br label %loopEntry.i.backedge

for.body21.i:                                     ; preds = %loopEntry.i
  %164 = load i32, i32* @x.5, align 4
  %165 = load i32, i32* @y.6, align 4
  %166 = add i32 %164, 964548274
  %167 = add i32 %166, -1
  %168 = sub i32 %167, 964548274
  %169 = add i32 %164, -1
  %170 = mul i32 %168, %164
  %171 = xor i32 1, -1
  %172 = xor i32 %170, %171
  %173 = and i32 %172, %170
  %174 = and i32 %170, 1
  %175 = icmp eq i32 %173, 0
  %176 = icmp slt i32 %165, 10
  %177 = xor i1 %176, true
  %178 = xor i1 %175, true
  %179 = xor i1 true, true
  %180 = and i1 %177, true
  %181 = and i1 %176, %179
  %182 = and i1 %178, true
  %183 = and i1 %175, %179
  %184 = or i1 %180, %181
  %185 = or i1 %182, %183
  %186 = xor i1 %184, %185
  %187 = or i1 %177, %178
  %188 = xor i1 %187, true
  %189 = or i1 true, %179
  %190 = and i1 %188, %189
  %191 = or i1 %186, %190
  %192 = or i1 %176, %175
  %193 = select i1 %191, i32 -685899812, i32 405959777
  br label %loopEntry.i.backedge

originalBB128.i:                                  ; preds = %loopEntry.i
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload257.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %mul22.i = mul nsw i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload257.i, 61
  %idx.ext23.i = sext i32 %mul22.i to i64
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload241.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  %add.ptr24.i = getelementptr inbounds i8, i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload241.i, i64 %idx.ext23.i
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload258.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %mul25.i = mul nsw i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload258.i, 60
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload229.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %rem.i = srem i32 %mul25.i, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload229.i
  %idx.ext26.i = sext i32 %rem.i to i64
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload236.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  %add.ptr27.i = getelementptr inbounds i8, i8* %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload236.i, i64 %idx.ext26.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr24.i, i8* %add.ptr27.i, i64 60, i32 1, i1 false) #6
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload259.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %194 = add i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload259.i, 866516407
  %195 = add i32 %194, 1
  %196 = sub i32 %195, 866516407
  %add28.i = add nsw i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload259.i, 1
  store i32 %196, i32* %add28.reg2mem.i, align 4
  %add28.reg2mem.i.0.add28.reg2mem.0.add28.reload246.i = load volatile i32, i32* %add28.reg2mem.i, align 4
  %mul29.i = mul nsw i32 %add28.reg2mem.i.0.add28.reg2mem.0.add28.reload246.i, 61
  %197 = sub i32 %mul29.i, 478464771
  %198 = add i32 %197, -1
  %199 = add i32 %198, 478464771
  %sub30.i = add nsw i32 %mul29.i, -1
  %idxprom.i = sext i32 %199 to i64
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload242.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  %arrayidx.i = getelementptr inbounds i8, i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload242.i, i64 %idxprom.i
  store i8 10, i8* %arrayidx.i, align 1, !tbaa !1
  %200 = load i32, i32* @x.5, align 4
  %201 = load i32, i32* @y.6, align 4
  %202 = sub i32 0, %200
  %203 = sub i32 0, -1
  %204 = add i32 %202, %203
  %205 = sub i32 0, %204
  %206 = add i32 %200, -1
  %207 = mul i32 %205, %200
  %208 = xor i32 1, -1
  %209 = xor i32 %207, %208
  %210 = and i32 %209, %207
  %211 = and i32 %207, 1
  %212 = icmp eq i32 %210, 0
  %213 = icmp slt i32 %201, 10
  %214 = and i1 %213, %212
  %215 = xor i1 %213, %212
  %216 = or i1 %214, %215
  %217 = or i1 %213, %212
  %218 = select i1 %216, i32 1381932558, i32 405959777
  br label %loopEntry.i.backedge

originalBBpart2190.i:                             ; preds = %loopEntry.i
  %add28.reg2mem.i.0.add28.reg2mem.0.add28.reload.i = load volatile i32, i32* %add28.reg2mem.i, align 4
  br label %loopEntry.i.backedge

for.end33.i:                                      ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload230.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %mul34.i = mul nsw i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload230.i, 60
  %div35.i = sdiv i32 1000000, %mul34.i
  store i32 %div35.i, i32* %div35.reg2mem.i, align 4
  br label %loopEntry.i.backedge

for.cond36.i:                                     ; preds = %loopEntry.i
  store i32 %i.2.reg2mem.0.i, i32* %i.2.reload.reg2mem.i, align 4
  %div35.reg2mem.i.0.div35.reg2mem.0.div35.reload.i = load volatile i32, i32* %div35.reg2mem.i, align 4
  %i.2.reload.reg2mem.i.0.i.2.reload.reg2mem.0.i.2.reload.reload.i = load volatile i32, i32* %i.2.reload.reg2mem.i, align 4
  %cmp37.i = icmp slt i32 %i.2.reload.reg2mem.i.0.i.2.reload.reg2mem.0.i.2.reload.reload.i, %div35.reg2mem.i.0.div35.reg2mem.0.div35.reload.i
  %219 = select i1 %cmp37.i, i32 -1703634112, i32 1673475675
  br label %loopEntry.i.backedge

for.body39.i:                                     ; preds = %loopEntry.i
  %conv16.reg2mem.i.0.conv16.reg2mem.0.conv16.reload.i = load volatile i64, i64* %conv16.reg2mem.i, align 8
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload243.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  %call41.i = tail call i64 @write(i32 1, i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload243.i, i64 %conv16.reg2mem.i.0.conv16.reg2mem.0.conv16.reload.i) #6
  %i.2.reload.reg2mem.i.0.i.2.reload.reg2mem.0.i.2.reload.reload279.i = load volatile i32, i32* %i.2.reload.reg2mem.i, align 4
  %220 = sub i32 %i.2.reload.reg2mem.i.0.i.2.reload.reg2mem.0.i.2.reload.reload279.i, 411072196
  %221 = add i32 %220, 1
  %222 = add i32 %221, 411072196
  %inc43.i = add nsw i32 %i.2.reload.reg2mem.i.0.i.2.reload.reg2mem.0.i.2.reload.reload279.i, 1
  br label %loopEntry.i.backedge

for.end44.i:                                      ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload231.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %div35.reg2mem.i.0.div35.reg2mem.0.div35.reload247.i = load volatile i32, i32* %div35.reg2mem.i, align 4
  %mul45.i = mul i32 %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload231.i, -60
  %223 = mul i32 %mul45.i, %div35.reg2mem.i.0.div35.reg2mem.0.div35.reload247.i
  %224 = sub i32 0, 1000000
  %225 = sub i32 %223, %224
  %sub47.i = add i32 %223, 1000000
  %div48.i = sdiv i32 %225, 60
  %226 = add i32 %div48.i, -1646258224
  %227 = add i32 %226, %225
  %228 = sub i32 %227, -1646258224
  %add49.i = add nsw i32 %div48.i, %225
  %conv50.i = sext i32 %228 to i64
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload244.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  %call51.i = tail call i64 @write(i32 1, i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload244.i, i64 %conv50.i) #6
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload237.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  tail call void @free(i8* %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload237.i) #6
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload245.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  tail call void @free(i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload245.i) #6
  br label %loopEntry.i.backedge

if.then55.i:                                      ; preds = %loopEntry.i
  %call56.i = tail call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1) #6
  br label %loopEntry.i.backedge

if.end57.i:                                       ; preds = %loopEntry.i
  %229 = load i32, i32* @x.5, align 4
  %230 = load i32, i32* @y.6, align 4
  %231 = sub i32 0, %229
  %232 = sub i32 0, -1
  %233 = add i32 %231, %232
  %234 = sub i32 0, %233
  %235 = add i32 %229, -1
  %236 = mul i32 %234, %229
  %237 = xor i32 1, -1
  %238 = xor i32 %236, %237
  %239 = and i32 %238, %236
  %240 = and i32 %236, 1
  %241 = icmp eq i32 %239, 0
  %242 = icmp slt i32 %230, 10
  %243 = xor i1 %242, true
  %244 = xor i1 %241, true
  %245 = xor i1 false, true
  %246 = and i1 %243, false
  %247 = and i1 %242, %245
  %248 = and i1 %244, false
  %249 = and i1 %241, %245
  %250 = or i1 %246, %247
  %251 = or i1 %248, %249
  %252 = xor i1 %250, %251
  %253 = or i1 %243, %244
  %254 = xor i1 %253, true
  %255 = or i1 false, %245
  %256 = and i1 %254, %255
  %257 = or i1 %252, %256
  %258 = or i1 %242, %241
  %259 = select i1 %257, i32 -993287622, i32 -55129624
  br label %loopEntry.i.backedge

originalBB192.i:                                  ; preds = %loopEntry.i
  %260 = load i32, i32* @x.5, align 4
  %261 = load i32, i32* @y.6, align 4
  %262 = sub i32 0, -1
  %263 = sub i32 %260, %262
  %264 = add i32 %260, -1
  %265 = mul i32 %263, %260
  %266 = xor i32 1, -1
  %267 = xor i32 %265, %266
  %268 = and i32 %267, %265
  %269 = and i32 %265, 1
  %270 = icmp eq i32 %268, 0
  %271 = icmp slt i32 %261, 10
  %272 = and i1 %271, %270
  %273 = xor i1 %271, %270
  %274 = or i1 %272, %273
  %275 = or i1 %271, %270
  %276 = select i1 %274, i32 173087567, i32 -55129624
  br label %loopEntry.i.backedge

originalBBalteredBB.i:                            ; preds = %loopEntry.i
  br label %loopEntry.i.backedge

originalBB106alteredBB.i:                         ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload218.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload217.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload216.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload215.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload214.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload213.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload212.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload211.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload220.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload251.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload253.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload210.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload254.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload209.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload255.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload208.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload207.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload256.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload219.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload252.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload232.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  br label %loopEntry.i.backedge

originalBB124alteredBB.i:                         ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload206.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload260.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  br label %loopEntry.i.backedge

originalBB128alteredBB.i:                         ; preds = %loopEntry.i
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload264.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload265.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload266.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload267.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload268.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload269.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload270.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload261.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %mul22alteredBB.i = mul nsw i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload261.i, 61
  %idx.ext23alteredBB.i = sext i32 %mul22alteredBB.i to i64
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload240.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  %add.ptr24alteredBB.i = getelementptr inbounds i8, i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload240.i, i64 %idx.ext23alteredBB.i
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload271.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload272.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload273.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload274.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload275.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload262.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %mul25alteredBB.i = mul nsw i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload262.i, 60
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload204.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload203.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload202.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload201.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload200.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload199.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload198.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload197.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload205.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %remalteredBB.i = srem i32 %mul25alteredBB.i, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload205.i
  %idx.ext26alteredBB.i = sext i32 %remalteredBB.i to i64
  %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload.i = load volatile i8*, i8** %call2.reg2mem.i, align 8
  %add.ptr27alteredBB.i = getelementptr inbounds i8, i8* %call2.reg2mem.i.0.call2.reg2mem.0.call2.reload.i, i64 %idx.ext26alteredBB.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr24alteredBB.i, i8* %add.ptr27alteredBB.i, i64 60, i32 1, i1 false) #6
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload276.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload277.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload278.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload263.i = load volatile i32, i32* %i.1.reload.reg2mem.i, align 4
  %277 = mul i32 %i.1.reload.reg2mem.i.0.i.1.reload.reg2mem.0.i.1.reload.reload263.i, 61
  %278 = sub i32 0, %277
  %279 = sub i32 0, 60
  %280 = add i32 %278, %279
  %281 = sub i32 0, %280
  %sub30alteredBB.i = add i32 %277, 60
  %idxpromalteredBB.i = sext i32 %281 to i64
  %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload.i = load volatile i8*, i8** %call17.reg2mem.i, align 8
  %arrayidxalteredBB.i = getelementptr inbounds i8, i8* %call17.reg2mem.i.0.call17.reg2mem.0.call17.reload.i, i64 %idxpromalteredBB.i
  store i8 10, i8* %arrayidxalteredBB.i, align 1, !tbaa !1
  br label %loopEntry.i.backedge

originalBB192alteredBB.i:                         ; preds = %loopEntry.i
  br label %loopEntry.i.backedge

repeat_fasta.exit:                                ; preds = %loopEntry.i
  call void @llvm.lifetime.end(i64 4, i8* nonnull %i.2.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %i.1.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %i.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %div35.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %add28.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %cmp19.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call17.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %conv16.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %add.ptr8.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %cmp5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call2.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %conv.reg2mem.i.0..sroa_cast)
  %call2 = tail call i64 @write(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @header2, i64 0, i64 0), i64 25) #6
  tail call fastcc void @random_fasta(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), float* getelementptr inbounds ([15 x float], [15 x float]* @iub_p, i64 0, i64 0), i32 1500000)
  %call4 = tail call i64 @write(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @header3, i64 0, i64 0), i64 30) #6
  tail call fastcc void @random_fasta(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), float* getelementptr inbounds ([4 x float], [4 x float]* @homosapiens_p, i64 0, i64 0), i32 2500000)
  %call6 = tail call i64 @clock() #6
  %282 = add i64 %call6, -8329153260337416300
  %283 = sub i64 %282, %call
  %284 = sub i64 %283, -8329153260337416300
  %sub = sub nsw i64 %call6, %call
  %conv = sitofp i64 %284 to double
  %div = fdiv double %conv, 1.000000e+06
  %call7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %div)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @random_fasta(i8* nocapture readonly %symb, float* nocapture readonly %probability, i32 %n) unnamed_addr #0 {
entry:
  %i.0.reload.reg2mem.i195 = alloca i32, align 4
  %call.reg2mem.i196 = alloca i8*, align 8
  %sum.0.reload.reg2mem.i = alloca float, align 4
  %j.0.reload.reg2mem.i = alloca i32, align 4
  %i.0.reload.reg2mem.i = alloca i32, align 4
  %conv.reg2mem.i = alloca i32, align 4
  %call.reg2mem.i = alloca i8*, align 8
  %k.2.reload.reg2mem = alloca i32, align 4
  %k.1.reload.reg2mem = alloca i32, align 4
  %j.1.reload.reg2mem = alloca i32, align 4
  %k.0.reload.reg2mem = alloca i32, align 4
  %j.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %inc63.reg2mem = alloca i32, align 4
  %sub48.reg2mem = alloca i32, align 4
  %sub.reg2mem = alloca i32, align 4
  %mul21.reg2mem = alloca i32, align 4
  %div2.reg2mem = alloca i32, align 4
  %div.reg2mem = alloca i32, align 4
  %call1.reg2mem = alloca i8*, align 8
  %call.reg2mem = alloca i8*, align 8
  %sum.0.reload.reg2mem.i.0..sroa_cast = bitcast float* %sum.0.reload.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %sum.0.reload.reg2mem.i.0..sroa_cast)
  %j.0.reload.reg2mem.i.0..sroa_cast = bitcast i32* %j.0.reload.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %j.0.reload.reg2mem.i.0..sroa_cast)
  %i.0.reload.reg2mem.i.0..sroa_cast = bitcast i32* %i.0.reload.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %i.0.reload.reg2mem.i.0..sroa_cast)
  %conv.reg2mem.i.0..sroa_cast = bitcast i32* %conv.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %conv.reg2mem.i.0..sroa_cast)
  %call.reg2mem.i.0..sroa_cast = bitcast i8** %call.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call.reg2mem.i.0..sroa_cast)
  %call.i = tail call noalias i8* @malloc(i64 139968) #6
  store i8* %call.i, i8** %call.reg2mem.i, align 8
  br label %loopEntry.i

loopEntry.i:                                      ; preds = %loopEntry.i.backedge, %entry
  %j.1.reg2mem.0.i = phi i32 [ undef, %entry ], [ %j.1.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %sum.1.reg2mem.0.i = phi float [ undef, %entry ], [ %sum.1.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %i.0.reg2mem.0.i = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %j.0.reg2mem.0.i = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %sum.0.reg2mem.0.i = phi float [ undef, %entry ], [ %sum.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %switchVar.0.i = phi i32 [ 1841343482, %entry ], [ %switchVar.0.i.be, %loopEntry.i.backedge ]
  switch i32 %switchVar.0.i, label %loopEntry.i.backedge [
    i32 1841343482, label %first.i
    i32 520262175, label %if.then.i
    i32 -2027864421, label %if.end.i
    i32 -1496671682, label %for.cond.i
    i32 -1264710318, label %land.rhs.i
    i32 -143748052, label %for.body.i
    i32 1729520010, label %if.then9.i
    i32 -449539230, label %if.end11.i
    i32 -1746442703, label %build_hash.exit
  ]

loopEntry.i.backedge:                             ; preds = %loopEntry.i, %first.i, %if.end.i, %for.cond.i, %land.rhs.i, %for.body.i, %if.then9.i, %if.end11.i
  %j.1.reg2mem.0.i.be = phi i32 [ %j.1.reg2mem.0.i, %if.end11.i ], [ %7, %if.then9.i ], [ %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload.i, %for.body.i ], [ %j.1.reg2mem.0.i, %land.rhs.i ], [ %j.1.reg2mem.0.i, %for.cond.i ], [ %j.1.reg2mem.0.i, %if.end.i ], [ %j.1.reg2mem.0.i, %first.i ], [ %j.1.reg2mem.0.i, %loopEntry.i ]
  %sum.1.reg2mem.0.i.be = phi float [ %sum.1.reg2mem.0.i, %if.end11.i ], [ %add.i, %if.then9.i ], [ %sum.0.reload.reg2mem.i.0.sum.0.reload.reg2mem.0.sum.0.reload.reload.i, %for.body.i ], [ %sum.1.reg2mem.0.i, %land.rhs.i ], [ %sum.1.reg2mem.0.i, %for.cond.i ], [ %sum.1.reg2mem.0.i, %if.end.i ], [ %sum.1.reg2mem.0.i, %first.i ], [ %sum.1.reg2mem.0.i, %loopEntry.i ]
  %i.0.reg2mem.0.i.be = phi i32 [ %11, %if.end11.i ], [ %i.0.reg2mem.0.i, %if.then9.i ], [ %i.0.reg2mem.0.i, %for.body.i ], [ %i.0.reg2mem.0.i, %land.rhs.i ], [ %i.0.reg2mem.0.i, %for.cond.i ], [ 0, %if.end.i ], [ %i.0.reg2mem.0.i, %first.i ], [ %i.0.reg2mem.0.i, %loopEntry.i ]
  %j.0.reg2mem.0.i.be = phi i32 [ %j.1.reg2mem.0.i, %if.end11.i ], [ %j.0.reg2mem.0.i, %if.then9.i ], [ %j.0.reg2mem.0.i, %for.body.i ], [ %j.0.reg2mem.0.i, %land.rhs.i ], [ %j.0.reg2mem.0.i, %for.cond.i ], [ 0, %if.end.i ], [ %j.0.reg2mem.0.i, %first.i ], [ %j.0.reg2mem.0.i, %loopEntry.i ]
  %sum.0.reg2mem.0.i.be = phi float [ %sum.1.reg2mem.0.i, %if.end11.i ], [ %sum.0.reg2mem.0.i, %if.then9.i ], [ %sum.0.reg2mem.0.i, %for.body.i ], [ %sum.0.reg2mem.0.i, %land.rhs.i ], [ %sum.0.reg2mem.0.i, %for.cond.i ], [ %1, %if.end.i ], [ %sum.0.reg2mem.0.i, %first.i ], [ %sum.0.reg2mem.0.i, %loopEntry.i ]
  %switchVar.0.i.be = phi i32 [ -1496671682, %if.end11.i ], [ -449539230, %if.then9.i ], [ %4, %for.body.i ], [ %3, %land.rhs.i ], [ %2, %for.cond.i ], [ -1496671682, %if.end.i ], [ %0, %first.i ], [ %switchVar.0.i, %loopEntry.i ]
  br label %loopEntry.i

first.i:                                          ; preds = %loopEntry.i
  %call.reg2mem.i.0.call.reg2mem.0.call.reload.i = load volatile i8*, i8** %call.reg2mem.i, align 8
  %tobool.i = icmp ne i8* %call.reg2mem.i.0.call.reg2mem.0.call.reload.i, null
  %0 = select i1 %tobool.i, i32 -2027864421, i32 520262175
  br label %loopEntry.i.backedge

if.then.i:                                        ; preds = %loopEntry.i
  tail call void @exit(i32 -1) #7
  unreachable

if.end.i:                                         ; preds = %loopEntry.i
  %call1.i = tail call i64 @strlen(i8* %symb) #8
  %conv.i = trunc i64 %call1.i to i32
  store i32 %conv.i, i32* %conv.reg2mem.i, align 4
  %1 = load float, float* %probability, align 4, !tbaa !4
  br label %loopEntry.i.backedge

for.cond.i:                                       ; preds = %loopEntry.i
  store i32 %i.0.reg2mem.0.i, i32* %i.0.reload.reg2mem.i, align 4
  store i32 %j.0.reg2mem.0.i, i32* %j.0.reload.reg2mem.i, align 4
  store float %sum.0.reg2mem.0.i, float* %sum.0.reload.reg2mem.i, align 4
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %cmp.i = icmp slt i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload.i, 139968
  %2 = select i1 %cmp.i, i32 -1264710318, i32 -1746442703
  br label %loopEntry.i.backedge

land.rhs.i:                                       ; preds = %loopEntry.i
  %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload.i = load volatile i32, i32* %conv.reg2mem.i, align 4
  %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload40.i = load volatile i32, i32* %j.0.reload.reg2mem.i, align 4
  %cmp3.i = icmp slt i32 %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload40.i, %conv.reg2mem.i.0.conv.reg2mem.0.conv.reload.i
  %3 = select i1 %cmp3.i, i32 -143748052, i32 -1746442703
  br label %loopEntry.i.backedge

for.body.i:                                       ; preds = %loopEntry.i
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload37.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %conv5.i = sitofp i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload37.i to double
  %div.i = fdiv double %conv5.i, 1.399680e+05
  %conv6.i = fptrunc double %div.i to float
  %sum.0.reload.reg2mem.i.0.sum.0.reload.reg2mem.0.sum.0.reload.reload42.i = load volatile float, float* %sum.0.reload.reg2mem.i, align 4
  %cmp7.i = fcmp oge float %conv6.i, %sum.0.reload.reg2mem.i.0.sum.0.reload.reg2mem.0.sum.0.reload.reload42.i
  %4 = select i1 %cmp7.i, i32 1729520010, i32 -449539230
  %sum.0.reload.reg2mem.i.0.sum.0.reload.reg2mem.0.sum.0.reload.reload.i = load volatile float, float* %sum.0.reload.reg2mem.i, align 4
  %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload.i = load volatile i32, i32* %j.0.reload.reg2mem.i, align 4
  br label %loopEntry.i.backedge

if.then9.i:                                       ; preds = %loopEntry.i
  %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload41.i = load volatile i32, i32* %j.0.reload.reg2mem.i, align 4
  %5 = sub i32 %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload41.i, 386730336
  %6 = add i32 %5, 1
  %7 = add i32 %6, 386730336
  %inc.i = add nsw i32 %j.0.reload.reg2mem.i.0.j.0.reload.reg2mem.0.j.0.reload.reload41.i, 1
  %idxprom.i = sext i32 %7 to i64
  %arrayidx10.i = getelementptr inbounds float, float* %probability, i64 %idxprom.i
  %8 = load float, float* %arrayidx10.i, align 4, !tbaa !4
  %sum.0.reload.reg2mem.i.0.sum.0.reload.reg2mem.0.sum.0.reload.reload43.i = load volatile float, float* %sum.0.reload.reg2mem.i, align 4
  %add.i = fadd float %8, %sum.0.reload.reg2mem.i.0.sum.0.reload.reg2mem.0.sum.0.reload.reload43.i
  br label %loopEntry.i.backedge

if.end11.i:                                       ; preds = %loopEntry.i
  %idxprom12.i = sext i32 %j.1.reg2mem.0.i to i64
  %arrayidx13.i = getelementptr inbounds i8, i8* %symb, i64 %idxprom12.i
  %9 = load i8, i8* %arrayidx13.i, align 1, !tbaa !1
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload38.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %idxprom14.i = sext i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload38.i to i64
  %call.reg2mem.i.0.call.reg2mem.0.call.reload35.i = load volatile i8*, i8** %call.reg2mem.i, align 8
  %arrayidx15.i = getelementptr inbounds i8, i8* %call.reg2mem.i.0.call.reg2mem.0.call.reload35.i, i64 %idxprom14.i
  store i8 %9, i8* %arrayidx15.i, align 1, !tbaa !1
  %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload39.i = load volatile i32, i32* %i.0.reload.reg2mem.i, align 4
  %10 = sub i32 0, 1
  %11 = sub i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload39.i, %10
  %inc16.i = add nsw i32 %i.0.reload.reg2mem.i.0.i.0.reload.reg2mem.0.i.0.reload.reload39.i, 1
  br label %loopEntry.i.backedge

build_hash.exit:                                  ; preds = %loopEntry.i
  %call.reg2mem.i.0.call.reg2mem.0.call.reload36.i = load volatile i8*, i8** %call.reg2mem.i, align 8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %sum.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %j.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %i.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %conv.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call.reg2mem.i.0..sroa_cast)
  store i8* %call.reg2mem.i.0.call.reg2mem.0.call.reload36.i, i8** %call.reg2mem, align 8
  %i.0.reload.reg2mem.i195.0..sroa_cast = bitcast i32* %i.0.reload.reg2mem.i195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %i.0.reload.reg2mem.i195.0..sroa_cast)
  %call.reg2mem.i196.0..sroa_cast = bitcast i8** %call.reg2mem.i196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call.reg2mem.i196.0..sroa_cast)
  %call.i197 = tail call noalias i8* @malloc(i64 6100) #6
  store i8* %call.i197, i8** %call.reg2mem.i196, align 8
  br label %loopEntry.i200

loopEntry.i200:                                   ; preds = %loopEntry.i200.backedge, %build_hash.exit
  %i.0.reg2mem.0.i198 = phi i32 [ undef, %build_hash.exit ], [ %i.0.reg2mem.0.i198.be, %loopEntry.i200.backedge ]
  %switchVar.0.i199 = phi i32 [ 1802414332, %build_hash.exit ], [ %switchVar.0.i199.be, %loopEntry.i200.backedge ]
  switch i32 %switchVar.0.i199, label %loopEntry.i200.backedge [
    i32 1802414332, label %first.i203
    i32 -1823497959, label %if.then.i204
    i32 -673521441, label %if.end.i205
    i32 -1886222226, label %for.cond.i208
    i32 851908182, label %for.cond.cleanup.i
    i32 734642129, label %originalBB.i
    i32 155676198, label %buffer_with_linebreaks.exit
    i32 -1954495947, label %for.body.i212
    i32 -2100843505, label %originalBBalteredBB.i
  ]

loopEntry.i200.backedge:                          ; preds = %loopEntry.i200, %first.i203, %if.end.i205, %for.cond.i208, %for.cond.cleanup.i, %originalBB.i, %for.body.i212, %originalBBalteredBB.i
  %i.0.reg2mem.0.i198.be = phi i32 [ %i.0.reg2mem.0.i198, %originalBBalteredBB.i ], [ %72, %for.body.i212 ], [ %i.0.reg2mem.0.i198, %originalBB.i ], [ %i.0.reg2mem.0.i198, %for.cond.cleanup.i ], [ %i.0.reg2mem.0.i198, %for.cond.i208 ], [ 0, %if.end.i205 ], [ %i.0.reg2mem.0.i198, %first.i203 ], [ %i.0.reg2mem.0.i198, %loopEntry.i200 ]
  %switchVar.0.i199.be = phi i32 [ 734642129, %originalBBalteredBB.i ], [ -1886222226, %for.body.i212 ], [ %66, %originalBB.i ], [ %36, %for.cond.cleanup.i ], [ %13, %for.cond.i208 ], [ -1886222226, %if.end.i205 ], [ %12, %first.i203 ], [ %switchVar.0.i199, %loopEntry.i200 ]
  br label %loopEntry.i200

first.i203:                                       ; preds = %loopEntry.i200
  %call.reg2mem.i196.0.call.reg2mem.0.call.reload.i201 = load volatile i8*, i8** %call.reg2mem.i196, align 8
  %tobool.i202 = icmp ne i8* %call.reg2mem.i196.0.call.reg2mem.0.call.reload.i201, null
  %12 = select i1 %tobool.i202, i32 -673521441, i32 -1823497959
  br label %loopEntry.i200.backedge

if.then.i204:                                     ; preds = %loopEntry.i200
  tail call void @exit(i32 -1) #7
  unreachable

if.end.i205:                                      ; preds = %loopEntry.i200
  br label %loopEntry.i200.backedge

for.cond.i208:                                    ; preds = %loopEntry.i200
  store i32 %i.0.reg2mem.0.i198, i32* %i.0.reload.reg2mem.i195, align 4
  %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload.i206 = load volatile i32, i32* %i.0.reload.reg2mem.i195, align 4
  %cmp.i207 = icmp slt i32 %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload.i206, 100
  %13 = select i1 %cmp.i207, i32 -1954495947, i32 851908182
  br label %loopEntry.i200.backedge

for.cond.cleanup.i:                               ; preds = %loopEntry.i200
  %14 = load i32, i32* @x.11, align 4
  %15 = load i32, i32* @y.12, align 4
  %16 = sub i32 0, %14
  %17 = sub i32 0, -1
  %18 = add i32 %16, %17
  %19 = sub i32 0, %18
  %20 = add i32 %14, -1
  %21 = mul i32 %19, %14
  %22 = xor i32 %21, -1
  %23 = xor i32 1, -1
  %24 = xor i32 -117752206, -1
  %25 = or i32 %22, %23
  %26 = or i32 -117752206, %24
  %27 = xor i32 %25, -1
  %28 = and i32 %27, %26
  %29 = and i32 %21, 1
  %30 = icmp eq i32 %28, 0
  %31 = icmp slt i32 %15, 10
  %32 = and i1 %31, %30
  %33 = xor i1 %31, %30
  %34 = or i1 %32, %33
  %35 = or i1 %31, %30
  %36 = select i1 %34, i32 734642129, i32 -2100843505
  br label %loopEntry.i200.backedge

originalBB.i:                                     ; preds = %loopEntry.i200
  %37 = load i32, i32* @x.11, align 4
  %38 = load i32, i32* @y.12, align 4
  %39 = add i32 %37, -965684621
  %40 = add i32 %39, -1
  %41 = sub i32 %40, -965684621
  %42 = add i32 %37, -1
  %43 = mul i32 %41, %37
  %44 = xor i32 1, -1
  %45 = xor i32 %43, %44
  %46 = and i32 %45, %43
  %47 = and i32 %43, 1
  %48 = icmp eq i32 %46, 0
  %49 = icmp slt i32 %38, 10
  %50 = xor i1 %49, true
  %51 = xor i1 %48, true
  %52 = xor i1 false, true
  %53 = and i1 %50, false
  %54 = and i1 %49, %52
  %55 = and i1 %51, false
  %56 = and i1 %48, %52
  %57 = or i1 %53, %54
  %58 = or i1 %55, %56
  %59 = xor i1 %57, %58
  %60 = or i1 %50, %51
  %61 = xor i1 %60, true
  %62 = or i1 false, %52
  %63 = and i1 %61, %62
  %64 = or i1 %59, %63
  %65 = or i1 %49, %48
  %66 = select i1 %64, i32 155676198, i32 -2100843505
  br label %loopEntry.i200.backedge

for.body.i212:                                    ; preds = %loopEntry.i200
  %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload13.i = load volatile i32, i32* %i.0.reload.reg2mem.i195, align 4
  %mul2.i = mul nsw i32 %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload13.i, 61
  %67 = add i32 %mul2.i, 2081953618
  %68 = add i32 %67, 60
  %69 = sub i32 %68, 2081953618
  %add.i209 = add nsw i32 %mul2.i, 60
  %idxprom.i210 = sext i32 %69 to i64
  %call.reg2mem.i196.0.call.reg2mem.0.call.reload11.i = load volatile i8*, i8** %call.reg2mem.i196, align 8
  %arrayidx.i = getelementptr inbounds i8, i8* %call.reg2mem.i196.0.call.reg2mem.0.call.reload11.i, i64 %idxprom.i210
  store i8 10, i8* %arrayidx.i, align 1, !tbaa !1
  %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload14.i = load volatile i32, i32* %i.0.reload.reg2mem.i195, align 4
  %70 = add i32 %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload14.i, 2071265805
  %71 = add i32 %70, 1
  %72 = sub i32 %71, 2071265805
  %inc.i211 = add nsw i32 %i.0.reload.reg2mem.i195.0.i.0.reload.reg2mem.0.i.0.reload.reload14.i, 1
  br label %loopEntry.i200.backedge

originalBBalteredBB.i:                            ; preds = %loopEntry.i200
  br label %loopEntry.i200.backedge

buffer_with_linebreaks.exit:                      ; preds = %loopEntry.i200
  %call.reg2mem.i196.0.call.reg2mem.0.call.reload12.i = load volatile i8*, i8** %call.reg2mem.i196, align 8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %i.0.reload.reg2mem.i195.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call.reg2mem.i196.0..sroa_cast)
  store i8* %call.reg2mem.i196.0.call.reg2mem.0.call.reload12.i, i8** %call1.reg2mem, align 8
  %div = sdiv i32 %n, 60
  store i32 %div, i32* %div.reg2mem, align 4
  %div.reg2mem.0.div.reload157 = load volatile i32, i32* %div.reg2mem, align 4
  %div2 = sdiv i32 %div.reg2mem.0.div.reload157, 100
  store i32 %div2, i32* %div2.reg2mem, align 4
  %rem68 = srem i32 %n, 60
  %cmp69 = icmp ne i32 %rem68, 0
  %73 = select i1 %cmp69, i32 1960697860, i32 1634084787
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %buffer_with_linebreaks.exit
  %k.2.reg2mem.0 = phi i32 [ undef, %buffer_with_linebreaks.exit ], [ %k.2.reg2mem.0.be, %loopEntry.backedge ]
  %k.1.reg2mem.0 = phi i32 [ undef, %buffer_with_linebreaks.exit ], [ %k.1.reg2mem.0.be, %loopEntry.backedge ]
  %j.1.reg2mem.0 = phi i32 [ undef, %buffer_with_linebreaks.exit ], [ %j.1.reg2mem.0.be, %loopEntry.backedge ]
  %k.0.reg2mem.0 = phi i32 [ undef, %buffer_with_linebreaks.exit ], [ %k.0.reg2mem.0.be, %loopEntry.backedge ]
  %j.0.reg2mem.0 = phi i32 [ undef, %buffer_with_linebreaks.exit ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %buffer_with_linebreaks.exit ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 112487898, %buffer_with_linebreaks.exit ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 112487898, label %for.cond
    i32 1227658859, label %for.body
    i32 -1452274937, label %for.cond3
    i32 1969232341, label %for.body5
    i32 647211305, label %for.cond6
    i32 283813475, label %for.body8
    i32 -1345974586, label %for.inc13
    i32 584093762, label %for.end15
    i32 -2009927720, label %for.end19
    i32 -2016221360, label %for.cond22
    i32 -1946578532, label %for.body24
    i32 37751909, label %for.cond25
    i32 1001610641, label %for.body27
    i32 1415938760, label %for.inc41
    i32 1095775575, label %for.end43
    i32 1721849148, label %for.cond49
    i32 1021417067, label %for.body51
    i32 -337150493, label %originalBB
    i32 246822644, label %originalBBpart2
    i32 -574715420, label %for.end64
    i32 1960697860, label %if.then
    i32 1634084787, label %if.end
    i32 -634006096, label %originalBBalteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBBalteredBB, %if.then, %for.end64, %originalBBpart2, %originalBB, %for.body51, %for.cond49, %for.end43, %for.inc41, %for.body27, %for.cond25, %for.body24, %for.cond22, %for.end19, %for.end15, %for.inc13, %for.body8, %for.cond6, %for.body5, %for.cond3, %for.body, %for.cond
  %k.2.reg2mem.0.be = phi i32 [ %k.2.reg2mem.0, %originalBBalteredBB ], [ %k.2.reg2mem.0, %if.then ], [ %k.2.reg2mem.0, %for.end64 ], [ %inc63.reg2mem.0.inc63.reload, %originalBBpart2 ], [ %k.2.reg2mem.0, %originalBB ], [ %k.2.reg2mem.0, %for.body51 ], [ %k.2.reg2mem.0, %for.cond49 ], [ 0, %for.end43 ], [ %k.2.reg2mem.0, %for.inc41 ], [ %k.2.reg2mem.0, %for.body27 ], [ %k.2.reg2mem.0, %for.cond25 ], [ %k.2.reg2mem.0, %for.body24 ], [ %k.2.reg2mem.0, %for.cond22 ], [ %k.2.reg2mem.0, %for.end19 ], [ %k.2.reg2mem.0, %for.end15 ], [ %k.2.reg2mem.0, %for.inc13 ], [ %k.2.reg2mem.0, %for.body8 ], [ %k.2.reg2mem.0, %for.cond6 ], [ %k.2.reg2mem.0, %for.body5 ], [ %k.2.reg2mem.0, %for.cond3 ], [ %k.2.reg2mem.0, %for.body ], [ %k.2.reg2mem.0, %for.cond ], [ %k.2.reg2mem.0, %loopEntry ]
  %k.1.reg2mem.0.be = phi i32 [ %k.1.reg2mem.0, %originalBBalteredBB ], [ %k.1.reg2mem.0, %if.then ], [ %k.1.reg2mem.0, %for.end64 ], [ %k.1.reg2mem.0, %originalBBpart2 ], [ %k.1.reg2mem.0, %originalBB ], [ %k.1.reg2mem.0, %for.body51 ], [ %k.1.reg2mem.0, %for.cond49 ], [ %k.1.reg2mem.0, %for.end43 ], [ %k.1.reg2mem.0, %for.inc41 ], [ %109, %for.body27 ], [ %k.1.reg2mem.0, %for.cond25 ], [ 0, %for.body24 ], [ %k.1.reg2mem.0, %for.cond22 ], [ %k.1.reg2mem.0, %for.end19 ], [ %k.1.reg2mem.0, %for.end15 ], [ %k.1.reg2mem.0, %for.inc13 ], [ %k.1.reg2mem.0, %for.body8 ], [ %k.1.reg2mem.0, %for.cond6 ], [ %k.1.reg2mem.0, %for.body5 ], [ %k.1.reg2mem.0, %for.cond3 ], [ %k.1.reg2mem.0, %for.body ], [ %k.1.reg2mem.0, %for.cond ], [ %k.1.reg2mem.0, %loopEntry ]
  %j.1.reg2mem.0.be = phi i32 [ %j.1.reg2mem.0, %originalBBalteredBB ], [ %j.1.reg2mem.0, %if.then ], [ %j.1.reg2mem.0, %for.end64 ], [ %j.1.reg2mem.0, %originalBBpart2 ], [ %j.1.reg2mem.0, %originalBB ], [ %j.1.reg2mem.0, %for.body51 ], [ %j.1.reg2mem.0, %for.cond49 ], [ %j.1.reg2mem.0, %for.end43 ], [ %111, %for.inc41 ], [ %j.1.reg2mem.0, %for.body27 ], [ %j.1.reg2mem.0, %for.cond25 ], [ %j.1.reg2mem.0, %for.body24 ], [ %j.1.reg2mem.0, %for.cond22 ], [ 0, %for.end19 ], [ %j.1.reg2mem.0, %for.end15 ], [ %j.1.reg2mem.0, %for.inc13 ], [ %j.1.reg2mem.0, %for.body8 ], [ %j.1.reg2mem.0, %for.cond6 ], [ %j.1.reg2mem.0, %for.body5 ], [ %j.1.reg2mem.0, %for.cond3 ], [ %j.1.reg2mem.0, %for.body ], [ %j.1.reg2mem.0, %for.cond ], [ %j.1.reg2mem.0, %loopEntry ]
  %k.0.reg2mem.0.be = phi i32 [ %k.0.reg2mem.0, %originalBBalteredBB ], [ %k.0.reg2mem.0, %if.then ], [ %k.0.reg2mem.0, %for.end64 ], [ %k.0.reg2mem.0, %originalBBpart2 ], [ %k.0.reg2mem.0, %originalBB ], [ %k.0.reg2mem.0, %for.body51 ], [ %k.0.reg2mem.0, %for.cond49 ], [ %k.0.reg2mem.0, %for.end43 ], [ %k.0.reg2mem.0, %for.inc41 ], [ %k.0.reg2mem.0, %for.body27 ], [ %k.0.reg2mem.0, %for.cond25 ], [ %k.0.reg2mem.0, %for.body24 ], [ %k.0.reg2mem.0, %for.cond22 ], [ %k.0.reg2mem.0, %for.end19 ], [ %k.0.reg2mem.0, %for.end15 ], [ %k.0.reg2mem.0, %for.inc13 ], [ %87, %for.body8 ], [ %k.0.reg2mem.0, %for.cond6 ], [ 0, %for.body5 ], [ %k.0.reg2mem.0, %for.cond3 ], [ %k.0.reg2mem.0, %for.body ], [ %k.0.reg2mem.0, %for.cond ], [ %k.0.reg2mem.0, %loopEntry ]
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %if.then ], [ %j.0.reg2mem.0, %for.end64 ], [ %j.0.reg2mem.0, %originalBBpart2 ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %for.body51 ], [ %j.0.reg2mem.0, %for.cond49 ], [ %j.0.reg2mem.0, %for.end43 ], [ %j.0.reg2mem.0, %for.inc41 ], [ %j.0.reg2mem.0, %for.body27 ], [ %j.0.reg2mem.0, %for.cond25 ], [ %j.0.reg2mem.0, %for.body24 ], [ %j.0.reg2mem.0, %for.cond22 ], [ %j.0.reg2mem.0, %for.end19 ], [ %j.0.reg2mem.0, %for.end15 ], [ %90, %for.inc13 ], [ %j.0.reg2mem.0, %for.body8 ], [ %j.0.reg2mem.0, %for.cond6 ], [ %j.0.reg2mem.0, %for.body5 ], [ %j.0.reg2mem.0, %for.cond3 ], [ 0, %for.body ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %if.then ], [ %i.0.reg2mem.0, %for.end64 ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.body51 ], [ %i.0.reg2mem.0, %for.cond49 ], [ %i.0.reg2mem.0, %for.end43 ], [ %i.0.reg2mem.0, %for.inc41 ], [ %i.0.reg2mem.0, %for.body27 ], [ %i.0.reg2mem.0, %for.cond25 ], [ %i.0.reg2mem.0, %for.body24 ], [ %i.0.reg2mem.0, %for.cond22 ], [ %i.0.reg2mem.0, %for.end19 ], [ %93, %for.end15 ], [ %i.0.reg2mem.0, %for.inc13 ], [ %i.0.reg2mem.0, %for.body8 ], [ %i.0.reg2mem.0, %for.cond6 ], [ %i.0.reg2mem.0, %for.body5 ], [ %i.0.reg2mem.0, %for.cond3 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -337150493, %originalBBalteredBB ], [ 1634084787, %if.then ], [ %73, %for.end64 ], [ 1721849148, %originalBBpart2 ], [ %182, %originalBB ], [ %153, %for.body51 ], [ %118, %for.cond49 ], [ 1721849148, %for.end43 ], [ -2016221360, %for.inc41 ], [ 37751909, %for.body27 ], [ %97, %for.cond25 ], [ 37751909, %for.body24 ], [ %96, %for.cond22 ], [ -2016221360, %for.end19 ], [ 112487898, %for.end15 ], [ -1452274937, %for.inc13 ], [ 647211305, %for.body8 ], [ %76, %for.cond6 ], [ 647211305, %for.body5 ], [ %75, %for.cond3 ], [ -1452274937, %for.body ], [ %74, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %div2.reg2mem.0.div2.reload = load volatile i32, i32* %div2.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %div2.reg2mem.0.div2.reload
  %74 = select i1 %cmp, i32 1227658859, i32 -2009927720
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond3:                                        ; preds = %loopEntry
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp4 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload, 100
  %75 = select i1 %cmp4, i32 1969232341, i32 584093762
  br label %loopEntry.backedge

for.body5:                                        ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond6:                                        ; preds = %loopEntry
  store i32 %k.0.reg2mem.0, i32* %k.0.reload.reg2mem, align 4
  %k.0.reload.reg2mem.0.k.0.reload.reload = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %cmp7 = icmp slt i32 %k.0.reload.reg2mem.0.k.0.reload.reload, 60
  %76 = select i1 %cmp7, i32 283813475, i32 -1345974586
  br label %loopEntry.backedge

for.body8:                                        ; preds = %loopEntry
  %77 = load i32, i32* @seed, align 4, !tbaa !6
  %mul = mul i32 %77, 3877
  %78 = sub i32 0, %mul
  %79 = sub i32 0, 29573
  %80 = add i32 %78, %79
  %81 = sub i32 0, %80
  %add = add i32 %mul, 29573
  %rem = urem i32 %81, 139968
  store i32 %rem, i32* @seed, align 4, !tbaa !6
  %idxprom = zext i32 %rem to i64
  %call.reg2mem.0.call.reload147 = load volatile i8*, i8** %call.reg2mem, align 8
  %arrayidx = getelementptr inbounds i8, i8* %call.reg2mem.0.call.reload147, i64 %idxprom
  %82 = load i8, i8* %arrayidx, align 1, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload171 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %mul9 = mul nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload171, 61
  %k.0.reload.reg2mem.0.k.0.reload.reload173 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %83 = sub i32 0, %k.0.reload.reg2mem.0.k.0.reload.reload173
  %84 = sub i32 %mul9, %83
  %add10 = add nsw i32 %mul9, %k.0.reload.reg2mem.0.k.0.reload.reload173
  %idxprom11 = sext i32 %84 to i64
  %call1.reg2mem.0.call1.reload151 = load volatile i8*, i8** %call1.reg2mem, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %call1.reg2mem.0.call1.reload151, i64 %idxprom11
  store i8 %82, i8* %arrayidx12, align 1, !tbaa !1
  %k.0.reload.reg2mem.0.k.0.reload.reload174 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %85 = sub i32 %k.0.reload.reg2mem.0.k.0.reload.reload174, -900035476
  %86 = add i32 %85, 1
  %87 = add i32 %86, -900035476
  %inc = add nsw i32 %k.0.reload.reg2mem.0.k.0.reload.reload174, 1
  br label %loopEntry.backedge

for.inc13:                                        ; preds = %loopEntry
  %j.0.reload.reg2mem.0.j.0.reload.reload172 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %88 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload172, -660832243
  %89 = add i32 %88, 1
  %90 = add i32 %89, -660832243
  %inc14 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload172, 1
  br label %loopEntry.backedge

for.end15:                                        ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload152 = load volatile i8*, i8** %call1.reg2mem, align 8
  %call16 = tail call i64 @write(i32 1, i8* %call1.reg2mem.0.call1.reload152, i64 6100) #6
  %i.0.reload.reg2mem.0.i.0.reload.reload170 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %91 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload170, 1890324911
  %92 = add i32 %91, 1
  %93 = add i32 %92, 1890324911
  %inc18 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload170, 1
  br label %loopEntry.backedge

for.end19:                                        ; preds = %loopEntry
  %div2.reg2mem.0.div2.reload158 = load volatile i32, i32* %div2.reg2mem, align 4
  %mul21 = mul nsw i32 %div2.reg2mem.0.div2.reload158, 100
  store i32 %mul21, i32* %mul21.reg2mem, align 4
  %div.reg2mem.0.div.reload = load volatile i32, i32* %div.reg2mem, align 4
  %mul21.reg2mem.0.mul21.reload159 = load volatile i32, i32* %mul21.reg2mem, align 4
  %94 = sub i32 0, %mul21.reg2mem.0.mul21.reload159
  %95 = add i32 %div.reg2mem.0.div.reload, %94
  %sub = sub nsw i32 %div.reg2mem.0.div.reload, %mul21.reg2mem.0.mul21.reload159
  store i32 %95, i32* %sub.reg2mem, align 4
  br label %loopEntry.backedge

for.cond22:                                       ; preds = %loopEntry
  store i32 %j.1.reg2mem.0, i32* %j.1.reload.reg2mem, align 4
  %sub.reg2mem.0.sub.reload165 = load volatile i32, i32* %sub.reg2mem, align 4
  %j.1.reload.reg2mem.0.j.1.reload.reload = load volatile i32, i32* %j.1.reload.reg2mem, align 4
  %cmp23 = icmp slt i32 %j.1.reload.reg2mem.0.j.1.reload.reload, %sub.reg2mem.0.sub.reload165
  %96 = select i1 %cmp23, i32 -1946578532, i32 1095775575
  br label %loopEntry.backedge

for.body24:                                       ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond25:                                       ; preds = %loopEntry
  store i32 %k.1.reg2mem.0, i32* %k.1.reload.reg2mem, align 4
  %k.1.reload.reg2mem.0.k.1.reload.reload = load volatile i32, i32* %k.1.reload.reg2mem, align 4
  %cmp26 = icmp slt i32 %k.1.reload.reg2mem.0.k.1.reload.reload, 60
  %97 = select i1 %cmp26, i32 1001610641, i32 1415938760
  br label %loopEntry.backedge

for.body27:                                       ; preds = %loopEntry
  %98 = load i32, i32* @seed, align 4, !tbaa !6
  %mul29 = mul i32 %98, 3877
  %99 = add i32 %mul29, -1472646632
  %100 = add i32 %99, 29573
  %101 = sub i32 %100, -1472646632
  %add30 = add i32 %mul29, 29573
  %rem31 = urem i32 %101, 139968
  store i32 %rem31, i32* @seed, align 4, !tbaa !6
  %idxprom32 = zext i32 %rem31 to i64
  %call.reg2mem.0.call.reload148 = load volatile i8*, i8** %call.reg2mem, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %call.reg2mem.0.call.reload148, i64 %idxprom32
  %102 = load i8, i8* %arrayidx33, align 1, !tbaa !1
  %j.1.reload.reg2mem.0.j.1.reload.reload175 = load volatile i32, i32* %j.1.reload.reg2mem, align 4
  %mul34 = mul nsw i32 %j.1.reload.reg2mem.0.j.1.reload.reload175, 61
  %k.1.reload.reg2mem.0.k.1.reload.reload177 = load volatile i32, i32* %k.1.reload.reg2mem, align 4
  %103 = sub i32 0, %mul34
  %104 = sub i32 0, %k.1.reload.reg2mem.0.k.1.reload.reload177
  %105 = add i32 %103, %104
  %106 = sub i32 0, %105
  %add35 = add nsw i32 %mul34, %k.1.reload.reg2mem.0.k.1.reload.reload177
  %idxprom36 = sext i32 %106 to i64
  %call1.reg2mem.0.call1.reload153 = load volatile i8*, i8** %call1.reg2mem, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %call1.reg2mem.0.call1.reload153, i64 %idxprom36
  store i8 %102, i8* %arrayidx37, align 1, !tbaa !1
  %k.1.reload.reg2mem.0.k.1.reload.reload178 = load volatile i32, i32* %k.1.reload.reg2mem, align 4
  %107 = sub i32 %k.1.reload.reg2mem.0.k.1.reload.reload178, -1552476446
  %108 = add i32 %107, 1
  %109 = add i32 %108, -1552476446
  %inc39 = add nsw i32 %k.1.reload.reg2mem.0.k.1.reload.reload178, 1
  br label %loopEntry.backedge

for.inc41:                                        ; preds = %loopEntry
  %j.1.reload.reg2mem.0.j.1.reload.reload176 = load volatile i32, i32* %j.1.reload.reg2mem, align 4
  %110 = sub i32 0, 1
  %111 = sub i32 %j.1.reload.reg2mem.0.j.1.reload.reload176, %110
  %inc42 = add nsw i32 %j.1.reload.reg2mem.0.j.1.reload.reload176, 1
  br label %loopEntry.backedge

for.end43:                                        ; preds = %loopEntry
  %sub.reg2mem.0.sub.reload166 = load volatile i32, i32* %sub.reg2mem, align 4
  %mul21.reg2mem.0.mul21.reload = load volatile i32, i32* %mul21.reg2mem, align 4
  %112 = add i32 %mul21.reg2mem.0.mul21.reload, -292211367
  %113 = add i32 %112, %sub.reg2mem.0.sub.reload166
  %114 = sub i32 %113, -292211367
  %tmp = add i32 %mul21.reg2mem.0.mul21.reload, %sub.reg2mem.0.sub.reload166
  %tmp220 = mul i32 %114, -60
  %115 = sub i32 %tmp220, -1058027283
  %116 = add i32 %115, %n
  %117 = add i32 %116, -1058027283
  %sub48 = add i32 %tmp220, %n
  store i32 %117, i32* %sub48.reg2mem, align 4
  br label %loopEntry.backedge

for.cond49:                                       ; preds = %loopEntry
  store i32 %k.2.reg2mem.0, i32* %k.2.reload.reg2mem, align 4
  %sub48.reg2mem.0.sub48.reload = load volatile i32, i32* %sub48.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %cmp50 = icmp slt i32 %k.2.reload.reg2mem.0.k.2.reload.reload, %sub48.reg2mem.0.sub48.reload
  %118 = select i1 %cmp50, i32 1021417067, i32 -574715420
  br label %loopEntry.backedge

for.body51:                                       ; preds = %loopEntry
  %119 = load i32, i32* @x.7, align 4
  %120 = load i32, i32* @y.8, align 4
  %121 = sub i32 0, %119
  %122 = sub i32 0, -1
  %123 = add i32 %121, %122
  %124 = sub i32 0, %123
  %125 = add i32 %119, -1
  %126 = mul i32 %124, %119
  %127 = xor i32 %126, -1
  %128 = xor i32 1, -1
  %129 = xor i32 177420976, -1
  %130 = or i32 %127, %128
  %131 = or i32 177420976, %129
  %132 = xor i32 %130, -1
  %133 = and i32 %132, %131
  %134 = and i32 %126, 1
  %135 = icmp eq i32 %133, 0
  %136 = icmp slt i32 %120, 10
  %137 = xor i1 %136, true
  %138 = xor i1 %135, true
  %139 = xor i1 false, true
  %140 = and i1 %137, false
  %141 = and i1 %136, %139
  %142 = and i1 %138, false
  %143 = and i1 %135, %139
  %144 = or i1 %140, %141
  %145 = or i1 %142, %143
  %146 = xor i1 %144, %145
  %147 = or i1 %137, %138
  %148 = xor i1 %147, true
  %149 = or i1 false, %139
  %150 = and i1 %148, %149
  %151 = or i1 %146, %150
  %152 = or i1 %136, %135
  %153 = select i1 %151, i32 -337150493, i32 -634006096
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %154 = load i32, i32* @seed, align 4, !tbaa !6
  %mul53 = mul i32 %154, 3877
  %155 = add i32 %mul53, 569296598
  %156 = add i32 %155, 29573
  %157 = sub i32 %156, 569296598
  %add54 = add i32 %mul53, 29573
  %rem55 = urem i32 %157, 139968
  store i32 %rem55, i32* @seed, align 4, !tbaa !6
  %idxprom56 = zext i32 %rem55 to i64
  %call.reg2mem.0.call.reload149 = load volatile i8*, i8** %call.reg2mem, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %call.reg2mem.0.call.reload149, i64 %idxprom56
  %158 = load i8, i8* %arrayidx57, align 1, !tbaa !1
  %sub.reg2mem.0.sub.reload167 = load volatile i32, i32* %sub.reg2mem, align 4
  %mul58 = mul nsw i32 %sub.reg2mem.0.sub.reload167, 61
  %k.2.reload.reg2mem.0.k.2.reload.reload179 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %159 = sub i32 0, %mul58
  %160 = sub i32 0, %k.2.reload.reg2mem.0.k.2.reload.reload179
  %161 = add i32 %159, %160
  %162 = sub i32 0, %161
  %add59 = add nsw i32 %mul58, %k.2.reload.reg2mem.0.k.2.reload.reload179
  %idxprom60 = sext i32 %162 to i64
  %call1.reg2mem.0.call1.reload154 = load volatile i8*, i8** %call1.reg2mem, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %call1.reg2mem.0.call1.reload154, i64 %idxprom60
  store i8 %158, i8* %arrayidx61, align 1, !tbaa !1
  %k.2.reload.reg2mem.0.k.2.reload.reload180 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %163 = add i32 %k.2.reload.reg2mem.0.k.2.reload.reload180, 1795363155
  %164 = add i32 %163, 1
  %165 = sub i32 %164, 1795363155
  %inc63 = add nsw i32 %k.2.reload.reg2mem.0.k.2.reload.reload180, 1
  store i32 %165, i32* %inc63.reg2mem, align 4
  %166 = load i32, i32* @x.7, align 4
  %167 = load i32, i32* @y.8, align 4
  %168 = sub i32 0, -1
  %169 = sub i32 %166, %168
  %170 = add i32 %166, -1
  %171 = mul i32 %169, %166
  %172 = xor i32 1, -1
  %173 = xor i32 %171, %172
  %174 = and i32 %173, %171
  %175 = and i32 %171, 1
  %176 = icmp eq i32 %174, 0
  %177 = icmp slt i32 %167, 10
  %178 = and i1 %177, %176
  %179 = xor i1 %177, %176
  %180 = or i1 %178, %179
  %181 = or i1 %177, %176
  %182 = select i1 %180, i32 246822644, i32 -634006096
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %inc63.reg2mem.0.inc63.reload = load volatile i32, i32* %inc63.reg2mem, align 4
  br label %loopEntry.backedge

for.end64:                                        ; preds = %loopEntry
  %sub.reg2mem.0.sub.reload168 = load volatile i32, i32* %sub.reg2mem, align 4
  %mul65 = mul nsw i32 %sub.reg2mem.0.sub.reload168, 61
  %sub48.reg2mem.0.sub48.reload169 = load volatile i32, i32* %sub48.reg2mem, align 4
  %183 = sub i32 0, %sub48.reg2mem.0.sub48.reload169
  %184 = sub i32 %mul65, %183
  %add66 = add nsw i32 %mul65, %sub48.reg2mem.0.sub48.reload169
  %conv = sext i32 %184 to i64
  %call1.reg2mem.0.call1.reload155 = load volatile i8*, i8** %call1.reg2mem, align 8
  %call67 = tail call i64 @write(i32 1, i8* %call1.reg2mem.0.call1.reload155, i64 %conv) #6
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %call71 = tail call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1) #6
  br label %loopEntry.backedge

if.end:                                           ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload156 = load volatile i8*, i8** %call1.reg2mem, align 8
  tail call void @free(i8* %call1.reg2mem.0.call1.reload156) #6
  %call.reg2mem.0.call.reload150 = load volatile i8*, i8** %call.reg2mem, align 8
  tail call void @free(i8* %call.reg2mem.0.call.reload150) #6
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  %185 = load i32, i32* @seed, align 4, !tbaa !6
  %mul53alteredBB = mul i32 %185, 3877
  %186 = sub i32 %mul53alteredBB, -625690489
  %187 = add i32 %186, 29573
  %188 = add i32 %187, -625690489
  %add54alteredBB = add i32 %mul53alteredBB, 29573
  %rem55alteredBB = urem i32 %188, 139968
  store i32 %rem55alteredBB, i32* @seed, align 4, !tbaa !6
  %idxprom56alteredBB = zext i32 %rem55alteredBB to i64
  %call.reg2mem.0.call.reload = load volatile i8*, i8** %call.reg2mem, align 8
  %arrayidx57alteredBB = getelementptr inbounds i8, i8* %call.reg2mem.0.call.reload, i64 %idxprom56alteredBB
  %189 = load i8, i8* %arrayidx57alteredBB, align 1, !tbaa !1
  %sub.reg2mem.0.sub.reload163 = load volatile i32, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload162 = load volatile i32, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload161 = load volatile i32, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload160 = load volatile i32, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload = load volatile i32, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload164 = load volatile i32, i32* %sub.reg2mem, align 4
  %mul58alteredBB = mul nsw i32 %sub.reg2mem.0.sub.reload164, 61
  %k.2.reload.reg2mem.0.k.2.reload.reload183 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload184 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload185 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload186 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload187 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload188 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload189 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload181 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %190 = sub i32 0, %mul58alteredBB
  %191 = sub i32 %k.2.reload.reg2mem.0.k.2.reload.reload181, %190
  %add59alteredBB = add nsw i32 %k.2.reload.reg2mem.0.k.2.reload.reload181, %mul58alteredBB
  %idxprom60alteredBB = sext i32 %191 to i64
  %call1.reg2mem.0.call1.reload = load volatile i8*, i8** %call1.reg2mem, align 8
  %arrayidx61alteredBB = getelementptr inbounds i8, i8* %call1.reg2mem.0.call1.reload, i64 %idxprom60alteredBB
  store i8 %189, i8* %arrayidx61alteredBB, align 1, !tbaa !1
  %k.2.reload.reg2mem.0.k.2.reload.reload190 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload191 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload192 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload193 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload194 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  %k.2.reload.reg2mem.0.k.2.reload.reload182 = load volatile i32, i32* %k.2.reload.reg2mem, align 4
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !2, i64 0}
