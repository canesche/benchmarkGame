; ModuleID = 'matrix/matrix.c'
source_filename = "matrix/matrix.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.2 = common local_unnamed_addr global i32 0
@y.3 = common local_unnamed_addr global i32 0
@x.4 = common local_unnamed_addr global i32 0
@y.5 = common local_unnamed_addr global i32 0
@x.6 = common local_unnamed_addr global i32 0
@y.7 = common local_unnamed_addr global i32 0
@x.8 = common local_unnamed_addr global i32 0
@y.9 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32** @mkmatrix(i32 %rows, i32 %cols) local_unnamed_addr #0 {
entry:
  %j.0.reload.reg2mem = alloca i32, align 4
  %count.1.reload.reg2mem = alloca i32, align 4
  %count.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %arrayidx.reg2mem = alloca i32**, align 8
  %.reg2mem = alloca i32**, align 8
  %conv = sext i32 %rows to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #3
  %0 = bitcast i32*** %.reg2mem to i8**
  store i8* %call, i8** %0, align 8
  %conv2 = sext i32 %cols to i64
  %mul3 = shl nsw i64 %conv2, 2
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %count.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %count.1.reg2mem.0.be, %loopEntry.backedge ]
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %count.0.reg2mem.0 = phi i32 [ 1, %entry ], [ %count.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 796631202, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 796631202, label %for.cond
    i32 -1713946232, label %for.body
    i32 973228298, label %for.cond5
    i32 -1159168713, label %for.body8
    i32 1282526404, label %for.inc14
    i32 -1434646609, label %for.end16
    i32 -24976930, label %originalBB
    i32 -1502891101, label %originalBBpart2
    i32 152406740, label %originalBBalteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBBalteredBB, %originalBB, %for.end16, %for.inc14, %for.body8, %for.cond5, %for.body, %for.cond
  %count.1.reg2mem.0.be = phi i32 [ %count.1.reg2mem.0, %originalBBalteredBB ], [ %count.1.reg2mem.0, %originalBB ], [ %count.1.reg2mem.0, %for.end16 ], [ %count.1.reg2mem.0, %for.inc14 ], [ %5, %for.body8 ], [ %count.1.reg2mem.0, %for.cond5 ], [ %count.0.reload.reg2mem.0.count.0.reload.reload, %for.body ], [ %count.1.reg2mem.0, %for.cond ], [ %count.1.reg2mem.0, %loopEntry ]
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %for.end16 ], [ %j.0.reg2mem.0, %for.inc14 ], [ %9, %for.body8 ], [ %j.0.reg2mem.0, %for.cond5 ], [ 0, %for.body ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.end16 ], [ %12, %for.inc14 ], [ %i.0.reg2mem.0, %for.body8 ], [ %i.0.reg2mem.0, %for.cond5 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %count.0.reg2mem.0.be = phi i32 [ %count.0.reg2mem.0, %originalBBalteredBB ], [ %count.0.reg2mem.0, %originalBB ], [ %count.0.reg2mem.0, %for.end16 ], [ %count.1.reload.reg2mem.0.count.1.reload.reload36, %for.inc14 ], [ %count.0.reg2mem.0, %for.body8 ], [ %count.0.reg2mem.0, %for.cond5 ], [ %count.0.reg2mem.0, %for.body ], [ %count.0.reg2mem.0, %for.cond ], [ %count.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -24976930, %originalBBalteredBB ], [ %76, %originalBB ], [ %46, %for.end16 ], [ 796631202, %for.inc14 ], [ 973228298, %for.body8 ], [ %3, %for.cond5 ], [ 973228298, %for.body ], [ %1, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  store i32 %count.0.reg2mem.0, i32* %count.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %rows
  %1 = select i1 %cmp, i32 -1713946232, i32 -1434646609
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %call4 = tail call noalias i8* @malloc(i64 %mul3) #3
  %i.0.reload.reg2mem.0.i.0.reload.reload33 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload33 to i64
  %.reg2mem.0..reload = load volatile i32**, i32*** %.reg2mem, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %.reg2mem.0..reload, i64 %idxprom
  store i32** %arrayidx, i32*** %arrayidx.reg2mem, align 8
  %arrayidx.reg2mem.0.arrayidx.reload32 = load volatile i32**, i32*** %arrayidx.reg2mem, align 8
  %2 = bitcast i32** %arrayidx.reg2mem.0.arrayidx.reload32 to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !1
  %count.0.reload.reg2mem.0.count.0.reload.reload = load volatile i32, i32* %count.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

for.cond5:                                        ; preds = %loopEntry
  store i32 %count.1.reg2mem.0, i32* %count.1.reload.reg2mem, align 4
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp6 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload, %cols
  %3 = select i1 %cmp6, i32 -1159168713, i32 1282526404
  br label %loopEntry.backedge

for.body8:                                        ; preds = %loopEntry
  %count.1.reload.reg2mem.0.count.1.reload.reload = load volatile i32, i32* %count.1.reload.reg2mem, align 4
  %4 = sub i32 0, 1
  %5 = sub i32 %count.1.reload.reg2mem.0.count.1.reload.reload, %4
  %inc = add nsw i32 %count.1.reload.reg2mem.0.count.1.reload.reload, 1
  %arrayidx.reg2mem.0.arrayidx.reload = load volatile i32**, i32*** %arrayidx.reg2mem, align 8
  %6 = load i32*, i32** %arrayidx.reg2mem.0.arrayidx.reload, align 8, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload37 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom11 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload37 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %6, i64 %idxprom11
  %count.1.reload.reg2mem.0.count.1.reload.reload35 = load volatile i32, i32* %count.1.reload.reg2mem, align 4
  store i32 %count.1.reload.reg2mem.0.count.1.reload.reload35, i32* %arrayidx12, align 4, !tbaa !5
  %j.0.reload.reg2mem.0.j.0.reload.reload38 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %7 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload38, -1902664432
  %8 = add i32 %7, 1
  %9 = add i32 %8, -1902664432
  %inc13 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload38, 1
  br label %loopEntry.backedge

for.inc14:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload34 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %10 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload34, 1354654564
  %11 = add i32 %10, 1
  %12 = add i32 %11, 1354654564
  %inc15 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload34, 1
  %count.1.reload.reg2mem.0.count.1.reload.reload36 = load volatile i32, i32* %count.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

for.end16:                                        ; preds = %loopEntry
  %13 = load i32, i32* @x, align 4
  %14 = load i32, i32* @y, align 4
  %15 = sub i32 %13, 406083535
  %16 = add i32 %15, -1
  %17 = add i32 %16, 406083535
  %18 = add i32 %13, -1
  %19 = mul i32 %17, %13
  %20 = xor i32 %19, -1
  %21 = xor i32 1, -1
  %22 = xor i32 -1640359140, -1
  %23 = or i32 %20, %21
  %24 = or i32 -1640359140, %22
  %25 = xor i32 %23, -1
  %26 = and i32 %25, %24
  %27 = and i32 %19, 1
  %28 = icmp eq i32 %26, 0
  %29 = icmp slt i32 %14, 10
  %30 = xor i1 %29, true
  %31 = xor i1 %28, true
  %32 = xor i1 false, true
  %33 = and i1 %30, false
  %34 = and i1 %29, %32
  %35 = and i1 %31, false
  %36 = and i1 %28, %32
  %37 = or i1 %33, %34
  %38 = or i1 %35, %36
  %39 = xor i1 %37, %38
  %40 = or i1 %30, %31
  %41 = xor i1 %40, true
  %42 = or i1 false, %32
  %43 = and i1 %41, %42
  %44 = or i1 %39, %43
  %45 = or i1 %29, %28
  %46 = select i1 %44, i32 -24976930, i32 152406740
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %47 = load i32, i32* @x, align 4
  %48 = load i32, i32* @y, align 4
  %49 = sub i32 %47, -348507762
  %50 = add i32 %49, -1
  %51 = add i32 %50, -348507762
  %52 = add i32 %47, -1
  %53 = mul i32 %51, %47
  %54 = xor i32 1, -1
  %55 = xor i32 %53, %54
  %56 = and i32 %55, %53
  %57 = and i32 %53, 1
  %58 = icmp eq i32 %56, 0
  %59 = icmp slt i32 %48, 10
  %60 = xor i1 %59, true
  %61 = xor i1 %58, true
  %62 = xor i1 false, true
  %63 = and i1 %60, false
  %64 = and i1 %59, %62
  %65 = and i1 %61, false
  %66 = and i1 %58, %62
  %67 = or i1 %63, %64
  %68 = or i1 %65, %66
  %69 = xor i1 %67, %68
  %70 = or i1 %60, %61
  %71 = xor i1 %70, true
  %72 = or i1 false, %62
  %73 = and i1 %71, %72
  %74 = or i1 %69, %73
  %75 = or i1 %59, %58
  %76 = select i1 %74, i32 -1502891101, i32 152406740
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %.reg2mem.0..reload31 = load volatile i32**, i32*** %.reg2mem, align 8
  ret i32** %.reg2mem.0..reload31

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define void @zeromatrix(i32 %rows, i32 %cols, i32** nocapture readonly %m) local_unnamed_addr #2 {
entry:
  %j.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 1536874349, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 1536874349, label %for.cond
    i32 -1620552331, label %for.body
    i32 1437293373, label %for.cond1
    i32 1774730484, label %for.body3
    i32 1802447469, label %for.inc6
    i32 -2116650700, label %for.end8
    i32 809590881, label %originalBB
    i32 -1766851581, label %originalBBpart2
    i32 1902397312, label %originalBBalteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBBalteredBB, %originalBB, %for.end8, %for.inc6, %for.body3, %for.cond1, %for.body, %for.cond
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %for.end8 ], [ %j.0.reg2mem.0, %for.inc6 ], [ %5, %for.body3 ], [ %j.0.reg2mem.0, %for.cond1 ], [ 0, %for.body ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.end8 ], [ %8, %for.inc6 ], [ %i.0.reg2mem.0, %for.body3 ], [ %i.0.reg2mem.0, %for.cond1 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 809590881, %originalBBalteredBB ], [ %60, %originalBB ], [ %38, %for.end8 ], [ 1536874349, %for.inc6 ], [ 1437293373, %for.body3 ], [ %1, %for.cond1 ], [ 1437293373, %for.body ], [ %0, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %rows
  %0 = select i1 %cmp, i32 -1620552331, i32 -2116650700
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond1:                                        ; preds = %loopEntry
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp2 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload, %cols
  %1 = select i1 %cmp2, i32 1774730484, i32 1802447469
  br label %loopEntry.backedge

for.body3:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload16 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload16 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %m, i64 %idxprom
  %2 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload18 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom4 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload18 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %2, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4, !tbaa !5
  %j.0.reload.reg2mem.0.j.0.reload.reload19 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %3 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload19, -107230216
  %4 = add i32 %3, 1
  %5 = add i32 %4, -107230216
  %inc = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload19, 1
  br label %loopEntry.backedge

for.inc6:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload17 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %6 = add i32 %i.0.reload.reg2mem.0.i.0.reload.reload17, -212846074
  %7 = add i32 %6, 1
  %8 = sub i32 %7, -212846074
  %inc7 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload17, 1
  br label %loopEntry.backedge

for.end8:                                         ; preds = %loopEntry
  %9 = load i32, i32* @x.2, align 4
  %10 = load i32, i32* @y.3, align 4
  %11 = sub i32 %9, 1547385974
  %12 = add i32 %11, -1
  %13 = add i32 %12, 1547385974
  %14 = add i32 %9, -1
  %15 = mul i32 %13, %9
  %16 = xor i32 1, -1
  %17 = xor i32 %15, %16
  %18 = and i32 %17, %15
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %18, 0
  %21 = icmp slt i32 %10, 10
  %22 = xor i1 %21, true
  %23 = xor i1 %20, true
  %24 = xor i1 true, true
  %25 = and i1 %22, true
  %26 = and i1 %21, %24
  %27 = and i1 %23, true
  %28 = and i1 %20, %24
  %29 = or i1 %25, %26
  %30 = or i1 %27, %28
  %31 = xor i1 %29, %30
  %32 = or i1 %22, %23
  %33 = xor i1 %32, true
  %34 = or i1 true, %24
  %35 = and i1 %33, %34
  %36 = or i1 %31, %35
  %37 = or i1 %21, %20
  %38 = select i1 %36, i32 809590881, i32 1902397312
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %39 = load i32, i32* @x.2, align 4
  %40 = load i32, i32* @y.3, align 4
  %41 = sub i32 %39, -1365034135
  %42 = add i32 %41, -1
  %43 = add i32 %42, -1365034135
  %44 = add i32 %39, -1
  %45 = mul i32 %43, %39
  %46 = xor i32 %45, -1
  %47 = xor i32 1, -1
  %48 = xor i32 1740407592, -1
  %49 = or i32 %46, %47
  %50 = or i32 1740407592, %48
  %51 = xor i32 %49, -1
  %52 = and i32 %51, %50
  %53 = and i32 %45, 1
  %54 = icmp eq i32 %52, 0
  %55 = icmp slt i32 %40, 10
  %56 = and i1 %55, %54
  %57 = xor i1 %55, %54
  %58 = or i1 %56, %57
  %59 = or i1 %55, %54
  %60 = select i1 %58, i32 -1766851581, i32 1902397312
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define void @freematrix(i32 %rows, i32** nocapture %m) local_unnamed_addr #0 {
entry:
  %rows.addr.0.reload.reg2mem = alloca i32, align 4
  %cmp.reg2mem = alloca i1, align 1
  %dec.reg2mem = alloca i32, align 4
  %.reg2mem7 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.4, align 4
  %1 = load i32, i32* @y.5, align 4
  %2 = add i32 %0, -1957694151
  %3 = add i32 %2, -1
  %4 = sub i32 %3, -1957694151
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 1, -1
  %8 = xor i32 %6, %7
  %9 = and i32 %8, %6
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %9, 0
  store i1 %11, i1* %.reg2mem, align 1
  %12 = icmp slt i32 %1, 10
  store i1 %12, i1* %.reg2mem7, align 1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %rows.addr.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %rows.addr.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -2017879888, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -2017879888, label %first
    i32 -239101344, label %originalBB
    i32 455718537, label %originalBBpart2
    i32 1793391627, label %while.cond
    i32 -633789583, label %originalBB2
    i32 -1995677399, label %originalBBpart24
    i32 1924467053, label %while.body
    i32 -963778292, label %while.end
    i32 1507831594, label %originalBBalteredBB
    i32 1365009961, label %originalBB2alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB2alteredBB, %originalBBalteredBB, %while.body, %originalBBpart24, %originalBB2, %while.cond, %originalBBpart2, %originalBB, %first
  %rows.addr.0.reg2mem.0.be = phi i32 [ %rows.addr.0.reg2mem.0, %originalBB2alteredBB ], [ %rows.addr.0.reg2mem.0, %originalBBalteredBB ], [ %dec.reg2mem.0.dec.reload, %while.body ], [ %rows.addr.0.reg2mem.0, %originalBBpart24 ], [ %rows.addr.0.reg2mem.0, %originalBB2 ], [ %rows.addr.0.reg2mem.0, %while.cond ], [ %rows, %originalBBpart2 ], [ %rows.addr.0.reg2mem.0, %originalBB ], [ %rows.addr.0.reg2mem.0, %first ], [ %rows.addr.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -633789583, %originalBB2alteredBB ], [ -239101344, %originalBBalteredBB ], [ 1793391627, %while.body ], [ %102, %originalBBpart24 ], [ %101, %originalBB2 ], [ %74, %while.cond ], [ 1793391627, %originalBBpart2 ], [ %51, %originalBB ], [ %17, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem7.0..reload8 = load volatile i1, i1* %.reg2mem7, align 1
  %13 = and i1 %.reg2mem.0..reload, %.reg2mem7.0..reload8
  %14 = xor i1 %.reg2mem.0..reload, %.reg2mem7.0..reload8
  %15 = or i1 %13, %14
  %16 = or i1 %.reg2mem.0..reload, %.reg2mem7.0..reload8
  %17 = select i1 %15, i32 -239101344, i32 1507831594
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %18 = load i32, i32* @x.4, align 4
  %19 = load i32, i32* @y.5, align 4
  %20 = add i32 %18, 612532604
  %21 = add i32 %20, -1
  %22 = sub i32 %21, 612532604
  %23 = add i32 %18, -1
  %24 = mul i32 %22, %18
  %25 = xor i32 %24, -1
  %26 = xor i32 1, -1
  %27 = xor i32 -1185338739, -1
  %28 = or i32 %25, %26
  %29 = or i32 -1185338739, %27
  %30 = xor i32 %28, -1
  %31 = and i32 %30, %29
  %32 = and i32 %24, 1
  %33 = icmp eq i32 %31, 0
  %34 = icmp slt i32 %19, 10
  %35 = xor i1 %34, true
  %36 = xor i1 %33, true
  %37 = xor i1 false, true
  %38 = and i1 %35, false
  %39 = and i1 %34, %37
  %40 = and i1 %36, false
  %41 = and i1 %33, %37
  %42 = or i1 %38, %39
  %43 = or i1 %40, %41
  %44 = xor i1 %42, %43
  %45 = or i1 %35, %36
  %46 = xor i1 %45, true
  %47 = or i1 false, %37
  %48 = and i1 %46, %47
  %49 = or i1 %44, %48
  %50 = or i1 %34, %33
  %51 = select i1 %49, i32 455718537, i32 1507831594
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

while.cond:                                       ; preds = %loopEntry
  store i32 %rows.addr.0.reg2mem.0, i32* %rows.addr.0.reload.reg2mem, align 4
  %52 = load i32, i32* @x.4, align 4
  %53 = load i32, i32* @y.5, align 4
  %54 = sub i32 0, %52
  %55 = sub i32 0, -1
  %56 = add i32 %54, %55
  %57 = sub i32 0, %56
  %58 = add i32 %52, -1
  %59 = mul i32 %57, %52
  %60 = xor i32 %59, -1
  %61 = xor i32 1, -1
  %62 = xor i32 2059498114, -1
  %63 = or i32 %60, %61
  %64 = or i32 2059498114, %62
  %65 = xor i32 %63, -1
  %66 = and i32 %65, %64
  %67 = and i32 %59, 1
  %68 = icmp eq i32 %66, 0
  %69 = icmp slt i32 %53, 10
  %70 = and i1 %69, %68
  %71 = xor i1 %69, %68
  %72 = or i1 %70, %71
  %73 = or i1 %69, %68
  %74 = select i1 %72, i32 -633789583, i32 1365009961
  br label %loopEntry.backedge

originalBB2:                                      ; preds = %loopEntry
  %rows.addr.0.reload.reg2mem.0.rows.addr.0.reload.reload = load volatile i32, i32* %rows.addr.0.reload.reg2mem, align 4
  %75 = sub i32 0, %rows.addr.0.reload.reg2mem.0.rows.addr.0.reload.reload
  %76 = sub i32 0, -1
  %77 = add i32 %75, %76
  %78 = sub i32 0, %77
  %dec = add nsw i32 %rows.addr.0.reload.reg2mem.0.rows.addr.0.reload.reload, -1
  store i32 %78, i32* %dec.reg2mem, align 4
  %dec.reg2mem.0.dec.reload10 = load volatile i32, i32* %dec.reg2mem, align 4
  %cmp = icmp sgt i32 %dec.reg2mem.0.dec.reload10, -1
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %79 = load i32, i32* @x.4, align 4
  %80 = load i32, i32* @y.5, align 4
  %81 = sub i32 0, %79
  %82 = sub i32 0, -1
  %83 = add i32 %81, %82
  %84 = sub i32 0, %83
  %85 = add i32 %79, -1
  %86 = mul i32 %84, %79
  %87 = xor i32 %86, -1
  %88 = xor i32 1, -1
  %89 = xor i32 -1431320359, -1
  %90 = or i32 %87, %88
  %91 = or i32 -1431320359, %89
  %92 = xor i32 %90, -1
  %93 = and i32 %92, %91
  %94 = and i32 %86, 1
  %95 = icmp eq i32 %93, 0
  %96 = icmp slt i32 %80, 10
  %97 = and i1 %96, %95
  %98 = xor i1 %96, %95
  %99 = or i1 %97, %98
  %100 = or i1 %96, %95
  %101 = select i1 %99, i32 -1995677399, i32 1365009961
  br label %loopEntry.backedge

originalBBpart24:                                 ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %102 = select i1 %cmp.reg2mem.0.cmp.reload, i32 1924467053, i32 -963778292
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  %dec.reg2mem.0.dec.reload9 = load volatile i32, i32* %dec.reg2mem, align 4
  %idxprom = sext i32 %dec.reg2mem.0.dec.reload9 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %m, i64 %idxprom
  %103 = bitcast i32** %arrayidx to i8**
  %104 = load i8*, i8** %103, align 8, !tbaa !1
  tail call void @free(i8* %104) #3
  %dec.reg2mem.0.dec.reload = load volatile i32, i32* %dec.reg2mem, align 4
  br label %loopEntry.backedge

while.end:                                        ; preds = %loopEntry
  %105 = bitcast i32** %m to i8*
  tail call void @free(i8* %105) #3
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB2alteredBB:                             ; preds = %loopEntry
  %rows.addr.0.reload.reg2mem.0.rows.addr.0.reload.reload12 = load volatile i32, i32* %rows.addr.0.reload.reg2mem, align 4
  %rows.addr.0.reload.reg2mem.0.rows.addr.0.reload.reload11 = load volatile i32, i32* %rows.addr.0.reload.reg2mem, align 4
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define i32** @mmult(i32 %rows, i32 %cols, i32** nocapture readonly %m1, i32** nocapture readonly %m2, i32** readonly returned %m3) local_unnamed_addr #2 {
entry:
  %k.0.reload.reg2mem = alloca i32, align 4
  %val.0.reload.reg2mem = alloca i32, align 4
  %j.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %cmp5.reg2mem = alloca i1, align 1
  %cmp.reg2mem = alloca i1, align 1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %val.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %val.0.reg2mem.0.be, %loopEntry.backedge ]
  %k.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %k.0.reg2mem.0.be, %loopEntry.backedge ]
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -22316378, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -22316378, label %for.cond
    i32 1885555055, label %originalBB
    i32 735115950, label %originalBBpart2
    i32 -1939854819, label %for.body
    i32 954347433, label %originalBB39
    i32 -2040888556, label %originalBBpart241
    i32 1304850453, label %for.cond1
    i32 487895078, label %for.body3
    i32 -1489519327, label %for.cond4
    i32 1833790440, label %originalBB43
    i32 1781303157, label %originalBBpart245
    i32 2111361541, label %for.body6
    i32 -224684265, label %for.end
    i32 306425218, label %for.inc20
    i32 1914259484, label %for.end22
    i32 -1125049232, label %originalBB47
    i32 781725001, label %originalBBpart249
    i32 -424693130, label %originalBBalteredBB
    i32 2073334699, label %originalBB39alteredBB
    i32 1355652503, label %originalBB43alteredBB
    i32 873820600, label %originalBB47alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB47alteredBB, %originalBB43alteredBB, %originalBB39alteredBB, %originalBBalteredBB, %originalBB47, %for.end22, %for.inc20, %for.end, %for.body6, %originalBBpart245, %originalBB43, %for.cond4, %for.body3, %for.cond1, %originalBBpart241, %originalBB39, %for.body, %originalBBpart2, %originalBB, %for.cond
  %val.0.reg2mem.0.be = phi i32 [ %val.0.reg2mem.0, %originalBB47alteredBB ], [ %val.0.reg2mem.0, %originalBB43alteredBB ], [ %val.0.reg2mem.0, %originalBB39alteredBB ], [ %val.0.reg2mem.0, %originalBBalteredBB ], [ %val.0.reg2mem.0, %originalBB47 ], [ %val.0.reg2mem.0, %for.end22 ], [ %val.0.reg2mem.0, %for.inc20 ], [ %val.0.reg2mem.0, %for.end ], [ %191, %for.body6 ], [ %val.0.reg2mem.0, %originalBBpart245 ], [ %val.0.reg2mem.0, %originalBB43 ], [ %val.0.reg2mem.0, %for.cond4 ], [ 0, %for.body3 ], [ %val.0.reg2mem.0, %for.cond1 ], [ %val.0.reg2mem.0, %originalBBpart241 ], [ %val.0.reg2mem.0, %originalBB39 ], [ %val.0.reg2mem.0, %for.body ], [ %val.0.reg2mem.0, %originalBBpart2 ], [ %val.0.reg2mem.0, %originalBB ], [ %val.0.reg2mem.0, %for.cond ], [ %val.0.reg2mem.0, %loopEntry ]
  %k.0.reg2mem.0.be = phi i32 [ %k.0.reg2mem.0, %originalBB47alteredBB ], [ %k.0.reg2mem.0, %originalBB43alteredBB ], [ %k.0.reg2mem.0, %originalBB39alteredBB ], [ %k.0.reg2mem.0, %originalBBalteredBB ], [ %k.0.reg2mem.0, %originalBB47 ], [ %k.0.reg2mem.0, %for.end22 ], [ %k.0.reg2mem.0, %for.inc20 ], [ %k.0.reg2mem.0, %for.end ], [ %194, %for.body6 ], [ %k.0.reg2mem.0, %originalBBpart245 ], [ %k.0.reg2mem.0, %originalBB43 ], [ %k.0.reg2mem.0, %for.cond4 ], [ 0, %for.body3 ], [ %k.0.reg2mem.0, %for.cond1 ], [ %k.0.reg2mem.0, %originalBBpart241 ], [ %k.0.reg2mem.0, %originalBB39 ], [ %k.0.reg2mem.0, %for.body ], [ %k.0.reg2mem.0, %originalBBpart2 ], [ %k.0.reg2mem.0, %originalBB ], [ %k.0.reg2mem.0, %for.cond ], [ %k.0.reg2mem.0, %loopEntry ]
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBB47alteredBB ], [ %j.0.reg2mem.0, %originalBB43alteredBB ], [ %j.0.reg2mem.0, %originalBB39alteredBB ], [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBB47 ], [ %j.0.reg2mem.0, %for.end22 ], [ %j.0.reg2mem.0, %for.inc20 ], [ %198, %for.end ], [ %j.0.reg2mem.0, %for.body6 ], [ %j.0.reg2mem.0, %originalBBpart245 ], [ %j.0.reg2mem.0, %originalBB43 ], [ %j.0.reg2mem.0, %for.cond4 ], [ %j.0.reg2mem.0, %for.body3 ], [ %j.0.reg2mem.0, %for.cond1 ], [ 0, %originalBBpart241 ], [ %j.0.reg2mem.0, %originalBB39 ], [ %j.0.reg2mem.0, %for.body ], [ %j.0.reg2mem.0, %originalBBpart2 ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB47alteredBB ], [ %i.0.reg2mem.0, %originalBB43alteredBB ], [ %i.0.reg2mem.0, %originalBB39alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB47 ], [ %i.0.reg2mem.0, %for.end22 ], [ %200, %for.inc20 ], [ %i.0.reg2mem.0, %for.end ], [ %i.0.reg2mem.0, %for.body6 ], [ %i.0.reg2mem.0, %originalBBpart245 ], [ %i.0.reg2mem.0, %originalBB43 ], [ %i.0.reg2mem.0, %for.cond4 ], [ %i.0.reg2mem.0, %for.body3 ], [ %i.0.reg2mem.0, %for.cond1 ], [ %i.0.reg2mem.0, %originalBBpart241 ], [ %i.0.reg2mem.0, %originalBB39 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -1125049232, %originalBB47alteredBB ], [ 1833790440, %originalBB43alteredBB ], [ 954347433, %originalBB39alteredBB ], [ 1885555055, %originalBBalteredBB ], [ %252, %originalBB47 ], [ %230, %for.end22 ], [ -22316378, %for.inc20 ], [ 1304850453, %for.end ], [ -1489519327, %for.body6 ], [ %184, %originalBBpart245 ], [ %183, %originalBB43 ], [ %153, %for.cond4 ], [ -1489519327, %for.body3 ], [ %123, %for.cond1 ], [ 1304850453, %originalBBpart241 ], [ %122, %originalBB39 ], [ %87, %for.body ], [ %53, %originalBBpart2 ], [ %52, %originalBB ], [ %22, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %0 = load i32, i32* @x.6, align 4
  %1 = load i32, i32* @y.7, align 4
  %2 = sub i32 0, %0
  %3 = sub i32 0, -1
  %4 = add i32 %2, %3
  %5 = sub i32 0, %4
  %6 = add i32 %0, -1
  %7 = mul i32 %5, %0
  %8 = xor i32 %7, -1
  %9 = xor i32 1, -1
  %10 = xor i32 -118056553, -1
  %11 = or i32 %8, %9
  %12 = or i32 -118056553, %10
  %13 = xor i32 %11, -1
  %14 = and i32 %13, %12
  %15 = and i32 %7, 1
  %16 = icmp eq i32 %14, 0
  %17 = icmp slt i32 %1, 10
  %18 = and i1 %17, %16
  %19 = xor i1 %17, %16
  %20 = or i1 %18, %19
  %21 = or i1 %17, %16
  %22 = select i1 %20, i32 1885555055, i32 -424693130
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %rows
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %23 = load i32, i32* @x.6, align 4
  %24 = load i32, i32* @y.7, align 4
  %25 = sub i32 %23, -2051643536
  %26 = add i32 %25, -1
  %27 = add i32 %26, -2051643536
  %28 = add i32 %23, -1
  %29 = mul i32 %27, %23
  %30 = xor i32 1, -1
  %31 = xor i32 %29, %30
  %32 = and i32 %31, %29
  %33 = and i32 %29, 1
  %34 = icmp eq i32 %32, 0
  %35 = icmp slt i32 %24, 10
  %36 = xor i1 %35, true
  %37 = xor i1 %34, true
  %38 = xor i1 true, true
  %39 = and i1 %36, true
  %40 = and i1 %35, %38
  %41 = and i1 %37, true
  %42 = and i1 %34, %38
  %43 = or i1 %39, %40
  %44 = or i1 %41, %42
  %45 = xor i1 %43, %44
  %46 = or i1 %36, %37
  %47 = xor i1 %46, true
  %48 = or i1 true, %38
  %49 = and i1 %47, %48
  %50 = or i1 %45, %49
  %51 = or i1 %35, %34
  %52 = select i1 %50, i32 735115950, i32 -424693130
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %53 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -1939854819, i32 1914259484
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %54 = load i32, i32* @x.6, align 4
  %55 = load i32, i32* @y.7, align 4
  %56 = sub i32 %54, 1019090222
  %57 = add i32 %56, -1
  %58 = add i32 %57, 1019090222
  %59 = add i32 %54, -1
  %60 = mul i32 %58, %54
  %61 = xor i32 %60, -1
  %62 = xor i32 1, -1
  %63 = xor i32 1868403886, -1
  %64 = or i32 %61, %62
  %65 = or i32 1868403886, %63
  %66 = xor i32 %64, -1
  %67 = and i32 %66, %65
  %68 = and i32 %60, 1
  %69 = icmp eq i32 %67, 0
  %70 = icmp slt i32 %55, 10
  %71 = xor i1 %70, true
  %72 = xor i1 %69, true
  %73 = xor i1 true, true
  %74 = and i1 %71, true
  %75 = and i1 %70, %73
  %76 = and i1 %72, true
  %77 = and i1 %69, %73
  %78 = or i1 %74, %75
  %79 = or i1 %76, %77
  %80 = xor i1 %78, %79
  %81 = or i1 %71, %72
  %82 = xor i1 %81, true
  %83 = or i1 true, %73
  %84 = and i1 %82, %83
  %85 = or i1 %80, %84
  %86 = or i1 %70, %69
  %87 = select i1 %85, i32 954347433, i32 2073334699
  br label %loopEntry.backedge

originalBB39:                                     ; preds = %loopEntry
  %88 = load i32, i32* @x.6, align 4
  %89 = load i32, i32* @y.7, align 4
  %90 = sub i32 0, %88
  %91 = sub i32 0, -1
  %92 = add i32 %90, %91
  %93 = sub i32 0, %92
  %94 = add i32 %88, -1
  %95 = mul i32 %93, %88
  %96 = xor i32 %95, -1
  %97 = xor i32 1, -1
  %98 = xor i32 946919379, -1
  %99 = or i32 %96, %97
  %100 = or i32 946919379, %98
  %101 = xor i32 %99, -1
  %102 = and i32 %101, %100
  %103 = and i32 %95, 1
  %104 = icmp eq i32 %102, 0
  %105 = icmp slt i32 %89, 10
  %106 = xor i1 %105, true
  %107 = xor i1 %104, true
  %108 = xor i1 true, true
  %109 = and i1 %106, true
  %110 = and i1 %105, %108
  %111 = and i1 %107, true
  %112 = and i1 %104, %108
  %113 = or i1 %109, %110
  %114 = or i1 %111, %112
  %115 = xor i1 %113, %114
  %116 = or i1 %106, %107
  %117 = xor i1 %116, true
  %118 = or i1 true, %108
  %119 = and i1 %117, %118
  %120 = or i1 %115, %119
  %121 = or i1 %105, %104
  %122 = select i1 %120, i32 -2040888556, i32 2073334699
  br label %loopEntry.backedge

originalBBpart241:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond1:                                        ; preds = %loopEntry
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp2 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload, %cols
  %123 = select i1 %cmp2, i32 487895078, i32 306425218
  br label %loopEntry.backedge

for.body3:                                        ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond4:                                        ; preds = %loopEntry
  store i32 %val.0.reg2mem.0, i32* %val.0.reload.reg2mem, align 4
  store i32 %k.0.reg2mem.0, i32* %k.0.reload.reg2mem, align 4
  %124 = load i32, i32* @x.6, align 4
  %125 = load i32, i32* @y.7, align 4
  %126 = sub i32 %124, -1735141396
  %127 = add i32 %126, -1
  %128 = add i32 %127, -1735141396
  %129 = add i32 %124, -1
  %130 = mul i32 %128, %124
  %131 = xor i32 1, -1
  %132 = xor i32 %130, %131
  %133 = and i32 %132, %130
  %134 = and i32 %130, 1
  %135 = icmp eq i32 %133, 0
  %136 = icmp slt i32 %125, 10
  %137 = xor i1 %136, true
  %138 = xor i1 %135, true
  %139 = xor i1 true, true
  %140 = and i1 %137, true
  %141 = and i1 %136, %139
  %142 = and i1 %138, true
  %143 = and i1 %135, %139
  %144 = or i1 %140, %141
  %145 = or i1 %142, %143
  %146 = xor i1 %144, %145
  %147 = or i1 %137, %138
  %148 = xor i1 %147, true
  %149 = or i1 true, %139
  %150 = and i1 %148, %149
  %151 = or i1 %146, %150
  %152 = or i1 %136, %135
  %153 = select i1 %151, i32 1833790440, i32 1355652503
  br label %loopEntry.backedge

originalBB43:                                     ; preds = %loopEntry
  %k.0.reload.reg2mem.0.k.0.reload.reload = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %cmp5 = icmp slt i32 %k.0.reload.reg2mem.0.k.0.reload.reload, %cols
  store i1 %cmp5, i1* %cmp5.reg2mem, align 1
  %154 = load i32, i32* @x.6, align 4
  %155 = load i32, i32* @y.7, align 4
  %156 = sub i32 %154, -1436645442
  %157 = add i32 %156, -1
  %158 = add i32 %157, -1436645442
  %159 = add i32 %154, -1
  %160 = mul i32 %158, %154
  %161 = xor i32 1, -1
  %162 = xor i32 %160, %161
  %163 = and i32 %162, %160
  %164 = and i32 %160, 1
  %165 = icmp eq i32 %163, 0
  %166 = icmp slt i32 %155, 10
  %167 = xor i1 %166, true
  %168 = xor i1 %165, true
  %169 = xor i1 true, true
  %170 = and i1 %167, true
  %171 = and i1 %166, %169
  %172 = and i1 %168, true
  %173 = and i1 %165, %169
  %174 = or i1 %170, %171
  %175 = or i1 %172, %173
  %176 = xor i1 %174, %175
  %177 = or i1 %167, %168
  %178 = xor i1 %177, true
  %179 = or i1 true, %169
  %180 = and i1 %178, %179
  %181 = or i1 %176, %180
  %182 = or i1 %166, %165
  %183 = select i1 %181, i32 1781303157, i32 1355652503
  br label %loopEntry.backedge

originalBBpart245:                                ; preds = %loopEntry
  %cmp5.reg2mem.0.cmp5.reload = load volatile i1, i1* %cmp5.reg2mem, align 1
  %184 = select i1 %cmp5.reg2mem.0.cmp5.reload, i32 2111361541, i32 -224684265
  br label %loopEntry.backedge

for.body6:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload52 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload52 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %m1, i64 %idxprom
  %185 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  %k.0.reload.reg2mem.0.k.0.reload.reload60 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %idxprom7 = sext i32 %k.0.reload.reg2mem.0.k.0.reload.reload60 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %185, i64 %idxprom7
  %186 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds i32*, i32** %m2, i64 %idxprom7
  %187 = load i32*, i32** %arrayidx10, align 8, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload56 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom11 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload56 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %187, i64 %idxprom11
  %188 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %mul = mul nsw i32 %188, %186
  %val.0.reload.reg2mem.0.val.0.reload.reload = load volatile i32, i32* %val.0.reload.reg2mem, align 4
  %189 = sub i32 %val.0.reload.reg2mem.0.val.0.reload.reload, 1105206880
  %190 = add i32 %189, %mul
  %191 = add i32 %190, 1105206880
  %add = add nsw i32 %val.0.reload.reg2mem.0.val.0.reload.reload, %mul
  %k.0.reload.reg2mem.0.k.0.reload.reload61 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %192 = sub i32 %k.0.reload.reg2mem.0.k.0.reload.reload61, -1935959449
  %193 = add i32 %192, 1
  %194 = add i32 %193, -1935959449
  %inc = add nsw i32 %k.0.reload.reg2mem.0.k.0.reload.reload61, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload53 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom13 = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload53 to i64
  %arrayidx14 = getelementptr inbounds i32*, i32** %m3, i64 %idxprom13
  %195 = load i32*, i32** %arrayidx14, align 8, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload57 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom15 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload57 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %195, i64 %idxprom15
  %val.0.reload.reg2mem.0.val.0.reload.reload59 = load volatile i32, i32* %val.0.reload.reg2mem, align 4
  store i32 %val.0.reload.reg2mem.0.val.0.reload.reload59, i32* %arrayidx16, align 4, !tbaa !5
  %j.0.reload.reg2mem.0.j.0.reload.reload58 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %196 = add i32 %j.0.reload.reg2mem.0.j.0.reload.reload58, 1332540433
  %197 = add i32 %196, 1
  %198 = sub i32 %197, 1332540433
  %inc18 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload58, 1
  br label %loopEntry.backedge

for.inc20:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload54 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %199 = sub i32 0, 1
  %200 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload54, %199
  %inc21 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload54, 1
  br label %loopEntry.backedge

for.end22:                                        ; preds = %loopEntry
  %201 = load i32, i32* @x.6, align 4
  %202 = load i32, i32* @y.7, align 4
  %203 = add i32 %201, 1872152851
  %204 = add i32 %203, -1
  %205 = sub i32 %204, 1872152851
  %206 = add i32 %201, -1
  %207 = mul i32 %205, %201
  %208 = xor i32 1, -1
  %209 = xor i32 %207, %208
  %210 = and i32 %209, %207
  %211 = and i32 %207, 1
  %212 = icmp eq i32 %210, 0
  %213 = icmp slt i32 %202, 10
  %214 = xor i1 %213, true
  %215 = xor i1 %212, true
  %216 = xor i1 true, true
  %217 = and i1 %214, true
  %218 = and i1 %213, %216
  %219 = and i1 %215, true
  %220 = and i1 %212, %216
  %221 = or i1 %217, %218
  %222 = or i1 %219, %220
  %223 = xor i1 %221, %222
  %224 = or i1 %214, %215
  %225 = xor i1 %224, true
  %226 = or i1 true, %216
  %227 = and i1 %225, %226
  %228 = or i1 %223, %227
  %229 = or i1 %213, %212
  %230 = select i1 %228, i32 -1125049232, i32 873820600
  br label %loopEntry.backedge

originalBB47:                                     ; preds = %loopEntry
  %231 = load i32, i32* @x.6, align 4
  %232 = load i32, i32* @y.7, align 4
  %233 = sub i32 %231, -1174142928
  %234 = add i32 %233, -1
  %235 = add i32 %234, -1174142928
  %236 = add i32 %231, -1
  %237 = mul i32 %235, %231
  %238 = xor i32 %237, -1
  %239 = xor i32 1, -1
  %240 = xor i32 -1670194455, -1
  %241 = or i32 %238, %239
  %242 = or i32 -1670194455, %240
  %243 = xor i32 %241, -1
  %244 = and i32 %243, %242
  %245 = and i32 %237, 1
  %246 = icmp eq i32 %244, 0
  %247 = icmp slt i32 %232, 10
  %248 = and i1 %247, %246
  %249 = xor i1 %247, %246
  %250 = or i1 %248, %249
  %251 = or i1 %247, %246
  %252 = select i1 %250, i32 781725001, i32 873820600
  br label %loopEntry.backedge

originalBBpart249:                                ; preds = %loopEntry
  ret i32** %m3

originalBBalteredBB:                              ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload55 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB39alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB43alteredBB:                            ; preds = %loopEntry
  %k.0.reload.reg2mem.0.k.0.reload.reload62 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB47alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %mm.0.reload.reg2mem = alloca i32**, align 8
  %i.0.reload.reg2mem = alloca i32, align 4
  %call3.reg2mem = alloca i64, align 8
  %call1.reg2mem = alloca i32**, align 8
  %call.reg2mem = alloca i32**, align 8
  %call = tail call i32** @mkmatrix(i32 10, i32 10)
  store i32** %call, i32*** %call.reg2mem, align 8
  %call1 = tail call i32** @mkmatrix(i32 10, i32 10)
  store i32** %call1, i32*** %call1.reg2mem, align 8
  %call2 = tail call i32** @mkmatrix(i32 10, i32 10)
  %call3 = tail call i64 @clock() #3
  store i64 %call3, i64* %call3.reg2mem, align 8
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %for.body.split, %entry
  %i.0.reg2mem.0.ph = phi i32 [ %3, %for.body.split ], [ 0, %entry ]
  %mm.0.reg2mem.0.ph = phi i32** [ %call4, %for.body.split ], [ %call2, %entry ]
  br label %loopEntry.outer39

loopEntry.outer39:                                ; preds = %loopEntry.outer, %for.cond.split
  %switchVar.0.ph = phi i32 [ 2110085331, %loopEntry.outer ], [ %0, %for.cond.split ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 2110085331, label %for.cond.split
    i32 -1732506287, label %for.body.split
    i32 1474133288, label %for.end.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer39
  br label %infloop

for.cond.split:                                   ; preds = %loopEntry.outer39
  store i32 %i.0.reg2mem.0.ph, i32* %i.0.reload.reg2mem, align 4
  store i32** %mm.0.reg2mem.0.ph, i32*** %mm.0.reload.reg2mem, align 8
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 3000000
  %0 = select i1 %cmp, i32 -1732506287, i32 1474133288
  br label %loopEntry.outer39

for.body.split:                                   ; preds = %loopEntry.outer39
  %call.reg2mem.0.call.reload = load volatile i32**, i32*** %call.reg2mem, align 8
  %call1.reg2mem.0.call1.reload = load volatile i32**, i32*** %call1.reg2mem, align 8
  %mm.0.reload.reg2mem.0.mm.0.reload.reload = load volatile i32**, i32*** %mm.0.reload.reg2mem, align 8
  %call4 = tail call i32** @mmult(i32 10, i32 10, i32** %call.reg2mem.0.call.reload, i32** %call1.reg2mem.0.call1.reload, i32** %mm.0.reload.reg2mem.0.mm.0.reload.reload)
  %i.0.reload.reg2mem.0.i.0.reload.reload33 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %1 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload33, -352782954
  %2 = add i32 %1, 1
  %3 = add i32 %2, -352782954
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload33, 1
  br label %loopEntry.outer

for.end.split:                                    ; preds = %loopEntry.outer39
  %mm.0.reload.reg2mem.0.mm.0.reload.reload38 = load volatile i32**, i32*** %mm.0.reload.reg2mem, align 8
  %4 = load i32*, i32** %mm.0.reload.reg2mem.0.mm.0.reload.reload38, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %mm.0.reload.reg2mem.0.mm.0.reload.reload34 = load volatile i32**, i32*** %mm.0.reload.reg2mem, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %mm.0.reload.reg2mem.0.mm.0.reload.reload34, i64 2
  %6 = load i32*, i32** %arrayidx6, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 3
  %7 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %mm.0.reload.reg2mem.0.mm.0.reload.reload35 = load volatile i32**, i32*** %mm.0.reload.reg2mem, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %mm.0.reload.reg2mem.0.mm.0.reload.reload35, i64 3
  %8 = load i32*, i32** %arrayidx8, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %mm.0.reload.reg2mem.0.mm.0.reload.reload36 = load volatile i32**, i32*** %mm.0.reload.reg2mem, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %mm.0.reload.reg2mem.0.mm.0.reload.reload36, i64 4
  %10 = load i32*, i32** %arrayidx10, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %10, i64 4
  %11 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %call12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %9, i32 %11)
  %call13 = tail call i64 @clock() #3
  %call3.reg2mem.0.call3.reload = load volatile i64, i64* %call3.reg2mem, align 8
  %12 = sub i64 0, %call3.reg2mem.0.call3.reload
  %13 = add i64 %call13, %12
  %sub = sub nsw i64 %call13, %call3.reg2mem.0.call3.reload
  %conv = sitofp i64 %13 to double
  %div = fdiv double %conv, 1.000000e+06
  %call14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  %call.reg2mem.0.call.reload31 = load volatile i32**, i32*** %call.reg2mem, align 8
  tail call void @freematrix(i32 10, i32** %call.reg2mem.0.call.reload31)
  %call1.reg2mem.0.call1.reload32 = load volatile i32**, i32*** %call1.reg2mem, align 8
  tail call void @freematrix(i32 10, i32** %call1.reg2mem.0.call1.reload32)
  %mm.0.reload.reg2mem.0.mm.0.reload.reload37 = load volatile i32**, i32*** %mm.0.reload.reg2mem, align 8
  tail call void @freematrix(i32 10, i32** %mm.0.reload.reg2mem.0.mm.0.reload.reload37)
  ret i32 0

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
