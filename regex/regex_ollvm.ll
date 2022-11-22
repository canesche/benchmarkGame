; ModuleID = 'regex/regex.c'
source_filename = "regex/regex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pcre_extra = type { i64, i8*, i64, i8*, i8*, i64, i8**, i8* }
%struct.real_pcre = type opaque
%struct.fbuf = type { i8*, i64, i64 }

@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c">.*|\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@variants = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@subst = internal global [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"\0A%zu\0A%zu\0A%zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"agggtaaa|tttaccct\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"[cgt]gggtaaa|tttaccc[acg]\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"a[act]ggtaaa|tttacc[agt]t\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ag[act]gtaaa|tttac[agt]ct\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"agg[act]taaa|ttta[agt]cct\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"aggg[acg]aaa|ttt[cgt]ccct\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"agggt[cgt]aa|tt[acg]accct\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"agggta[cgt]a|t[acg]taccct\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"agggtaa[cgt]|[acg]ttaccct\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"tHa[Nt]\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"<4>\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"aND|caN|Ha[DS]|WaS\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"<3>\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"a[NSt]|BY\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"<2>\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"<[^>]*>\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"\5C|[^|][^|]*\5C|\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.25 = common local_unnamed_addr global i32 0
@y.26 = common local_unnamed_addr global i32 0
@x.27 = common local_unnamed_addr global i32 0
@y.28 = common local_unnamed_addr global i32 0
@x.29 = common local_unnamed_addr global i32 0
@y.30 = common local_unnamed_addr global i32 0
@x.31 = common local_unnamed_addr global i32 0
@y.32 = common local_unnamed_addr global i32 0
@x.33 = common local_unnamed_addr global i32 0
@y.34 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %pos.0.reload.reg2mem.i = alloca i32, align 4
  %count.0.reload.reg2mem.i = alloca i32, align 4
  %.reg2mem32.i = alloca i32, align 4
  %inc.reg2mem.i = alloca i32, align 4
  %cmp.reg2mem.i = alloca i1, align 1
  %call1.reg2mem.i = alloca %struct.pcre_extra*, align 8
  %call.reg2mem.i = alloca %struct.real_pcre*, align 8
  %.reg2mem25.i = alloca i8*, align 8
  %.reg2mem22.i = alloca i8*, align 8
  %.reg2mem.i = alloca i8*, align 8
  %re_e.i = alloca i8*, align 8
  %re_eo.i = alloca i32, align 4
  %m.i = alloca [3 x i32], align 4
  %flip.0.reload.reg2mem = alloca i32, align 4
  %slen.0.reload.reg2mem = alloca i64, align 8
  %pp.0.reload.reg2mem = alloca i8**, align 8
  %i18.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %add.ptr.reg2mem = alloca i8**, align 8
  %call38.reg2mem = alloca i64, align 8
  %sub.reg2mem = alloca i32, align 4
  %.reg2mem100.sroa.0 = alloca i64, align 8
  %.reg2mem97 = alloca i8*, align 8
  %call6.reg2mem = alloca i64, align 8
  %call3.reg2mem = alloca i64, align 8
  %call.reg2mem = alloca i64, align 8
  %arrayidx1.reg2mem = alloca %struct.fbuf*, align 8
  %.reg2mem92 = alloca i8*, align 8
  %results.reg2mem = alloca [9 x i8*]*, align 8
  %seq.reg2mem = alloca [2 x %struct.fbuf]*, align 8
  %.reg2mem82 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x, align 4
  %1 = load i32, i32* @y, align 4
  %2 = sub i32 0, -1
  %3 = sub i32 %0, %2
  %4 = add i32 %0, -1
  %5 = mul i32 %3, %0
  %6 = xor i32 1, -1
  %7 = xor i32 %5, %6
  %8 = and i32 %7, %5
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %8, 0
  store i1 %10, i1* %.reg2mem, align 1
  %11 = icmp slt i32 %1, 10
  store i1 %11, i1* %.reg2mem82, align 1
  %12 = bitcast i8** %.reg2mem92 to [2 x %struct.fbuf]**
  %13 = bitcast i8** %.reg2mem97 to [9 x i8*]**
  %pos.0.reload.reg2mem.i.0..sroa_cast = bitcast i32* %pos.0.reload.reg2mem.i to i8*
  %count.0.reload.reg2mem.i.0..sroa_cast = bitcast i32* %count.0.reload.reg2mem.i to i8*
  %.reg2mem32.i.0..sroa_cast = bitcast i32* %.reg2mem32.i to i8*
  %inc.reg2mem.i.0..sroa_cast = bitcast i32* %inc.reg2mem.i to i8*
  %cmp.reg2mem.i.0..sroa_cast = bitcast i1* %cmp.reg2mem.i to i8*
  %call1.reg2mem.i.0..sroa_cast = bitcast %struct.pcre_extra** %call1.reg2mem.i to i8*
  %call.reg2mem.i.0..sroa_cast = bitcast %struct.real_pcre** %call.reg2mem.i to i8*
  %.reg2mem25.i.0..sroa_cast = bitcast i8** %.reg2mem25.i to i8*
  %.reg2mem22.i.0..sroa_cast = bitcast i8** %.reg2mem22.i to i8*
  %.reg2mem.i.0..sroa_cast = bitcast i8** %.reg2mem.i to i8*
  %14 = bitcast i8** %re_e.i to i8*
  %15 = bitcast i32* %re_eo.i to i8*
  %16 = bitcast [3 x i32]* %m.i to i8*
  %17 = bitcast i8** %.reg2mem.i to i8***
  %18 = bitcast i8** %.reg2mem22.i to i32**
  %19 = bitcast i8** %.reg2mem25.i to [3 x i32]**
  %arraydecay.i = getelementptr inbounds [3 x i32], [3 x i32]* %m.i, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds [3 x i32], [3 x i32]* %m.i, i64 0, i64 1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %pp.0.reg2mem.0 = phi i8** [ undef, %entry ], [ %pp.0.reg2mem.0.be, %loopEntry.backedge ]
  %slen.0.reg2mem.0 = phi i64 [ undef, %entry ], [ %slen.0.reg2mem.0.be, %loopEntry.backedge ]
  %flip.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %flip.0.reg2mem.0.be, %loopEntry.backedge ]
  %i18.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i18.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -1626051375, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -1626051375, label %first
    i32 -1023202529, label %originalBB
    i32 -42716047, label %originalBBpart2
    i32 -212441531, label %for.cond
    i32 2089656671, label %for.cond.cleanup
    i32 -181951015, label %originalBB68
    i32 -1205665181, label %originalBBpart270
    i32 -1023010620, label %for.body
    i32 732833204, label %for.cond19
    i32 -1642787657, label %for.cond.cleanup21
    i32 614953794, label %originalBB72
    i32 -1005857450, label %originalBBpart274
    i32 454474095, label %for.body22
    i32 -548282096, label %for.cond31
    i32 -284737338, label %for.body32
    i32 -1808480498, label %originalBB76
    i32 -2013043148, label %originalBBpart279
    i32 -1449396940, label %for.end41
    i32 -374023983, label %originalBBalteredBB
    i32 -2067740353, label %originalBB68alteredBB
    i32 466786562, label %originalBB72alteredBB
    i32 1240088250, label %originalBB76alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB76alteredBB, %originalBB72alteredBB, %originalBB68alteredBB, %originalBBalteredBB, %originalBBpart279, %originalBB76, %for.body32, %for.cond31, %for.body22, %originalBBpart274, %originalBB72, %for.cond.cleanup21, %for.cond19, %fb_countmatches.exit, %originalBBpart270, %originalBB68, %for.cond.cleanup, %for.cond, %originalBBpart2, %originalBB, %first
  %pp.0.reg2mem.0.be = phi i8** [ %pp.0.reg2mem.0, %originalBB76alteredBB ], [ %pp.0.reg2mem.0, %originalBB72alteredBB ], [ %pp.0.reg2mem.0, %originalBB68alteredBB ], [ %pp.0.reg2mem.0, %originalBBalteredBB ], [ %add.ptr.reg2mem.0.add.ptr.reload, %originalBBpart279 ], [ %pp.0.reg2mem.0, %originalBB76 ], [ %pp.0.reg2mem.0, %for.body32 ], [ %pp.0.reg2mem.0, %for.cond31 ], [ %pp.0.reg2mem.0, %for.body22 ], [ getelementptr inbounds ([11 x i8*], [11 x i8*]* @subst, i64 0, i64 0), %originalBBpart274 ], [ %pp.0.reg2mem.0, %originalBB72 ], [ %pp.0.reg2mem.0, %for.cond.cleanup21 ], [ %pp.0.reg2mem.0, %for.cond19 ], [ %pp.0.reg2mem.0, %fb_countmatches.exit ], [ %pp.0.reg2mem.0, %originalBBpart270 ], [ %pp.0.reg2mem.0, %originalBB68 ], [ %pp.0.reg2mem.0, %for.cond.cleanup ], [ %pp.0.reg2mem.0, %for.cond ], [ %pp.0.reg2mem.0, %originalBBpart2 ], [ %pp.0.reg2mem.0, %originalBB ], [ %pp.0.reg2mem.0, %first ], [ %pp.0.reg2mem.0, %loopEntry ]
  %slen.0.reg2mem.0.be = phi i64 [ %slen.0.reg2mem.0, %originalBB76alteredBB ], [ %slen.0.reg2mem.0, %originalBB72alteredBB ], [ %slen.0.reg2mem.0, %originalBB68alteredBB ], [ %slen.0.reg2mem.0, %originalBBalteredBB ], [ %call38.reg2mem.0.call38.reload, %originalBBpart279 ], [ %slen.0.reg2mem.0, %originalBB76 ], [ %slen.0.reg2mem.0, %for.body32 ], [ %slen.0.reg2mem.0, %for.cond31 ], [ %slen.0.reg2mem.0, %for.body22 ], [ 0, %originalBBpart274 ], [ %slen.0.reg2mem.0, %originalBB72 ], [ %slen.0.reg2mem.0, %for.cond.cleanup21 ], [ %slen.0.reg2mem.0, %for.cond19 ], [ %slen.0.reg2mem.0, %fb_countmatches.exit ], [ %slen.0.reg2mem.0, %originalBBpart270 ], [ %slen.0.reg2mem.0, %originalBB68 ], [ %slen.0.reg2mem.0, %for.cond.cleanup ], [ %slen.0.reg2mem.0, %for.cond ], [ %slen.0.reg2mem.0, %originalBBpart2 ], [ %slen.0.reg2mem.0, %originalBB ], [ %slen.0.reg2mem.0, %first ], [ %slen.0.reg2mem.0, %loopEntry ]
  %flip.0.reg2mem.0.be = phi i32 [ %flip.0.reg2mem.0, %originalBB76alteredBB ], [ %flip.0.reg2mem.0, %originalBB72alteredBB ], [ %flip.0.reg2mem.0, %originalBB68alteredBB ], [ %flip.0.reg2mem.0, %originalBBalteredBB ], [ %sub.reg2mem.0.sub.reload, %originalBBpart279 ], [ %flip.0.reg2mem.0, %originalBB76 ], [ %flip.0.reg2mem.0, %for.body32 ], [ %flip.0.reg2mem.0, %for.cond31 ], [ %flip.0.reg2mem.0, %for.body22 ], [ 1, %originalBBpart274 ], [ %flip.0.reg2mem.0, %originalBB72 ], [ %flip.0.reg2mem.0, %for.cond.cleanup21 ], [ %flip.0.reg2mem.0, %for.cond19 ], [ %flip.0.reg2mem.0, %fb_countmatches.exit ], [ %flip.0.reg2mem.0, %originalBBpart270 ], [ %flip.0.reg2mem.0, %originalBB68 ], [ %flip.0.reg2mem.0, %for.cond.cleanup ], [ %flip.0.reg2mem.0, %for.cond ], [ %flip.0.reg2mem.0, %originalBBpart2 ], [ %flip.0.reg2mem.0, %originalBB ], [ %flip.0.reg2mem.0, %first ], [ %flip.0.reg2mem.0, %loopEntry ]
  %i18.0.reg2mem.0.be = phi i32 [ %i18.0.reg2mem.0, %originalBB76alteredBB ], [ %i18.0.reg2mem.0, %originalBB72alteredBB ], [ %i18.0.reg2mem.0, %originalBB68alteredBB ], [ %i18.0.reg2mem.0, %originalBBalteredBB ], [ %i18.0.reg2mem.0, %originalBBpart279 ], [ %i18.0.reg2mem.0, %originalBB76 ], [ %i18.0.reg2mem.0, %for.body32 ], [ %i18.0.reg2mem.0, %for.cond31 ], [ %355, %for.body22 ], [ %i18.0.reg2mem.0, %originalBBpart274 ], [ %i18.0.reg2mem.0, %originalBB72 ], [ %i18.0.reg2mem.0, %for.cond.cleanup21 ], [ %i18.0.reg2mem.0, %for.cond19 ], [ %i18.0.reg2mem.0, %fb_countmatches.exit ], [ 0, %originalBBpart270 ], [ %i18.0.reg2mem.0, %originalBB68 ], [ %i18.0.reg2mem.0, %for.cond.cleanup ], [ %i18.0.reg2mem.0, %for.cond ], [ %i18.0.reg2mem.0, %originalBBpart2 ], [ %i18.0.reg2mem.0, %originalBB ], [ %i18.0.reg2mem.0, %first ], [ %i18.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB76alteredBB ], [ %i.0.reg2mem.0, %originalBB72alteredBB ], [ %i.0.reg2mem.0, %originalBB68alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBBpart279 ], [ %i.0.reg2mem.0, %originalBB76 ], [ %i.0.reg2mem.0, %for.body32 ], [ %i.0.reg2mem.0, %for.cond31 ], [ %i.0.reg2mem.0, %for.body22 ], [ %i.0.reg2mem.0, %originalBBpart274 ], [ %i.0.reg2mem.0, %originalBB72 ], [ %i.0.reg2mem.0, %for.cond.cleanup21 ], [ %i.0.reg2mem.0, %for.cond19 ], [ %310, %fb_countmatches.exit ], [ %i.0.reg2mem.0, %originalBBpart270 ], [ %i.0.reg2mem.0, %originalBB68 ], [ %i.0.reg2mem.0, %for.cond.cleanup ], [ %i.0.reg2mem.0, %for.cond ], [ 0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %first ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -1808480498, %originalBB76alteredBB ], [ 614953794, %originalBB72alteredBB ], [ -181951015, %originalBB68alteredBB ], [ -1023202529, %originalBBalteredBB ], [ -548282096, %originalBBpart279 ], [ %403, %originalBB76 ], [ %376, %for.body32 ], [ %358, %for.cond31 ], [ 732833204, %for.body22 ], [ -548282096, %originalBBpart274 ], [ %350, %originalBB72 ], [ %333, %for.cond.cleanup21 ], [ %311, %for.cond19 ], [ -212441531, %fb_countmatches.exit ], [ 732833204, %originalBBpart270 ], [ %110, %originalBB68 ], [ %80, %for.cond.cleanup ], [ %62, %for.cond ], [ -212441531, %originalBBpart2 ], [ %61, %originalBB ], [ %24, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem82.0..reload83 = load volatile i1, i1* %.reg2mem82, align 1
  %20 = and i1 %.reg2mem.0..reload, %.reg2mem82.0..reload83
  %21 = xor i1 %.reg2mem.0..reload, %.reg2mem82.0..reload83
  %22 = or i1 %20, %21
  %23 = or i1 %.reg2mem.0..reload, %.reg2mem82.0..reload83
  %24 = select i1 %22, i32 -1023202529, i32 -374023983
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %seq = alloca [2 x %struct.fbuf], align 16
  store [2 x %struct.fbuf]* %seq, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %results = alloca [9 x i8*], align 16
  store [9 x i8*]* %results, [9 x i8*]** %results.reg2mem, align 8
  %seq.reg2mem.0.seq.reload89 = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  store [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload89, [2 x %struct.fbuf]** %12, align 8
  %.reg2mem92.0..reload94 = load volatile i8*, i8** %.reg2mem92, align 8
  call void @llvm.lifetime.start(i64 48, i8* %.reg2mem92.0..reload94) #6
  %seq.reg2mem.0.seq.reload88 = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload88, i64 0, i64 0
  %25 = bitcast [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload88 to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 24, i32 8, i1 false) #6
  %seq.reg2mem.0.seq.reload87 = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %arrayidx1 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload87, i64 0, i64 1
  store %struct.fbuf* %arrayidx1, %struct.fbuf** %arrayidx1.reg2mem, align 8
  %arrayidx1.reg2mem.0.arrayidx1.reload96 = load volatile %struct.fbuf*, %struct.fbuf** %arrayidx1.reg2mem, align 8
  %26 = bitcast %struct.fbuf* %arrayidx1.reg2mem.0.arrayidx1.reload96 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 24, i32 8, i1 false) #6
  %call = call i64 @clock() #6
  store i64 %call, i64* %call.reg2mem, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %call3 = call fastcc i64 @fb_readall(%struct.fbuf* %arrayidx, %struct._IO_FILE* %27)
  store i64 %call3, i64* %call3.reg2mem, align 8
  %arrayidx1.reg2mem.0.arrayidx1.reload95 = load volatile %struct.fbuf*, %struct.fbuf** %arrayidx1.reg2mem, align 8
  %call6 = call fastcc i64 @fb_subst(%struct.fbuf* %arrayidx1.reg2mem.0.arrayidx1.reload95, %struct.fbuf* %arrayidx, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i64 %call6, i64* %call6.reg2mem, align 8
  %results.reg2mem.0.results.reload91 = load volatile [9 x i8*]*, [9 x i8*]** %results.reg2mem, align 8
  store [9 x i8*]* %results.reg2mem.0.results.reload91, [9 x i8*]** %13, align 8
  %.reg2mem97.0..reload99 = load volatile i8*, i8** %.reg2mem97, align 8
  call void @llvm.lifetime.start(i64 72, i8* %.reg2mem97.0..reload99) #6
  %28 = load i32, i32* @x, align 4
  %29 = load i32, i32* @y, align 4
  %30 = add i32 %28, 1239264567
  %31 = add i32 %30, -1
  %32 = sub i32 %31, 1239264567
  %33 = add i32 %28, -1
  %34 = mul i32 %32, %28
  %35 = xor i32 %34, -1
  %36 = xor i32 1, -1
  %37 = xor i32 710161232, -1
  %38 = or i32 %35, %36
  %39 = or i32 710161232, %37
  %40 = xor i32 %38, -1
  %41 = and i32 %40, %39
  %42 = and i32 %34, 1
  %43 = icmp eq i32 %41, 0
  %44 = icmp slt i32 %29, 10
  %45 = xor i1 %44, true
  %46 = xor i1 %43, true
  %47 = xor i1 true, true
  %48 = and i1 %45, true
  %49 = and i1 %44, %47
  %50 = and i1 %46, true
  %51 = and i1 %43, %47
  %52 = or i1 %48, %49
  %53 = or i1 %50, %51
  %54 = xor i1 %52, %53
  %55 = or i1 %45, %46
  %56 = xor i1 %55, true
  %57 = or i1 true, %47
  %58 = and i1 %56, %57
  %59 = or i1 %54, %58
  %60 = or i1 %44, %43
  %61 = select i1 %59, i32 -42716047, i32 -374023983
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 9
  %62 = select i1 %cmp, i32 -1023010620, i32 2089656671
  br label %loopEntry.backedge

for.cond.cleanup:                                 ; preds = %loopEntry
  %63 = load i32, i32* @x, align 4
  %64 = load i32, i32* @y, align 4
  %65 = sub i32 %63, 1861638271
  %66 = add i32 %65, -1
  %67 = add i32 %66, 1861638271
  %68 = add i32 %63, -1
  %69 = mul i32 %67, %63
  %70 = xor i32 1, -1
  %71 = xor i32 %69, %70
  %72 = and i32 %71, %69
  %73 = and i32 %69, 1
  %74 = icmp eq i32 %72, 0
  %75 = icmp slt i32 %64, 10
  %76 = and i1 %75, %74
  %77 = xor i1 %75, %74
  %78 = or i1 %76, %77
  %79 = or i1 %75, %74
  %80 = select i1 %78, i32 -181951015, i32 -2067740353
  br label %loopEntry.backedge

originalBB68:                                     ; preds = %loopEntry
  %81 = load i32, i32* @x, align 4
  %82 = load i32, i32* @y, align 4
  %83 = sub i32 %81, 36462581
  %84 = add i32 %83, -1
  %85 = add i32 %84, 36462581
  %86 = add i32 %81, -1
  %87 = mul i32 %85, %81
  %88 = xor i32 1, -1
  %89 = xor i32 %87, %88
  %90 = and i32 %89, %87
  %91 = and i32 %87, 1
  %92 = icmp eq i32 %90, 0
  %93 = icmp slt i32 %82, 10
  %94 = xor i1 %93, true
  %95 = xor i1 %92, true
  %96 = xor i1 true, true
  %97 = and i1 %94, true
  %98 = and i1 %93, %96
  %99 = and i1 %95, true
  %100 = and i1 %92, %96
  %101 = or i1 %97, %98
  %102 = or i1 %99, %100
  %103 = xor i1 %101, %102
  %104 = or i1 %94, %95
  %105 = xor i1 %104, true
  %106 = or i1 true, %96
  %107 = and i1 %105, %106
  %108 = or i1 %103, %107
  %109 = or i1 %93, %92
  %110 = select i1 %108, i32 -1205665181, i32 -2067740353
  br label %loopEntry.backedge

originalBBpart270:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %call7 = call noalias i8* @malloc(i64 40) #6
  %i.0.reload.reg2mem.0.i.0.reload.reload105 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload105 to i64
  %results.reg2mem.0.results.reload90 = load volatile [9 x i8*]*, [9 x i8*]** %results.reg2mem, align 8
  %arrayidx8 = getelementptr inbounds [9 x i8*], [9 x i8*]* %results.reg2mem.0.results.reload90, i64 0, i64 %idxprom
  store i8* %call7, i8** %arrayidx8, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds [10 x i8*], [10 x i8*]* @variants, i64 0, i64 %idxprom
  %111 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  %arrayidx1.reg2mem.0.arrayidx1.reload = load volatile %struct.fbuf*, %struct.fbuf** %arrayidx1.reg2mem, align 8
  call void @llvm.lifetime.start(i64 4, i8* nonnull %pos.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 4, i8* nonnull %count.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 4, i8* nonnull %.reg2mem32.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 4, i8* nonnull %inc.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %cmp.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call1.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %.reg2mem25.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %.reg2mem22.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %14)
  call void @llvm.lifetime.start(i64 4, i8* nonnull %15)
  call void @llvm.lifetime.start(i64 12, i8* nonnull %16)
  store i8** %re_e.i, i8*** %17, align 8
  %.reg2mem.i.0..reg2mem.0..reload21.i = load volatile i8*, i8** %.reg2mem.i, align 8
  call void @llvm.lifetime.start(i64 8, i8* %.reg2mem.i.0..reg2mem.0..reload21.i) #6
  store i32* %re_eo.i, i32** %18, align 8
  %.reg2mem22.i.0..reg2mem22.0..reload24.i = load volatile i8*, i8** %.reg2mem22.i, align 8
  call void @llvm.lifetime.start(i64 4, i8* %.reg2mem22.i.0..reg2mem22.0..reload24.i) #6
  store [3 x i32]* %m.i, [3 x i32]** %19, align 8
  %.reg2mem25.i.0..reg2mem25.0..reload27.i = load volatile i8*, i8** %.reg2mem25.i, align 8
  call void @llvm.lifetime.start(i64 12, i8* %.reg2mem25.i.0..reg2mem25.0..reload27.i) #6
  %call.i = call %struct.real_pcre* @pcre_compile(i8* %111, i32 0, i8** nonnull %re_e.i, i32* nonnull %re_eo.i, i8* null) #6
  store %struct.real_pcre* %call.i, %struct.real_pcre** %call.reg2mem.i, align 8
  %buf.i = getelementptr inbounds %struct.fbuf, %struct.fbuf* %arrayidx1.reg2mem.0.arrayidx1.reload, i64 0, i32 0
  %len.i = getelementptr inbounds %struct.fbuf, %struct.fbuf* %arrayidx1.reg2mem.0.arrayidx1.reload, i64 0, i32 2
  br label %loopEntry.i

loopEntry.i:                                      ; preds = %loopEntry.i.backedge, %for.body
  %count.0.reg2mem.0.i = phi i32 [ undef, %for.body ], [ %count.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %pos.0.reg2mem.0.i = phi i32 [ undef, %for.body ], [ %pos.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %switchVar.0.i = phi i32 [ 1984376254, %for.body ], [ %switchVar.0.i.be, %loopEntry.i.backedge ]
  switch i32 %switchVar.0.i, label %loopEntry.i.backedge [
    i32 1984376254, label %first.i
    i32 661071954, label %if.then.i
    i32 1618540511, label %if.end.i
    i32 -885533293, label %for.cond.i
    i32 -2136930720, label %originalBB.i
    i32 2041692707, label %originalBBpart2.i
    i32 818558070, label %for.body.i
    i32 -2114156052, label %originalBB10.i
    i32 427622791, label %originalBBpart214.i
    i32 538519931, label %for.end.i
    i32 -38134239, label %originalBB16.i
    i32 1556784866, label %fb_countmatches.exit
    i32 -1619173314, label %originalBBalteredBB.i
    i32 -1147617954, label %originalBB10alteredBB.i
    i32 1433196603, label %originalBB16alteredBB.i
  ]

loopEntry.i.backedge:                             ; preds = %loopEntry.i, %first.i, %if.end.i, %for.cond.i, %originalBB.i, %originalBBpart2.i, %for.body.i, %originalBB10.i, %originalBBpart214.i, %for.end.i, %originalBB16.i, %originalBBalteredBB.i, %originalBB10alteredBB.i, %originalBB16alteredBB.i
  %count.0.reg2mem.0.i.be = phi i32 [ %count.0.reg2mem.0.i, %originalBB16alteredBB.i ], [ %count.0.reg2mem.0.i, %originalBB10alteredBB.i ], [ %count.0.reg2mem.0.i, %originalBBalteredBB.i ], [ %count.0.reg2mem.0.i, %originalBB16.i ], [ %count.0.reg2mem.0.i, %for.end.i ], [ %inc.reg2mem.i.0.inc.reg2mem.0.inc.reload.i, %originalBBpart214.i ], [ %count.0.reg2mem.0.i, %originalBB10.i ], [ %count.0.reg2mem.0.i, %for.body.i ], [ %count.0.reg2mem.0.i, %originalBBpart2.i ], [ %count.0.reg2mem.0.i, %originalBB.i ], [ %count.0.reg2mem.0.i, %for.cond.i ], [ 0, %if.end.i ], [ %count.0.reg2mem.0.i, %first.i ], [ %count.0.reg2mem.0.i, %loopEntry.i ]
  %pos.0.reg2mem.0.i.be = phi i32 [ %pos.0.reg2mem.0.i, %originalBB16alteredBB.i ], [ %pos.0.reg2mem.0.i, %originalBB10alteredBB.i ], [ %pos.0.reg2mem.0.i, %originalBBalteredBB.i ], [ %pos.0.reg2mem.0.i, %originalBB16.i ], [ %pos.0.reg2mem.0.i, %for.end.i ], [ %.reg2mem32.i.0..reg2mem32.0..reload33.i, %originalBBpart214.i ], [ %pos.0.reg2mem.0.i, %originalBB10.i ], [ %pos.0.reg2mem.0.i, %for.body.i ], [ %pos.0.reg2mem.0.i, %originalBBpart2.i ], [ %pos.0.reg2mem.0.i, %originalBB.i ], [ %pos.0.reg2mem.0.i, %for.cond.i ], [ 0, %if.end.i ], [ %pos.0.reg2mem.0.i, %first.i ], [ %pos.0.reg2mem.0.i, %loopEntry.i ]
  %switchVar.0.i.be = phi i32 [ -38134239, %originalBB16alteredBB.i ], [ -2114156052, %originalBB10alteredBB.i ], [ -2136930720, %originalBBalteredBB.i ], [ %304, %originalBB16.i ], [ %285, %for.end.i ], [ -885533293, %originalBBpart214.i ], [ %251, %originalBB10.i ], [ %213, %for.body.i ], [ %182, %originalBBpart2.i ], [ %181, %originalBB.i ], [ %146, %for.cond.i ], [ -885533293, %if.end.i ], [ %112, %first.i ], [ %switchVar.0.i, %loopEntry.i ]
  br label %loopEntry.i

first.i:                                          ; preds = %loopEntry.i
  %call.reg2mem.i.0.call.reg2mem.0.call.reload30.i = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem.i, align 8
  %tobool.i = icmp ne %struct.real_pcre* %call.reg2mem.i.0.call.reg2mem.0.call.reload30.i, null
  %112 = select i1 %tobool.i, i32 1618540511, i32 661071954
  br label %loopEntry.i.backedge

if.then.i:                                        ; preds = %loopEntry.i
  call void @exit(i32 1) #7
  unreachable

if.end.i:                                         ; preds = %loopEntry.i
  %call.reg2mem.i.0.call.reg2mem.0.call.reload28.i = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem.i, align 8
  %call1.i = call %struct.pcre_extra* @pcre_study(%struct.real_pcre* %call.reg2mem.i.0.call.reg2mem.0.call.reload28.i, i32 1, i8** nonnull %re_e.i) #6
  store %struct.pcre_extra* %call1.i, %struct.pcre_extra** %call1.reg2mem.i, align 8
  br label %loopEntry.i.backedge

for.cond.i:                                       ; preds = %loopEntry.i
  store i32 %count.0.reg2mem.0.i, i32* %count.0.reload.reg2mem.i, align 4
  store i32 %pos.0.reg2mem.0.i, i32* %pos.0.reload.reg2mem.i, align 4
  %113 = load i32, i32* @x.31, align 4
  %114 = load i32, i32* @y.32, align 4
  %115 = sub i32 %113, 1033659973
  %116 = add i32 %115, -1
  %117 = add i32 %116, 1033659973
  %118 = add i32 %113, -1
  %119 = mul i32 %117, %113
  %120 = xor i32 %119, -1
  %121 = xor i32 1, -1
  %122 = xor i32 1725980879, -1
  %123 = or i32 %120, %121
  %124 = or i32 1725980879, %122
  %125 = xor i32 %123, -1
  %126 = and i32 %125, %124
  %127 = and i32 %119, 1
  %128 = icmp eq i32 %126, 0
  %129 = icmp slt i32 %114, 10
  %130 = xor i1 %129, true
  %131 = xor i1 %128, true
  %132 = xor i1 true, true
  %133 = and i1 %130, true
  %134 = and i1 %129, %132
  %135 = and i1 %131, true
  %136 = and i1 %128, %132
  %137 = or i1 %133, %134
  %138 = or i1 %135, %136
  %139 = xor i1 %137, %138
  %140 = or i1 %130, %131
  %141 = xor i1 %140, true
  %142 = or i1 true, %132
  %143 = and i1 %141, %142
  %144 = or i1 %139, %143
  %145 = or i1 %129, %128
  %146 = select i1 %144, i32 -2136930720, i32 -1619173314
  br label %loopEntry.i.backedge

originalBB.i:                                     ; preds = %loopEntry.i
  %147 = load i8*, i8** %buf.i, align 8, !tbaa !5
  %148 = load i64, i64* %len.i, align 8, !tbaa !8
  %conv.i = trunc i64 %148 to i32
  %call.reg2mem.i.0.call.reg2mem.0.call.reload29.i = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem.i, align 8
  %call1.reg2mem.i.0.call1.reg2mem.0.call1.reload31.i = load volatile %struct.pcre_extra*, %struct.pcre_extra** %call1.reg2mem.i, align 8
  %pos.0.reload.reg2mem.i.0.pos.0.reload.reg2mem.0.pos.0.reload.reload.i = load volatile i32, i32* %pos.0.reload.reg2mem.i, align 4
  %call2.i = call i32 @pcre_exec(%struct.real_pcre* %call.reg2mem.i.0.call.reg2mem.0.call.reload29.i, %struct.pcre_extra* %call1.reg2mem.i.0.call1.reg2mem.0.call1.reload31.i, i8* %147, i32 %conv.i, i32 %pos.0.reload.reg2mem.i.0.pos.0.reload.reg2mem.0.pos.0.reload.reload.i, i32 0, i32* nonnull %arraydecay.i, i32 3) #6
  %cmp.i = icmp sgt i32 %call2.i, -1
  store i1 %cmp.i, i1* %cmp.reg2mem.i, align 1
  %149 = load i32, i32* @x.31, align 4
  %150 = load i32, i32* @y.32, align 4
  %151 = sub i32 0, -1
  %152 = sub i32 %149, %151
  %153 = add i32 %149, -1
  %154 = mul i32 %152, %149
  %155 = xor i32 %154, -1
  %156 = xor i32 1, -1
  %157 = xor i32 -1817557800, -1
  %158 = or i32 %155, %156
  %159 = or i32 -1817557800, %157
  %160 = xor i32 %158, -1
  %161 = and i32 %160, %159
  %162 = and i32 %154, 1
  %163 = icmp eq i32 %161, 0
  %164 = icmp slt i32 %150, 10
  %165 = xor i1 %164, true
  %166 = xor i1 %163, true
  %167 = xor i1 false, true
  %168 = and i1 %165, false
  %169 = and i1 %164, %167
  %170 = and i1 %166, false
  %171 = and i1 %163, %167
  %172 = or i1 %168, %169
  %173 = or i1 %170, %171
  %174 = xor i1 %172, %173
  %175 = or i1 %165, %166
  %176 = xor i1 %175, true
  %177 = or i1 false, %167
  %178 = and i1 %176, %177
  %179 = or i1 %174, %178
  %180 = or i1 %164, %163
  %181 = select i1 %179, i32 2041692707, i32 -1619173314
  br label %loopEntry.i.backedge

originalBBpart2.i:                                ; preds = %loopEntry.i
  %cmp.reg2mem.i.0.cmp.reg2mem.0.cmp.reload.i = load volatile i1, i1* %cmp.reg2mem.i, align 1
  %182 = select i1 %cmp.reg2mem.i.0.cmp.reg2mem.0.cmp.reload.i, i32 818558070, i32 538519931
  br label %loopEntry.i.backedge

for.body.i:                                       ; preds = %loopEntry.i
  %183 = load i32, i32* @x.31, align 4
  %184 = load i32, i32* @y.32, align 4
  %185 = sub i32 0, %183
  %186 = sub i32 0, -1
  %187 = add i32 %185, %186
  %188 = sub i32 0, %187
  %189 = add i32 %183, -1
  %190 = mul i32 %188, %183
  %191 = xor i32 1, -1
  %192 = xor i32 %190, %191
  %193 = and i32 %192, %190
  %194 = and i32 %190, 1
  %195 = icmp eq i32 %193, 0
  %196 = icmp slt i32 %184, 10
  %197 = xor i1 %196, true
  %198 = xor i1 %195, true
  %199 = xor i1 false, true
  %200 = and i1 %197, false
  %201 = and i1 %196, %199
  %202 = and i1 %198, false
  %203 = and i1 %195, %199
  %204 = or i1 %200, %201
  %205 = or i1 %202, %203
  %206 = xor i1 %204, %205
  %207 = or i1 %197, %198
  %208 = xor i1 %207, true
  %209 = or i1 false, %199
  %210 = and i1 %208, %209
  %211 = or i1 %206, %210
  %212 = or i1 %196, %195
  %213 = select i1 %211, i32 -2114156052, i32 -1147617954
  br label %loopEntry.i.backedge

originalBB10.i:                                   ; preds = %loopEntry.i
  %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload.i = load volatile i32, i32* %count.0.reload.reg2mem.i, align 4
  %214 = sub i32 %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload.i, 43241678
  %215 = add i32 %214, 1
  %216 = add i32 %215, 43241678
  %inc.i = add nsw i32 %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload.i, 1
  store i32 %216, i32* %inc.reg2mem.i, align 4
  %217 = load i32, i32* %arrayidx.i, align 4, !tbaa !9
  store i32 %217, i32* %.reg2mem32.i, align 4
  %218 = load i32, i32* @x.31, align 4
  %219 = load i32, i32* @y.32, align 4
  %220 = add i32 %218, 885494072
  %221 = add i32 %220, -1
  %222 = sub i32 %221, 885494072
  %223 = add i32 %218, -1
  %224 = mul i32 %222, %218
  %225 = xor i32 %224, -1
  %226 = xor i32 1, -1
  %227 = xor i32 -283176229, -1
  %228 = or i32 %225, %226
  %229 = or i32 -283176229, %227
  %230 = xor i32 %228, -1
  %231 = and i32 %230, %229
  %232 = and i32 %224, 1
  %233 = icmp eq i32 %231, 0
  %234 = icmp slt i32 %219, 10
  %235 = xor i1 %234, true
  %236 = xor i1 %233, true
  %237 = xor i1 true, true
  %238 = and i1 %235, true
  %239 = and i1 %234, %237
  %240 = and i1 %236, true
  %241 = and i1 %233, %237
  %242 = or i1 %238, %239
  %243 = or i1 %240, %241
  %244 = xor i1 %242, %243
  %245 = or i1 %235, %236
  %246 = xor i1 %245, true
  %247 = or i1 true, %237
  %248 = and i1 %246, %247
  %249 = or i1 %244, %248
  %250 = or i1 %234, %233
  %251 = select i1 %249, i32 427622791, i32 -1147617954
  br label %loopEntry.i.backedge

originalBBpart214.i:                              ; preds = %loopEntry.i
  %inc.reg2mem.i.0.inc.reg2mem.0.inc.reload.i = load volatile i32, i32* %inc.reg2mem.i, align 4
  %.reg2mem32.i.0..reg2mem32.0..reload33.i = load volatile i32, i32* %.reg2mem32.i, align 4
  br label %loopEntry.i.backedge

for.end.i:                                        ; preds = %loopEntry.i
  %.reg2mem25.i.0..reg2mem25.0..reload26.i = load volatile i8*, i8** %.reg2mem25.i, align 8
  call void @llvm.lifetime.end(i64 12, i8* %.reg2mem25.i.0..reg2mem25.0..reload26.i) #6
  %.reg2mem22.i.0..reg2mem22.0..reload23.i = load volatile i8*, i8** %.reg2mem22.i, align 8
  call void @llvm.lifetime.end(i64 4, i8* %.reg2mem22.i.0..reg2mem22.0..reload23.i) #6
  %.reg2mem.i.0..reg2mem.0..reload.i = load volatile i8*, i8** %.reg2mem.i, align 8
  call void @llvm.lifetime.end(i64 8, i8* %.reg2mem.i.0..reg2mem.0..reload.i) #6
  %252 = load i32, i32* @x.31, align 4
  %253 = load i32, i32* @y.32, align 4
  %254 = add i32 %252, 1148841435
  %255 = add i32 %254, -1
  %256 = sub i32 %255, 1148841435
  %257 = add i32 %252, -1
  %258 = mul i32 %256, %252
  %259 = xor i32 %258, -1
  %260 = xor i32 1, -1
  %261 = xor i32 -893636824, -1
  %262 = or i32 %259, %260
  %263 = or i32 -893636824, %261
  %264 = xor i32 %262, -1
  %265 = and i32 %264, %263
  %266 = and i32 %258, 1
  %267 = icmp eq i32 %265, 0
  %268 = icmp slt i32 %253, 10
  %269 = xor i1 %268, true
  %270 = xor i1 %267, true
  %271 = xor i1 true, true
  %272 = and i1 %269, true
  %273 = and i1 %268, %271
  %274 = and i1 %270, true
  %275 = and i1 %267, %271
  %276 = or i1 %272, %273
  %277 = or i1 %274, %275
  %278 = xor i1 %276, %277
  %279 = or i1 %269, %270
  %280 = xor i1 %279, true
  %281 = or i1 true, %271
  %282 = and i1 %280, %281
  %283 = or i1 %278, %282
  %284 = or i1 %268, %267
  %285 = select i1 %283, i32 -38134239, i32 1433196603
  br label %loopEntry.i.backedge

originalBB16.i:                                   ; preds = %loopEntry.i
  %286 = load i32, i32* @x.31, align 4
  %287 = load i32, i32* @y.32, align 4
  %288 = sub i32 0, %286
  %289 = sub i32 0, -1
  %290 = add i32 %288, %289
  %291 = sub i32 0, %290
  %292 = add i32 %286, -1
  %293 = mul i32 %291, %286
  %294 = xor i32 1, -1
  %295 = xor i32 %293, %294
  %296 = and i32 %295, %293
  %297 = and i32 %293, 1
  %298 = icmp eq i32 %296, 0
  %299 = icmp slt i32 %287, 10
  %300 = and i1 %299, %298
  %301 = xor i1 %299, %298
  %302 = or i1 %300, %301
  %303 = or i1 %299, %298
  %304 = select i1 %302, i32 1556784866, i32 1433196603
  br label %loopEntry.i.backedge

originalBBalteredBB.i:                            ; preds = %loopEntry.i
  %305 = load i8*, i8** %buf.i, align 8, !tbaa !5
  %306 = load i64, i64* %len.i, align 8, !tbaa !8
  %convalteredBB.i = trunc i64 %306 to i32
  %call.reg2mem.i.0.call.reg2mem.0.call.reload.i = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem.i, align 8
  %call1.reg2mem.i.0.call1.reg2mem.0.call1.reload.i = load volatile %struct.pcre_extra*, %struct.pcre_extra** %call1.reg2mem.i, align 8
  %pos.0.reload.reg2mem.i.0.pos.0.reload.reg2mem.0.pos.0.reload.reload39.i = load volatile i32, i32* %pos.0.reload.reg2mem.i, align 4
  %call2alteredBB.i = call i32 @pcre_exec(%struct.real_pcre* %call.reg2mem.i.0.call.reg2mem.0.call.reload.i, %struct.pcre_extra* %call1.reg2mem.i.0.call1.reg2mem.0.call1.reload.i, i8* %305, i32 %convalteredBB.i, i32 %pos.0.reload.reg2mem.i.0.pos.0.reload.reg2mem.0.pos.0.reload.reload39.i, i32 0, i32* nonnull %arraydecay.i, i32 3) #6
  br label %loopEntry.i.backedge

originalBB10alteredBB.i:                          ; preds = %loopEntry.i
  %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload36.i = load volatile i32, i32* %count.0.reload.reg2mem.i, align 4
  %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload37.i = load volatile i32, i32* %count.0.reload.reg2mem.i, align 4
  %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload38.i = load volatile i32, i32* %count.0.reload.reg2mem.i, align 4
  %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload35.i = load volatile i32, i32* %count.0.reload.reg2mem.i, align 4
  br label %loopEntry.i.backedge

originalBB16alteredBB.i:                          ; preds = %loopEntry.i
  br label %loopEntry.i.backedge

fb_countmatches.exit:                             ; preds = %loopEntry.i
  %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload34.i = load volatile i32, i32* %count.0.reload.reg2mem.i, align 4
  call void @llvm.lifetime.end(i64 4, i8* nonnull %pos.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %count.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %.reg2mem32.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %inc.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %cmp.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call1.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %.reg2mem25.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %.reg2mem22.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14)
  call void @llvm.lifetime.end(i64 4, i8* nonnull %15)
  call void @llvm.lifetime.end(i64 12, i8* nonnull %16)
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %call7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 %count.0.reload.reg2mem.i.0.count.0.reload.reg2mem.0.count.0.reload.reload34.i) #6
  %i.0.reload.reg2mem.0.i.0.reload.reload106 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %307 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload106
  %308 = sub i32 0, 1
  %309 = add i32 %307, %308
  %310 = sub i32 0, %309
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload106, 1
  br label %loopEntry.backedge

for.cond19:                                       ; preds = %loopEntry
  store i32 %i18.0.reg2mem.0, i32* %i18.0.reload.reg2mem, align 4
  %i18.0.reload.reg2mem.0.i18.0.reload.reload = load volatile i32, i32* %i18.0.reload.reg2mem, align 4
  %cmp20 = icmp slt i32 %i18.0.reload.reg2mem.0.i18.0.reload.reload, 9
  %311 = select i1 %cmp20, i32 454474095, i32 -1642787657
  br label %loopEntry.backedge

for.cond.cleanup21:                               ; preds = %loopEntry
  %312 = load i32, i32* @x, align 4
  %313 = load i32, i32* @y, align 4
  %314 = sub i32 %312, -1974953234
  %315 = add i32 %314, -1
  %316 = add i32 %315, -1974953234
  %317 = add i32 %312, -1
  %318 = mul i32 %316, %312
  %319 = xor i32 %318, -1
  %320 = xor i32 1, -1
  %321 = xor i32 410786283, -1
  %322 = or i32 %319, %320
  %323 = or i32 410786283, %321
  %324 = xor i32 %322, -1
  %325 = and i32 %324, %323
  %326 = and i32 %318, 1
  %327 = icmp eq i32 %325, 0
  %328 = icmp slt i32 %313, 10
  %329 = and i1 %328, %327
  %330 = xor i1 %328, %327
  %331 = or i1 %329, %330
  %332 = or i1 %328, %327
  %333 = select i1 %331, i32 614953794, i32 466786562
  br label %loopEntry.backedge

originalBB72:                                     ; preds = %loopEntry
  %334 = load i32, i32* @x, align 4
  %335 = load i32, i32* @y, align 4
  %336 = sub i32 0, -1
  %337 = sub i32 %334, %336
  %338 = add i32 %334, -1
  %339 = mul i32 %337, %334
  %340 = xor i32 1, -1
  %341 = xor i32 %339, %340
  %342 = and i32 %341, %339
  %343 = and i32 %339, 1
  %344 = icmp eq i32 %342, 0
  %345 = icmp slt i32 %335, 10
  %346 = and i1 %345, %344
  %347 = xor i1 %345, %344
  %348 = or i1 %346, %347
  %349 = or i1 %345, %344
  %350 = select i1 %348, i32 -1005857450, i32 466786562
  br label %loopEntry.backedge

originalBBpart274:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.body22:                                       ; preds = %loopEntry
  %i18.0.reload.reg2mem.0.i18.0.reload.reload107 = load volatile i32, i32* %i18.0.reload.reg2mem, align 4
  %idxprom23 = sext i32 %i18.0.reload.reg2mem.0.i18.0.reload.reload107 to i64
  %results.reg2mem.0.results.reload = load volatile [9 x i8*]*, [9 x i8*]** %results.reg2mem, align 8
  %arrayidx24 = getelementptr inbounds [9 x i8*], [9 x i8*]* %results.reg2mem.0.results.reload, i64 0, i64 %idxprom23
  %351 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %351)
  %352 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  call void @free(i8* %352) #6
  %i18.0.reload.reg2mem.0.i18.0.reload.reload108 = load volatile i32, i32* %i18.0.reload.reg2mem, align 4
  %353 = sub i32 %i18.0.reload.reg2mem.0.i18.0.reload.reload108, 757754125
  %354 = add i32 %353, 1
  %355 = add i32 %354, 757754125
  %inc29 = add nsw i32 %i18.0.reload.reg2mem.0.i18.0.reload.reload108, 1
  br label %loopEntry.backedge

for.cond31:                                       ; preds = %loopEntry
  store i8** %pp.0.reg2mem.0, i8*** %pp.0.reload.reg2mem, align 8
  store i64 %slen.0.reg2mem.0, i64* %slen.0.reload.reg2mem, align 8
  store i32 %flip.0.reg2mem.0, i32* %flip.0.reload.reg2mem, align 4
  %pp.0.reload.reg2mem.0.pp.0.reload.reload = load volatile i8**, i8*** %pp.0.reload.reg2mem, align 8
  %356 = bitcast i8** %pp.0.reload.reg2mem.0.pp.0.reload.reload to i64*
  %357 = load i64, i64* %356, align 8, !tbaa !1
  store i64 %357, i64* %.reg2mem100.sroa.0, align 8
  %.reg2mem100.sroa.0.0..reg2mem100.sroa.0.0..reload103 = load volatile i64, i64* %.reg2mem100.sroa.0, align 8
  %tobool = icmp ne i64 %.reg2mem100.sroa.0.0..reg2mem100.sroa.0.0..reload103, 0
  %358 = select i1 %tobool, i32 -284737338, i32 -1449396940
  br label %loopEntry.backedge

for.body32:                                       ; preds = %loopEntry
  %359 = load i32, i32* @x, align 4
  %360 = load i32, i32* @y, align 4
  %361 = add i32 %359, 579254510
  %362 = add i32 %361, -1
  %363 = sub i32 %362, 579254510
  %364 = add i32 %359, -1
  %365 = mul i32 %363, %359
  %366 = xor i32 1, -1
  %367 = xor i32 %365, %366
  %368 = and i32 %367, %365
  %369 = and i32 %365, 1
  %370 = icmp eq i32 %368, 0
  %371 = icmp slt i32 %360, 10
  %372 = and i1 %371, %370
  %373 = xor i1 %371, %370
  %374 = or i1 %372, %373
  %375 = or i1 %371, %370
  %376 = select i1 %374, i32 -1808480498, i32 1240088250
  br label %loopEntry.backedge

originalBB76:                                     ; preds = %loopEntry
  %flip.0.reload.reg2mem.0.flip.0.reload.reload = load volatile i32, i32* %flip.0.reload.reg2mem, align 4
  %377 = sub i32 1, -938169793
  %378 = sub i32 %377, %flip.0.reload.reg2mem.0.flip.0.reload.reload
  %379 = add i32 %378, -938169793
  %sub = sub nsw i32 1, %flip.0.reload.reg2mem.0.flip.0.reload.reload
  store i32 %379, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload104 = load volatile i32, i32* %sub.reg2mem, align 4
  %idxprom33 = sext i32 %sub.reg2mem.0.sub.reload104 to i64
  %seq.reg2mem.0.seq.reload86 = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %arrayidx34 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload86, i64 0, i64 %idxprom33
  %flip.0.reload.reg2mem.0.flip.0.reload.reload113 = load volatile i32, i32* %flip.0.reload.reg2mem, align 4
  %idxprom35 = sext i32 %flip.0.reload.reg2mem.0.flip.0.reload.reload113 to i64
  %seq.reg2mem.0.seq.reload85 = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %arrayidx36 = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload85, i64 0, i64 %idxprom35
  %pp.0.reload.reg2mem.0.pp.0.reload.reload109 = load volatile i8**, i8*** %pp.0.reload.reg2mem, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %pp.0.reload.reg2mem.0.pp.0.reload.reload109, i64 1
  %380 = load i8*, i8** %arrayidx37, align 8, !tbaa !1
  %.reg2mem100.sroa.0.0..reg2mem100.sroa.0.0..reload102 = load volatile i64, i64* %.reg2mem100.sroa.0, align 8
  %381 = inttoptr i64 %.reg2mem100.sroa.0.0..reg2mem100.sroa.0.0..reload102 to i8*
  %call38 = call fastcc i64 @fb_subst(%struct.fbuf* %arrayidx34, %struct.fbuf* %arrayidx36, i8* %381, i8* %380)
  store i64 %call38, i64* %call38.reg2mem, align 8
  %pp.0.reload.reg2mem.0.pp.0.reload.reload110 = load volatile i8**, i8*** %pp.0.reload.reg2mem, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %pp.0.reload.reg2mem.0.pp.0.reload.reload110, i64 2
  store i8** %add.ptr, i8*** %add.ptr.reg2mem, align 8
  %382 = load i32, i32* @x, align 4
  %383 = load i32, i32* @y, align 4
  %384 = sub i32 %382, -386627753
  %385 = add i32 %384, -1
  %386 = add i32 %385, -386627753
  %387 = add i32 %382, -1
  %388 = mul i32 %386, %382
  %389 = xor i32 %388, -1
  %390 = xor i32 1, -1
  %391 = xor i32 1185208174, -1
  %392 = or i32 %389, %390
  %393 = or i32 1185208174, %391
  %394 = xor i32 %392, -1
  %395 = and i32 %394, %393
  %396 = and i32 %388, 1
  %397 = icmp eq i32 %395, 0
  %398 = icmp slt i32 %383, 10
  %399 = and i1 %398, %397
  %400 = xor i1 %398, %397
  %401 = or i1 %399, %400
  %402 = or i1 %398, %397
  %403 = select i1 %401, i32 -2013043148, i32 1240088250
  br label %loopEntry.backedge

originalBBpart279:                                ; preds = %loopEntry
  %sub.reg2mem.0.sub.reload = load volatile i32, i32* %sub.reg2mem, align 4
  %call38.reg2mem.0.call38.reload = load volatile i64, i64* %call38.reg2mem, align 8
  %add.ptr.reg2mem.0.add.ptr.reload = load volatile i8**, i8*** %add.ptr.reg2mem, align 8
  br label %loopEntry.backedge

for.end41:                                        ; preds = %loopEntry
  %call3.reg2mem.0.call3.reload = load volatile i64, i64* %call3.reg2mem, align 8
  %call6.reg2mem.0.call6.reload = load volatile i64, i64* %call6.reg2mem, align 8
  %slen.0.reload.reg2mem.0.slen.0.reload.reload = load volatile i64, i64* %slen.0.reload.reg2mem, align 8
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %call3.reg2mem.0.call3.reload, i64 %call6.reg2mem.0.call6.reload, i64 %slen.0.reload.reg2mem.0.slen.0.reload.reload)
  %call43 = call i64 @clock() #6
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %404 = sub i64 %call43, 4055166299853718879
  %405 = sub i64 %404, %call.reg2mem.0.call.reload
  %406 = add i64 %405, 4055166299853718879
  %sub44 = sub nsw i64 %call43, %call.reg2mem.0.call.reload
  %conv = sitofp i64 %406 to double
  %div = fdiv double %conv, 1.000000e+06
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), double %div)
  %.reg2mem97.0..reload98 = load volatile i8*, i8** %.reg2mem97, align 8
  call void @llvm.lifetime.end(i64 72, i8* %.reg2mem97.0..reload98) #6
  %.reg2mem92.0..reload93 = load volatile i8*, i8** %.reg2mem92, align 8
  call void @llvm.lifetime.end(i64 48, i8* %.reg2mem92.0..reload93) #6
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %seqalteredBB = alloca [2 x %struct.fbuf], align 16
  %407 = bitcast [2 x %struct.fbuf]* %seqalteredBB to i8*
  call void @llvm.lifetime.start(i64 48, i8* nonnull %407) #6
  %arrayidxalteredBB = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seqalteredBB, i64 0, i64 0
  %arrayidx1alteredBB = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seqalteredBB, i64 0, i64 1
  %408 = bitcast [2 x %struct.fbuf]* %seqalteredBB to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %408, i8 0, i64 48, i32 16, i1 false)
  %callalteredBB = call i64 @clock() #6
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  %call3alteredBB = call fastcc i64 @fb_readall(%struct.fbuf* nonnull %arrayidxalteredBB, %struct._IO_FILE* %409)
  %call6alteredBB = call fastcc i64 @fb_subst(%struct.fbuf* %arrayidx1alteredBB, %struct.fbuf* nonnull %arrayidxalteredBB, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %loopEntry.backedge

originalBB68alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB72alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB76alteredBB:                            ; preds = %loopEntry
  %flip.0.reload.reg2mem.0.flip.0.reload.reload116 = load volatile i32, i32* %flip.0.reload.reg2mem, align 4
  %flip.0.reload.reg2mem.0.flip.0.reload.reload117 = load volatile i32, i32* %flip.0.reload.reg2mem, align 4
  %flip.0.reload.reg2mem.0.flip.0.reload.reload114 = load volatile i32, i32* %flip.0.reload.reg2mem, align 4
  %410 = sub i32 1, -243294843
  %411 = sub i32 %410, %flip.0.reload.reg2mem.0.flip.0.reload.reload114
  %412 = add i32 %411, -243294843
  %subalteredBB = sub nsw i32 1, %flip.0.reload.reg2mem.0.flip.0.reload.reload114
  %idxprom33alteredBB = sext i32 %412 to i64
  %seq.reg2mem.0.seq.reload84 = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %arrayidx34alteredBB = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload84, i64 0, i64 %idxprom33alteredBB
  %flip.0.reload.reg2mem.0.flip.0.reload.reload115 = load volatile i32, i32* %flip.0.reload.reg2mem, align 4
  %idxprom35alteredBB = sext i32 %flip.0.reload.reg2mem.0.flip.0.reload.reload115 to i64
  %seq.reg2mem.0.seq.reload = load volatile [2 x %struct.fbuf]*, [2 x %struct.fbuf]** %seq.reg2mem, align 8
  %arrayidx36alteredBB = getelementptr inbounds [2 x %struct.fbuf], [2 x %struct.fbuf]* %seq.reg2mem.0.seq.reload, i64 0, i64 %idxprom35alteredBB
  %pp.0.reload.reg2mem.0.pp.0.reload.reload111 = load volatile i8**, i8*** %pp.0.reload.reg2mem, align 8
  %arrayidx37alteredBB = getelementptr inbounds i8*, i8** %pp.0.reload.reg2mem.0.pp.0.reload.reload111, i64 1
  %413 = load i8*, i8** %arrayidx37alteredBB, align 8, !tbaa !1
  %.reg2mem100.sroa.0.0..reg2mem100.sroa.0.0..reload101 = load volatile i64, i64* %.reg2mem100.sroa.0, align 8
  %414 = inttoptr i64 %.reg2mem100.sroa.0.0..reg2mem100.sroa.0.0..reload101 to i8*
  %call38alteredBB = call fastcc i64 @fb_subst(%struct.fbuf* %arrayidx34alteredBB, %struct.fbuf* %arrayidx36alteredBB, i8* %414, i8* %413)
  %pp.0.reload.reg2mem.0.pp.0.reload.reload112 = load volatile i8**, i8*** %pp.0.reload.reg2mem, align 8
  br label %loopEntry.backedge
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @fb_readall(%struct.fbuf* %dst, %struct._IO_FILE* nocapture %fp) unnamed_addr #0 {
entry:
  %dp.0.reload.reg2mem = alloca i8*, align 8
  %.reg2mem = alloca i64, align 8
  %cmp.reg2mem = alloca i1, align 1
  %conv.reg2mem = alloca i32, align 4
  %len.reg2mem = alloca i64*, align 8
  %call = tail call fastcc i8* @fb_need(%struct.fbuf* %dst, i64 196608)
  %size = getelementptr inbounds %struct.fbuf, %struct.fbuf* %dst, i64 0, i32 1
  %len = getelementptr inbounds %struct.fbuf, %struct.fbuf* %dst, i64 0, i32 2
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %dp.0.reg2mem.0 = phi i8* [ %call, %entry ], [ %dp.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -705366026, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -705366026, label %for.cond
    i32 -1817331759, label %originalBB
    i32 470511108, label %originalBBpart2
    i32 -1088977820, label %for.body
    i32 1501435957, label %for.end
    i32 -644009153, label %if.then
    i32 -15884224, label %if.end
    i32 1258330298, label %originalBB21
    i32 -855441666, label %originalBBpart223
    i32 -1191272516, label %originalBBalteredBB
    i32 -1289208506, label %originalBB21alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB21alteredBB, %originalBBalteredBB, %originalBB21, %if.end, %for.end, %for.body, %originalBBpart2, %originalBB, %for.cond
  %dp.0.reg2mem.0.be = phi i8* [ %dp.0.reg2mem.0, %originalBB21alteredBB ], [ %dp.0.reg2mem.0, %originalBBalteredBB ], [ %dp.0.reg2mem.0, %originalBB21 ], [ %dp.0.reg2mem.0, %if.end ], [ %dp.0.reg2mem.0, %for.end ], [ %call5, %for.body ], [ %dp.0.reg2mem.0, %originalBBpart2 ], [ %dp.0.reg2mem.0, %originalBB ], [ %dp.0.reg2mem.0, %for.cond ], [ %dp.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1258330298, %originalBB21alteredBB ], [ -1817331759, %originalBBalteredBB ], [ %104, %originalBB21 ], [ %69, %if.end ], [ %51, %for.end ], [ -705366026, %for.body ], [ %45, %originalBBpart2 ], [ %44, %originalBB ], [ %22, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i8* %dp.0.reg2mem.0, i8** %dp.0.reload.reg2mem, align 8
  %0 = load i32, i32* @x.27, align 4
  %1 = load i32, i32* @y.28, align 4
  %2 = sub i32 0, %0
  %3 = sub i32 0, -1
  %4 = add i32 %2, %3
  %5 = sub i32 0, %4
  %6 = add i32 %0, -1
  %7 = mul i32 %5, %0
  %8 = xor i32 %7, -1
  %9 = xor i32 1, -1
  %10 = xor i32 696727468, -1
  %11 = or i32 %8, %9
  %12 = or i32 696727468, %10
  %13 = xor i32 %11, -1
  %14 = and i32 %13, %12
  %15 = and i32 %7, 1
  %16 = icmp eq i32 %14, 0
  %17 = icmp slt i32 %1, 10
  %18 = and i1 %17, %16
  %19 = xor i1 %17, %16
  %20 = or i1 %18, %19
  %21 = or i1 %17, %16
  %22 = select i1 %20, i32 -1817331759, i32 -1191272516
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %23 = load i64, i64* %size, align 8, !tbaa !11
  store i64* %len, i64** %len.reg2mem, align 8
  %len.reg2mem.0.len.reload29 = load volatile i64*, i64** %len.reg2mem, align 8
  %24 = load i64, i64* %len.reg2mem.0.len.reload29, align 8, !tbaa !8
  %25 = add i64 %23, -2616095034740306017
  %26 = sub i64 %25, %24
  %27 = sub i64 %26, -2616095034740306017
  %sub = sub i64 %23, %24
  %dp.0.reload.reg2mem.0.dp.0.reload.reload = load volatile i8*, i8** %dp.0.reload.reg2mem, align 8
  %call1 = tail call i64 @fread(i8* %dp.0.reload.reg2mem.0.dp.0.reload.reload, i64 1, i64 %27, %struct._IO_FILE* %fp)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %conv.reg2mem, align 4
  %conv.reg2mem.0.conv.reload30 = load volatile i32, i32* %conv.reg2mem, align 4
  %cmp = icmp sgt i32 %conv.reg2mem.0.conv.reload30, 0
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %28 = load i32, i32* @x.27, align 4
  %29 = load i32, i32* @y.28, align 4
  %30 = sub i32 0, -1
  %31 = sub i32 %28, %30
  %32 = add i32 %28, -1
  %33 = mul i32 %31, %28
  %34 = xor i32 1, -1
  %35 = xor i32 %33, %34
  %36 = and i32 %35, %33
  %37 = and i32 %33, 1
  %38 = icmp eq i32 %36, 0
  %39 = icmp slt i32 %29, 10
  %40 = and i1 %39, %38
  %41 = xor i1 %39, %38
  %42 = or i1 %40, %41
  %43 = or i1 %39, %38
  %44 = select i1 %42, i32 470511108, i32 -1191272516
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %45 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -1088977820, i32 1501435957
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %conv.reg2mem.0.conv.reload = load volatile i32, i32* %conv.reg2mem, align 4
  %conv3 = sext i32 %conv.reg2mem.0.conv.reload to i64
  %len.reg2mem.0.len.reload27 = load volatile i64*, i64** %len.reg2mem, align 8
  %46 = load i64, i64* %len.reg2mem.0.len.reload27, align 8, !tbaa !8
  %47 = sub i64 0, %46
  %48 = sub i64 0, %conv3
  %49 = add i64 %47, %48
  %50 = sub i64 0, %49
  %add = add i64 %46, %conv3
  %len.reg2mem.0.len.reload28 = load volatile i64*, i64** %len.reg2mem, align 8
  store i64 %50, i64* %len.reg2mem.0.len.reload28, align 8, !tbaa !8
  %call5 = tail call fastcc i8* @fb_need(%struct.fbuf* %dst, i64 196608)
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %call6 = tail call i32 @ferror(%struct._IO_FILE* %fp) #6
  %tobool = icmp ne i32 %call6, 0
  %51 = select i1 %tobool, i32 -644009153, i32 -15884224
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  tail call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %loopEntry
  %52 = load i32, i32* @x.27, align 4
  %53 = load i32, i32* @y.28, align 4
  %54 = add i32 %52, 467347347
  %55 = add i32 %54, -1
  %56 = sub i32 %55, 467347347
  %57 = add i32 %52, -1
  %58 = mul i32 %56, %52
  %59 = xor i32 1, -1
  %60 = xor i32 %58, %59
  %61 = and i32 %60, %58
  %62 = and i32 %58, 1
  %63 = icmp eq i32 %61, 0
  %64 = icmp slt i32 %53, 10
  %65 = and i1 %64, %63
  %66 = xor i1 %64, %63
  %67 = or i1 %65, %66
  %68 = or i1 %64, %63
  %69 = select i1 %67, i32 1258330298, i32 -1289208506
  br label %loopEntry.backedge

originalBB21:                                     ; preds = %loopEntry
  %len.reg2mem.0.len.reload26 = load volatile i64*, i64** %len.reg2mem, align 8
  %70 = load i64, i64* %len.reg2mem.0.len.reload26, align 8, !tbaa !8
  store i64 %70, i64* %.reg2mem, align 8
  %71 = load i32, i32* @x.27, align 4
  %72 = load i32, i32* @y.28, align 4
  %73 = add i32 %71, 2082473874
  %74 = add i32 %73, -1
  %75 = sub i32 %74, 2082473874
  %76 = add i32 %71, -1
  %77 = mul i32 %75, %71
  %78 = xor i32 %77, -1
  %79 = xor i32 1, -1
  %80 = xor i32 2106612660, -1
  %81 = or i32 %78, %79
  %82 = or i32 2106612660, %80
  %83 = xor i32 %81, -1
  %84 = and i32 %83, %82
  %85 = and i32 %77, 1
  %86 = icmp eq i32 %84, 0
  %87 = icmp slt i32 %72, 10
  %88 = xor i1 %87, true
  %89 = xor i1 %86, true
  %90 = xor i1 false, true
  %91 = and i1 %88, false
  %92 = and i1 %87, %90
  %93 = and i1 %89, false
  %94 = and i1 %86, %90
  %95 = or i1 %91, %92
  %96 = or i1 %93, %94
  %97 = xor i1 %95, %96
  %98 = or i1 %88, %89
  %99 = xor i1 %98, true
  %100 = or i1 false, %90
  %101 = and i1 %99, %100
  %102 = or i1 %97, %101
  %103 = or i1 %87, %86
  %104 = select i1 %102, i32 -855441666, i32 -1289208506
  br label %loopEntry.backedge

originalBBpart223:                                ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i64, i64* %.reg2mem, align 8
  ret i64 %.reg2mem.0..reload

originalBBalteredBB:                              ; preds = %loopEntry
  %105 = load i64, i64* %size, align 8, !tbaa !11
  %106 = load i64, i64* %len, align 8, !tbaa !8
  %107 = sub i64 %105, 6122745466088428421
  %108 = sub i64 %107, %106
  %109 = add i64 %108, 6122745466088428421
  %subalteredBB = sub i64 %105, %106
  %dp.0.reload.reg2mem.0.dp.0.reload.reload31 = load volatile i8*, i8** %dp.0.reload.reg2mem, align 8
  %call1alteredBB = tail call i64 @fread(i8* %dp.0.reload.reg2mem.0.dp.0.reload.reload31, i64 1, i64 %109, %struct._IO_FILE* %fp)
  br label %loopEntry.backedge

originalBB21alteredBB:                            ; preds = %loopEntry
  %len.reg2mem.0.len.reload = load volatile i64*, i64** %len.reg2mem, align 8
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @fb_subst(%struct.fbuf* %dst, %struct.fbuf* %src, i8* %p, i8* nocapture readonly %r) unnamed_addr #0 {
entry:
  %pos.0.reload.reg2mem = alloca i32, align 4
  %len3.reg2mem = alloca i64*, align 8
  %buf.reg2mem = alloca i8**, align 8
  %conv.reg2mem = alloca i32, align 4
  %len.reg2mem = alloca i64*, align 8
  %call1.reg2mem = alloca %struct.pcre_extra*, align 8
  %call.reg2mem = alloca %struct.real_pcre*, align 8
  %.reg2mem69 = alloca i8*, align 8
  %.reg2mem66 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %re_e = alloca i8*, align 8
  %re_eo = alloca i32, align 4
  %m = alloca [3 x i32], align 4
  %0 = bitcast i8** %.reg2mem to i8***
  store i8** %re_e, i8*** %0, align 8
  %.reg2mem.0..reload65 = load volatile i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start(i64 8, i8* %.reg2mem.0..reload65) #6
  %1 = bitcast i8** %.reg2mem66 to i32**
  store i32* %re_eo, i32** %1, align 8
  %.reg2mem66.0..reload68 = load volatile i8*, i8** %.reg2mem66, align 8
  call void @llvm.lifetime.start(i64 4, i8* %.reg2mem66.0..reload68) #6
  %2 = bitcast i8** %.reg2mem69 to [3 x i32]**
  store [3 x i32]* %m, [3 x i32]** %2, align 8
  %.reg2mem69.0..reload71 = load volatile i8*, i8** %.reg2mem69, align 8
  call void @llvm.lifetime.start(i64 12, i8* %.reg2mem69.0..reload71) #6
  %call = call %struct.real_pcre* @pcre_compile(i8* %p, i32 0, i8** nonnull %re_e, i32* nonnull %re_eo, i8* null) #6
  store %struct.real_pcre* %call, %struct.real_pcre** %call.reg2mem, align 8
  %buf = getelementptr inbounds %struct.fbuf, %struct.fbuf* %src, i64 0, i32 0
  %len3 = getelementptr inbounds %struct.fbuf, %struct.fbuf* %src, i64 0, i32 2
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %m, i64 0, i64 0
  %len = getelementptr inbounds %struct.fbuf, %struct.fbuf* %dst, i64 0, i32 2
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %m, i64 0, i64 1
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %pos.0.reg2mem.0.ph = phi i32 [ undef, %entry ], [ %pos.0.reg2mem.0.ph.be, %loopEntry.outer.backedge ]
  %switchVar.0.ph = phi i32 [ -1457040172, %entry ], [ 1450880358, %loopEntry.outer.backedge ]
  br label %loopEntry.outer86

loopEntry.outer86:                                ; preds = %loopEntry.outer86.backedge, %loopEntry.outer
  %switchVar.0.ph87 = phi i32 [ %switchVar.0.ph, %loopEntry.outer ], [ %switchVar.0.ph87.be, %loopEntry.outer86.backedge ]
  switch i32 %switchVar.0.ph87, label %infloop.preheader [
    i32 -1457040172, label %first.split
    i32 2035502313, label %if.then.split
    i32 -1667929756, label %if.end.split
    i32 1450880358, label %for.cond.split
    i32 -460924954, label %for.body.split
    i32 -256839427, label %for.end.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer86
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer86
  %call.reg2mem.0.call.reload73 = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem, align 8
  %tobool = icmp ne %struct.real_pcre* %call.reg2mem.0.call.reload73, null
  %3 = select i1 %tobool, i32 -1667929756, i32 2035502313
  br label %loopEntry.outer86.backedge

if.then.split:                                    ; preds = %loopEntry.outer86
  call void @exit(i32 1) #7
  unreachable

if.end.split:                                     ; preds = %loopEntry.outer86
  %call.reg2mem.0.call.reload = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem, align 8
  %call1 = call %struct.pcre_extra* @pcre_study(%struct.real_pcre* %call.reg2mem.0.call.reload, i32 1, i8** nonnull %re_e) #6
  store %struct.pcre_extra* %call1, %struct.pcre_extra** %call1.reg2mem, align 8
  store i64* %len, i64** %len.reg2mem, align 8
  %len.reg2mem.0.len.reload78 = load volatile i64*, i64** %len.reg2mem, align 8
  store i64 0, i64* %len.reg2mem.0.len.reload78, align 8, !tbaa !8
  %call2 = call i64 @strlen(i8* %r) #8
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %conv.reg2mem, align 4
  br label %loopEntry.outer.backedge

for.cond.split:                                   ; preds = %loopEntry.outer86
  store i32 %pos.0.reg2mem.0.ph, i32* %pos.0.reload.reg2mem, align 4
  store i8** %buf, i8*** %buf.reg2mem, align 8
  %buf.reg2mem.0.buf.reload81 = load volatile i8**, i8*** %buf.reg2mem, align 8
  %4 = load i8*, i8** %buf.reg2mem.0.buf.reload81, align 8, !tbaa !5
  store i64* %len3, i64** %len3.reg2mem, align 8
  %len3.reg2mem.0.len3.reload82 = load volatile i64*, i64** %len3.reg2mem, align 8
  %5 = load i64, i64* %len3.reg2mem.0.len3.reload82, align 8, !tbaa !8
  %conv4 = trunc i64 %5 to i32
  %call.reg2mem.0.call.reload72 = load volatile %struct.real_pcre*, %struct.real_pcre** %call.reg2mem, align 8
  %call1.reg2mem.0.call1.reload = load volatile %struct.pcre_extra*, %struct.pcre_extra** %call1.reg2mem, align 8
  %pos.0.reload.reg2mem.0.pos.0.reload.reload = load volatile i32, i32* %pos.0.reload.reg2mem, align 4
  %call5 = call i32 @pcre_exec(%struct.real_pcre* %call.reg2mem.0.call.reload72, %struct.pcre_extra* %call1.reg2mem.0.call1.reload, i8* %4, i32 %conv4, i32 %pos.0.reload.reg2mem.0.pos.0.reload.reload, i32 0, i32* nonnull %arraydecay, i32 3) #6
  %6 = ashr i32 %call5, 31
  %7 = xor i32 204085527, -1
  %8 = xor i32 %6, %7
  %9 = and i32 %8, %6
  %10 = and i32 %6, 204085527
  %11 = sub i32 %9, 1350706009
  %12 = add i32 %11, -460924954
  %13 = add i32 %12, 1350706009
  %14 = add nsw i32 %9, -460924954
  br label %loopEntry.outer86.backedge

loopEntry.outer86.backedge:                       ; preds = %for.cond.split, %first.split
  %switchVar.0.ph87.be = phi i32 [ %3, %first.split ], [ %13, %for.cond.split ]
  br label %loopEntry.outer86

for.body.split:                                   ; preds = %loopEntry.outer86
  %15 = load i32, i32* %arraydecay, align 4, !tbaa !9
  %pos.0.reload.reg2mem.0.pos.0.reload.reload83 = load volatile i32, i32* %pos.0.reload.reg2mem, align 4
  %16 = add i32 %15, 907022656
  %17 = sub i32 %16, %pos.0.reload.reg2mem.0.pos.0.reload.reload83
  %18 = sub i32 %17, 907022656
  %sub = sub nsw i32 %15, %pos.0.reload.reg2mem.0.pos.0.reload.reload83
  %conv.reg2mem.0.conv.reload = load volatile i32, i32* %conv.reg2mem, align 4
  %19 = sub i32 0, %18
  %20 = sub i32 0, %conv.reg2mem.0.conv.reload
  %21 = add i32 %19, %20
  %22 = sub i32 0, %21
  %add = add nsw i32 %18, %conv.reg2mem.0.conv.reload
  %conv7 = sext i32 %22 to i64
  %call8 = call fastcc i8* @fb_need(%struct.fbuf* %dst, i64 %conv7)
  %len.reg2mem.0.len.reload76 = load volatile i64*, i64** %len.reg2mem, align 8
  %23 = load i64, i64* %len.reg2mem.0.len.reload76, align 8, !tbaa !8
  %24 = add i64 %23, 7690369817260892608
  %25 = add i64 %24, %conv7
  %26 = sub i64 %25, 7690369817260892608
  %add12 = add i64 %23, %conv7
  %len.reg2mem.0.len.reload77 = load volatile i64*, i64** %len.reg2mem, align 8
  store i64 %26, i64* %len.reg2mem.0.len.reload77, align 8, !tbaa !8
  %buf.reg2mem.0.buf.reload80 = load volatile i8**, i8*** %buf.reg2mem, align 8
  %27 = load i8*, i8** %buf.reg2mem.0.buf.reload80, align 8, !tbaa !5
  %pos.0.reload.reg2mem.0.pos.0.reload.reload84 = load volatile i32, i32* %pos.0.reload.reg2mem, align 4
  %idx.ext = sext i32 %pos.0.reload.reg2mem.0.pos.0.reload.reload84 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %conv14 = sext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call8, i8* %add.ptr, i64 %conv14, i32 1, i1 false)
  %add.ptr16 = getelementptr inbounds i8, i8* %call8, i64 %conv14
  %conv.reg2mem.0.conv.reload79 = load volatile i32, i32* %conv.reg2mem, align 4
  %conv17 = sext i32 %conv.reg2mem.0.conv.reload79 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr16, i8* %r, i64 %conv17, i32 1, i1 false)
  %28 = load i32, i32* %arrayidx18, align 4, !tbaa !9
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %for.body.split, %if.end.split
  %pos.0.reg2mem.0.ph.be = phi i32 [ 0, %if.end.split ], [ %28, %for.body.split ]
  br label %loopEntry.outer

for.end.split:                                    ; preds = %loopEntry.outer86
  %len3.reg2mem.0.len3.reload = load volatile i64*, i64** %len3.reg2mem, align 8
  %29 = load i64, i64* %len3.reg2mem.0.len3.reload, align 8, !tbaa !8
  %pos.0.reload.reg2mem.0.pos.0.reload.reload85 = load volatile i32, i32* %pos.0.reload.reg2mem, align 4
  %conv20 = sext i32 %pos.0.reload.reg2mem.0.pos.0.reload.reload85 to i64
  %30 = sub i64 0, %conv20
  %31 = add i64 %29, %30
  %sub21 = sub i64 %29, %conv20
  %sext = shl i64 %31, 32
  %conv23 = ashr exact i64 %sext, 32
  %call24 = call fastcc i8* @fb_need(%struct.fbuf* %dst, i64 %conv23)
  %len.reg2mem.0.len.reload74 = load volatile i64*, i64** %len.reg2mem, align 8
  %32 = load i64, i64* %len.reg2mem.0.len.reload74, align 8, !tbaa !8
  %33 = sub i64 0, %conv23
  %34 = sub i64 0, %32
  %35 = add i64 %33, %34
  %36 = sub i64 0, %35
  %add27 = add i64 %conv23, %32
  %len.reg2mem.0.len.reload75 = load volatile i64*, i64** %len.reg2mem, align 8
  store i64 %36, i64* %len.reg2mem.0.len.reload75, align 8, !tbaa !8
  %buf.reg2mem.0.buf.reload = load volatile i8**, i8*** %buf.reg2mem, align 8
  %37 = load i8*, i8** %buf.reg2mem.0.buf.reload, align 8, !tbaa !5
  %add.ptr30 = getelementptr inbounds i8, i8* %37, i64 %conv20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call24, i8* %add.ptr30, i64 %conv23, i32 1, i1 false)
  %len.reg2mem.0.len.reload = load volatile i64*, i64** %len.reg2mem, align 8
  %38 = load i64, i64* %len.reg2mem.0.len.reload, align 8, !tbaa !8
  %.reg2mem69.0..reload70 = load volatile i8*, i8** %.reg2mem69, align 8
  call void @llvm.lifetime.end(i64 12, i8* %.reg2mem69.0..reload70) #6
  %.reg2mem66.0..reload67 = load volatile i8*, i8** %.reg2mem66, align 8
  call void @llvm.lifetime.end(i64 4, i8* %.reg2mem66.0..reload67) #6
  %.reg2mem.0..reload = load volatile i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end(i64 8, i8* %.reg2mem.0..reload) #6
  ret i64 %38

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @fb_need(%struct.fbuf* %b, i64 %need) unnamed_addr #0 {
entry:
  %.reg2mem45 = alloca i64, align 8
  %cmp2.reg2mem = alloca i1, align 1
  %.reg2mem = alloca i64, align 8
  %size.reg2mem = alloca i64*, align 8
  %add.reg2mem = alloca i64, align 8
  %len.reg2mem = alloca i64*, align 8
  %len = getelementptr inbounds %struct.fbuf, %struct.fbuf* %b, i64 0, i32 2
  store i64* %len, i64** %len.reg2mem, align 8
  %len.reg2mem.0.len.reload36 = load volatile i64*, i64** %len.reg2mem, align 8
  %0 = load i64, i64* %len.reg2mem.0.len.reload36, align 8, !tbaa !8
  %1 = sub i64 0, %0
  %2 = sub i64 0, %need
  %3 = add i64 %1, %2
  %4 = sub i64 0, %3
  %add = add i64 %0, %need
  store i64 %4, i64* %add.reg2mem, align 8
  %size = getelementptr inbounds %struct.fbuf, %struct.fbuf* %b, i64 0, i32 1
  store i64* %size, i64** %size.reg2mem, align 8
  %size.reg2mem.0.size.reload42 = load volatile i64*, i64** %size.reg2mem, align 8
  %5 = load i64, i64* %size.reg2mem.0.size.reload42, align 8, !tbaa !11
  store i64 %5, i64* %.reg2mem, align 8
  %buf = getelementptr inbounds %struct.fbuf, %struct.fbuf* %b, i64 0, i32 0
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %switchVar.0 = phi i32 [ -781997423, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -781997423, label %first
    i32 -1613680348, label %if.then
    i32 -235699583, label %originalBB
    i32 -407852115, label %originalBBpart2
    i32 -1434290503, label %if.then3
    i32 -910083681, label %while.cond
    i32 -104646589, label %while.body
    i32 -1392168175, label %if.end
    i32 2086066600, label %if.then12
    i32 -1199553423, label %originalBB31
    i32 1514017781, label %originalBB31alteredBB
    i32 353703665, label %if.end14
    i32 -1216919115, label %originalBBalteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBBalteredBB, %if.then12, %if.end, %while.body, %while.cond, %if.then3, %originalBBpart2, %originalBB, %if.then, %first
  %switchVar.0.be = phi i32 [ -235699583, %originalBBalteredBB ], [ %70, %if.then12 ], [ %52, %if.end ], [ -910083681, %while.body ], [ %49, %while.cond ], [ -1392168175, %if.then3 ], [ %47, %originalBBpart2 ], [ %46, %originalBB ], [ %24, %if.then ], [ %6, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %add.reg2mem.0.add.reload38 = load volatile i64, i64* %add.reg2mem, align 8
  %.reg2mem.0..reload44 = load volatile i64, i64* %.reg2mem, align 8
  %cmp = icmp ugt i64 %add.reg2mem.0.add.reload38, %.reg2mem.0..reload44
  %6 = select i1 %cmp, i32 -1613680348, i32 353703665
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %7 = load i32, i32* @x.33, align 4
  %8 = load i32, i32* @y.34, align 4
  %9 = sub i32 %7, 813237850
  %10 = add i32 %9, -1
  %11 = add i32 %10, 813237850
  %12 = add i32 %7, -1
  %13 = mul i32 %11, %7
  %14 = xor i32 1, -1
  %15 = xor i32 %13, %14
  %16 = and i32 %15, %13
  %17 = and i32 %13, 1
  %18 = icmp eq i32 %16, 0
  %19 = icmp slt i32 %8, 10
  %20 = and i1 %19, %18
  %21 = xor i1 %19, %18
  %22 = or i1 %20, %21
  %23 = or i1 %19, %18
  %24 = select i1 %22, i32 -235699583, i32 -1216919115
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %.reg2mem.0..reload43 = load volatile i64, i64* %.reg2mem, align 8
  %cmp2 = icmp eq i64 %.reg2mem.0..reload43, 0
  store i1 %cmp2, i1* %cmp2.reg2mem, align 1
  %25 = load i32, i32* @x.33, align 4
  %26 = load i32, i32* @y.34, align 4
  %27 = add i32 %25, 1426863841
  %28 = add i32 %27, -1
  %29 = sub i32 %28, 1426863841
  %30 = add i32 %25, -1
  %31 = mul i32 %29, %25
  %32 = xor i32 %31, -1
  %33 = xor i32 1, -1
  %34 = xor i32 -233472822, -1
  %35 = or i32 %32, %33
  %36 = or i32 -233472822, %34
  %37 = xor i32 %35, -1
  %38 = and i32 %37, %36
  %39 = and i32 %31, 1
  %40 = icmp eq i32 %38, 0
  %41 = icmp slt i32 %26, 10
  %42 = and i1 %41, %40
  %43 = xor i1 %41, %40
  %44 = or i1 %42, %43
  %45 = or i1 %41, %40
  %46 = select i1 %44, i32 -407852115, i32 -1216919115
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp2.reg2mem.0.cmp2.reload = load volatile i1, i1* %cmp2.reg2mem, align 1
  %47 = select i1 %cmp2.reg2mem.0.cmp2.reload, i32 -1434290503, i32 -910083681
  br label %loopEntry.backedge

if.then3:                                         ; preds = %loopEntry
  %add.reg2mem.0.add.reload37 = load volatile i64, i64* %add.reg2mem, align 8
  %size.reg2mem.0.size.reload41 = load volatile i64*, i64** %size.reg2mem, align 8
  store i64 %add.reg2mem.0.add.reload37, i64* %size.reg2mem.0.size.reload41, align 8, !tbaa !11
  br label %loopEntry.backedge

while.cond:                                       ; preds = %loopEntry
  %size.reg2mem.0.size.reload39 = load volatile i64*, i64** %size.reg2mem, align 8
  %48 = load i64, i64* %size.reg2mem.0.size.reload39, align 8, !tbaa !11
  store i64 %48, i64* %.reg2mem45, align 8
  %add.reg2mem.0.add.reload = load volatile i64, i64* %add.reg2mem, align 8
  %.reg2mem45.0..reload47 = load volatile i64, i64* %.reg2mem45, align 8
  %cmp6 = icmp ugt i64 %add.reg2mem.0.add.reload, %.reg2mem45.0..reload47
  %49 = select i1 %cmp6, i32 -104646589, i32 -1392168175
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  %.reg2mem45.0..reload46 = load volatile i64, i64* %.reg2mem45, align 8
  %add9 = shl i64 %.reg2mem45.0..reload46, 1
  %size.reg2mem.0.size.reload = load volatile i64*, i64** %size.reg2mem, align 8
  store i64 %add9, i64* %size.reg2mem.0.size.reload, align 8, !tbaa !11
  br label %loopEntry.backedge

if.end:                                           ; preds = %loopEntry
  %50 = load i8*, i8** %buf, align 8, !tbaa !5
  %size.reg2mem.0.size.reload40 = load volatile i64*, i64** %size.reg2mem, align 8
  %51 = load i64, i64* %size.reg2mem.0.size.reload40, align 8, !tbaa !11
  %call = tail call i8* @realloc(i8* %50, i64 %51) #6
  store i8* %call, i8** %buf, align 8, !tbaa !5
  %tobool = icmp ne i8* %call, null
  %52 = select i1 %tobool, i32 353703665, i32 2086066600
  br label %loopEntry.backedge

if.then12:                                        ; preds = %loopEntry
  %53 = load i32, i32* @x.33, align 4
  %54 = load i32, i32* @y.34, align 4
  %55 = add i32 %53, 78516475
  %56 = add i32 %55, -1
  %57 = sub i32 %56, 78516475
  %58 = add i32 %53, -1
  %59 = mul i32 %57, %53
  %60 = xor i32 1, -1
  %61 = xor i32 %59, %60
  %62 = and i32 %61, %59
  %63 = and i32 %59, 1
  %64 = icmp eq i32 %62, 0
  %65 = icmp slt i32 %54, 10
  %66 = and i1 %65, %64
  %67 = xor i1 %65, %64
  %68 = or i1 %66, %67
  %69 = or i1 %65, %64
  %70 = select i1 %68, i32 -1199553423, i32 1514017781
  br label %loopEntry.backedge

originalBB31:                                     ; preds = %loopEntry
  tail call void @exit(i32 1) #7
  unreachable

if.end14:                                         ; preds = %loopEntry
  %71 = load i8*, i8** %buf, align 8, !tbaa !5
  %len.reg2mem.0.len.reload = load volatile i64*, i64** %len.reg2mem, align 8
  %72 = load i64, i64* %len.reg2mem.0.len.reload, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 %72
  ret i8* %add.ptr

originalBBalteredBB:                              ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i64, i64* %.reg2mem, align 8
  br label %loopEntry.backedge

originalBB31alteredBB:                            ; preds = %loopEntry
  tail call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

declare %struct.real_pcre* @pcre_compile(i8*, i32, i8**, i32*, i8*) local_unnamed_addr #5

declare %struct.pcre_extra* @pcre_study(%struct.real_pcre*, i32, i8**) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #3

declare i32 @pcre_exec(%struct.real_pcre*, %struct.pcre_extra*, i8*, i32, i32, i32, i32*, i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"fbuf", !2, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"long", !3, i64 0}
!8 = !{!6, !7, i64 16}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!6, !7, i64 8}
