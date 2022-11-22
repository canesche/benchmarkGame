; ModuleID = 'heapsort/heapsort.c'
source_filename = "heapsort/heapsort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_random.last = internal unnamed_addr global i64 42, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.2 = common local_unnamed_addr global i32 0
@y.3 = common local_unnamed_addr global i32 0
@x.4 = common local_unnamed_addr global i32 0
@y.5 = common local_unnamed_addr global i32 0

; Function Attrs: norecurse nounwind uwtable
define double @gen_random(double %max) local_unnamed_addr #0 {
entry:
  %div.reg2mem = alloca double, align 8
  %.reg2mem32 = alloca i1, align 1
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
  store i1 %11, i1* %.reg2mem32, align 1
  %12 = xor i1 %11, true
  %13 = xor i1 %10, true
  %14 = xor i1 true, true
  %15 = and i1 %12, true
  %16 = and i1 %11, %14
  %17 = and i1 %13, true
  %18 = and i1 %10, %14
  %19 = or i1 %15, %16
  %20 = or i1 %17, %18
  %21 = xor i1 %19, %20
  %22 = or i1 %12, %13
  %23 = xor i1 %22, true
  %24 = or i1 true, %14
  %25 = and i1 %23, %24
  %26 = or i1 %21, %25
  %27 = or i1 %11, %10
  %28 = select i1 %26, i32 -151658036, i32 -906608263
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ -585922434, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 -585922434, label %first.split
    i32 2016568753, label %originalBB.split
    i32 -151658036, label %originalBBpart2.split
    i32 -906608263, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem32.0..reload33 = load volatile i1, i1* %.reg2mem32, align 1
  %29 = xor i1 %.reg2mem.0..reload, true
  %30 = xor i1 %.reg2mem32.0..reload33, true
  %31 = xor i1 false, true
  %32 = and i1 %29, false
  %33 = and i1 %.reg2mem.0..reload, %31
  %34 = and i1 %30, false
  %35 = and i1 %.reg2mem32.0..reload33, %31
  %36 = or i1 %32, %33
  %37 = or i1 %34, %35
  %38 = xor i1 %36, %37
  %39 = or i1 %29, %30
  %40 = xor i1 %39, true
  %41 = or i1 false, %31
  %42 = and i1 %40, %41
  %43 = or i1 %38, %42
  %44 = or i1 %.reg2mem.0..reload, %.reg2mem32.0..reload33
  %45 = select i1 %43, i32 2016568753, i32 -906608263
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  %46 = load i64, i64* @gen_random.last, align 8, !tbaa !1
  %mul = mul nsw i64 %46, 3877
  %47 = sub i64 %mul, -4962416509711169279
  %48 = add i64 %47, 29573
  %49 = add i64 %48, -4962416509711169279
  %add = add nsw i64 %mul, 29573
  %rem = srem i64 %49, 139968
  store i64 %rem, i64* @gen_random.last, align 8, !tbaa !1
  %conv = sitofp i64 %rem to double
  %mul1 = fmul double %conv, %max
  %div = fdiv double %mul1, 1.399680e+05
  store double %div, double* %div.reg2mem, align 8
  br label %loopEntry.outer.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer
  %div.reg2mem.0.div.reload = load volatile double, double* %div.reg2mem, align 8
  ret double %div.reg2mem.0.div.reload

originalBBalteredBB.split:                        ; preds = %loopEntry.outer
  %50 = load i64, i64* @gen_random.last, align 8, !tbaa !1
  %mulalteredBB = mul nsw i64 %50, 3877
  %51 = sub i64 0, 29573
  %52 = sub i64 %mulalteredBB, %51
  %addalteredBB = add nsw i64 %mulalteredBB, 29573
  %remalteredBB = srem i64 %52, 139968
  store i64 %remalteredBB, i64* @gen_random.last, align 8, !tbaa !1
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %originalBBalteredBB.split, %originalBB.split, %first.split
  %switchVar.0.ph.be = phi i32 [ %45, %first.split ], [ %28, %originalBB.split ], [ 2016568753, %originalBBalteredBB.split ]
  br label %loopEntry.outer

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: norecurse nounwind uwtable
define void @benchmark_heapsort(i32 %n, double* %ra) local_unnamed_addr #0 {
entry:
  %j.1.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %j.0.reload.reg2mem = alloca i32, align 4
  %ir.1.reload.reg2mem = alloca i32, align 4
  %l.1.reload.reg2mem = alloca i32, align 4
  %rra.0.reload.reg2mem = alloca double, align 8
  %ir.0.reload.reg2mem = alloca i32, align 4
  %l.0.reload.reg2mem = alloca i32, align 4
  %add31.reg2mem = alloca i32, align 4
  %.reg2mem114.sroa.0 = alloca i64, align 8
  %add15.reg2mem = alloca i32, align 4
  %cmp11.reg2mem = alloca i1, align 1
  %shl.reg2mem = alloca i32, align 4
  %arrayidx3.reg2mem = alloca double*, align 8
  %.reg2mem109.sroa.0 = alloca i64, align 8
  %.reg2mem.sroa.0 = alloca i64, align 8
  %dec.reg2mem = alloca i32, align 4
  %shr = ashr i32 %n, 1
  %0 = sub i32 %shr, -565598649
  %1 = add i32 %0, 1
  %2 = add i32 %1, -565598649
  %add = add nsw i32 %shr, 1
  %arrayidx3 = getelementptr inbounds double, double* %ra, i64 1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %j.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.1.reg2mem.0.be, %loopEntry.backedge ]
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %rra.0.reg2mem.0 = phi double [ undef, %entry ], [ %rra.0.reg2mem.0.be, %loopEntry.backedge ]
  %l.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %l.1.reg2mem.0.be, %loopEntry.backedge ]
  %ir.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %ir.1.reg2mem.0.be, %loopEntry.backedge ]
  %l.0.reg2mem.0 = phi i32 [ %2, %entry ], [ %l.0.reg2mem.0.be, %loopEntry.backedge ]
  %ir.0.reg2mem.0 = phi i32 [ %n, %entry ], [ %ir.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -1643477648, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -1643477648, label %for.cond
    i32 -1732547697, label %if.then
    i32 -40792214, label %originalBB
    i32 -131789654, label %originalBBpart2
    i32 -93158343, label %if.else
    i32 -390849385, label %if.then8
    i32 -1786960195, label %if.end10
    i32 -1222007183, label %originalBB81
    i32 -1699241039, label %originalBBpart288
    i32 -1878726500, label %while.cond
    i32 36232554, label %originalBB90
    i32 -10992963, label %originalBBpart292
    i32 485639552, label %while.body
    i32 2142412995, label %land.lhs.true
    i32 588665097, label %if.then19
    i32 1390560003, label %if.end20
    i32 1919720946, label %if.then24
    i32 1903499132, label %if.else30
    i32 497915743, label %originalBB94
    i32 1260729148, label %originalBBpart2101
    i32 2103502506, label %while.end
    i32 -1003606842, label %originalBB103
    i32 1944003977, label %originalBBpart2105
    i32 420035265, label %originalBBalteredBB
    i32 -1463449821, label %originalBB81alteredBB
    i32 1648180509, label %originalBB90alteredBB
    i32 871879699, label %originalBB94alteredBB
    i32 831867980, label %originalBB103alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB103alteredBB, %originalBB94alteredBB, %originalBB90alteredBB, %originalBB81alteredBB, %originalBBalteredBB, %originalBBpart2105, %originalBB103, %while.end, %originalBBpart2101, %originalBB94, %if.else30, %if.then24, %if.end20, %if.then19, %land.lhs.true, %while.body, %originalBBpart292, %originalBB90, %while.cond, %originalBBpart288, %originalBB81, %if.end10, %if.else, %originalBBpart2, %originalBB, %if.then, %for.cond
  %j.1.reg2mem.0.be = phi i32 [ %j.1.reg2mem.0, %originalBB103alteredBB ], [ %j.1.reg2mem.0, %originalBB94alteredBB ], [ %j.1.reg2mem.0, %originalBB90alteredBB ], [ %j.1.reg2mem.0, %originalBB81alteredBB ], [ %j.1.reg2mem.0, %originalBBalteredBB ], [ %j.1.reg2mem.0, %originalBBpart2105 ], [ %j.1.reg2mem.0, %originalBB103 ], [ %j.1.reg2mem.0, %while.end ], [ %j.1.reg2mem.0, %originalBBpart2101 ], [ %j.1.reg2mem.0, %originalBB94 ], [ %j.1.reg2mem.0, %if.else30 ], [ %j.1.reg2mem.0, %if.then24 ], [ %j.1.reg2mem.0, %if.end20 ], [ %add15.reg2mem.0.add15.reload, %if.then19 ], [ %j.0.reload.reg2mem.0.j.0.reload.reload146, %land.lhs.true ], [ %j.0.reload.reg2mem.0.j.0.reload.reload, %while.body ], [ %j.1.reg2mem.0, %originalBBpart292 ], [ %j.1.reg2mem.0, %originalBB90 ], [ %j.1.reg2mem.0, %while.cond ], [ %j.1.reg2mem.0, %originalBBpart288 ], [ %j.1.reg2mem.0, %originalBB81 ], [ %j.1.reg2mem.0, %if.end10 ], [ %j.1.reg2mem.0, %if.else ], [ %j.1.reg2mem.0, %originalBBpart2 ], [ %j.1.reg2mem.0, %originalBB ], [ %j.1.reg2mem.0, %if.then ], [ %j.1.reg2mem.0, %for.cond ], [ %j.1.reg2mem.0, %loopEntry ]
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBB103alteredBB ], [ %j.0.reg2mem.0, %originalBB94alteredBB ], [ %j.0.reg2mem.0, %originalBB90alteredBB ], [ %j.0.reg2mem.0, %originalBB81alteredBB ], [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBBpart2105 ], [ %j.0.reg2mem.0, %originalBB103 ], [ %j.0.reg2mem.0, %while.end ], [ %add31.reg2mem.0.add31.reload, %originalBBpart2101 ], [ %j.0.reg2mem.0, %originalBB94 ], [ %j.0.reg2mem.0, %if.else30 ], [ %add29, %if.then24 ], [ %j.0.reg2mem.0, %if.end20 ], [ %j.0.reg2mem.0, %if.then19 ], [ %j.0.reg2mem.0, %land.lhs.true ], [ %j.0.reg2mem.0, %while.body ], [ %j.0.reg2mem.0, %originalBBpart292 ], [ %j.0.reg2mem.0, %originalBB90 ], [ %j.0.reg2mem.0, %while.cond ], [ %shl.reg2mem.0.shl.reload, %originalBBpart288 ], [ %j.0.reg2mem.0, %originalBB81 ], [ %j.0.reg2mem.0, %if.end10 ], [ %j.0.reg2mem.0, %if.else ], [ %j.0.reg2mem.0, %originalBBpart2 ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %if.then ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB103alteredBB ], [ %i.0.reg2mem.0, %originalBB94alteredBB ], [ %i.0.reg2mem.0, %originalBB90alteredBB ], [ %i.0.reg2mem.0, %originalBB81alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBBpart2105 ], [ %i.0.reg2mem.0, %originalBB103 ], [ %i.0.reg2mem.0, %while.end ], [ %i.0.reload.reg2mem.0.i.0.reload.reload154, %originalBBpart2101 ], [ %i.0.reg2mem.0, %originalBB94 ], [ %i.0.reg2mem.0, %if.else30 ], [ %j.1.reload.reg2mem.0.j.1.reload.reload156, %if.then24 ], [ %i.0.reg2mem.0, %if.end20 ], [ %i.0.reg2mem.0, %if.then19 ], [ %i.0.reg2mem.0, %land.lhs.true ], [ %i.0.reg2mem.0, %while.body ], [ %i.0.reg2mem.0, %originalBBpart292 ], [ %i.0.reg2mem.0, %originalBB90 ], [ %i.0.reg2mem.0, %while.cond ], [ %l.1.reload.reg2mem.0.l.1.reload.reload, %originalBBpart288 ], [ %i.0.reg2mem.0, %originalBB81 ], [ %i.0.reg2mem.0, %if.end10 ], [ %i.0.reg2mem.0, %if.else ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %if.then ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %rra.0.reg2mem.0.be = phi double [ %rra.0.reg2mem.0, %originalBB103alteredBB ], [ %rra.0.reg2mem.0, %originalBB94alteredBB ], [ %rra.0.reg2mem.0, %originalBB90alteredBB ], [ %rra.0.reg2mem.0, %originalBB81alteredBB ], [ %rra.0.reg2mem.0, %originalBBalteredBB ], [ %rra.0.reg2mem.0, %originalBBpart2105 ], [ %rra.0.reg2mem.0, %originalBB103 ], [ %rra.0.reg2mem.0, %while.end ], [ %rra.0.reg2mem.0, %originalBBpart2101 ], [ %rra.0.reg2mem.0, %originalBB94 ], [ %rra.0.reg2mem.0, %if.else30 ], [ %rra.0.reg2mem.0, %if.then24 ], [ %rra.0.reg2mem.0, %if.end20 ], [ %rra.0.reg2mem.0, %if.then19 ], [ %rra.0.reg2mem.0, %land.lhs.true ], [ %rra.0.reg2mem.0, %while.body ], [ %rra.0.reg2mem.0, %originalBBpart292 ], [ %rra.0.reg2mem.0, %originalBB90 ], [ %rra.0.reg2mem.0, %while.cond ], [ %rra.0.reg2mem.0, %originalBBpart288 ], [ %rra.0.reg2mem.0, %originalBB81 ], [ %rra.0.reg2mem.0, %if.end10 ], [ %65, %if.else ], [ %56, %originalBBpart2 ], [ %rra.0.reg2mem.0, %originalBB ], [ %rra.0.reg2mem.0, %if.then ], [ %rra.0.reg2mem.0, %for.cond ], [ %rra.0.reg2mem.0, %loopEntry ]
  %l.1.reg2mem.0.be = phi i32 [ %l.1.reg2mem.0, %originalBB103alteredBB ], [ %l.1.reg2mem.0, %originalBB94alteredBB ], [ %l.1.reg2mem.0, %originalBB90alteredBB ], [ %l.1.reg2mem.0, %originalBB81alteredBB ], [ %l.1.reg2mem.0, %originalBBalteredBB ], [ %l.1.reg2mem.0, %originalBBpart2105 ], [ %l.1.reg2mem.0, %originalBB103 ], [ %l.1.reg2mem.0, %while.end ], [ %l.1.reg2mem.0, %originalBBpart2101 ], [ %l.1.reg2mem.0, %originalBB94 ], [ %l.1.reg2mem.0, %if.else30 ], [ %l.1.reg2mem.0, %if.then24 ], [ %l.1.reg2mem.0, %if.end20 ], [ %l.1.reg2mem.0, %if.then19 ], [ %l.1.reg2mem.0, %land.lhs.true ], [ %l.1.reg2mem.0, %while.body ], [ %l.1.reg2mem.0, %originalBBpart292 ], [ %l.1.reg2mem.0, %originalBB90 ], [ %l.1.reg2mem.0, %while.cond ], [ %l.1.reg2mem.0, %originalBBpart288 ], [ %l.1.reg2mem.0, %originalBB81 ], [ %l.1.reg2mem.0, %if.end10 ], [ %l.0.reload.reg2mem.0.l.0.reload.reload, %if.else ], [ %dec.reg2mem.0.dec.reload, %originalBBpart2 ], [ %l.1.reg2mem.0, %originalBB ], [ %l.1.reg2mem.0, %if.then ], [ %l.1.reg2mem.0, %for.cond ], [ %l.1.reg2mem.0, %loopEntry ]
  %ir.1.reg2mem.0.be = phi i32 [ %ir.1.reg2mem.0, %originalBB103alteredBB ], [ %ir.1.reg2mem.0, %originalBB94alteredBB ], [ %ir.1.reg2mem.0, %originalBB90alteredBB ], [ %ir.1.reg2mem.0, %originalBB81alteredBB ], [ %ir.1.reg2mem.0, %originalBBalteredBB ], [ %ir.1.reg2mem.0, %originalBBpart2105 ], [ %ir.1.reg2mem.0, %originalBB103 ], [ %ir.1.reg2mem.0, %while.end ], [ %ir.1.reg2mem.0, %originalBBpart2101 ], [ %ir.1.reg2mem.0, %originalBB94 ], [ %ir.1.reg2mem.0, %if.else30 ], [ %ir.1.reg2mem.0, %if.then24 ], [ %ir.1.reg2mem.0, %if.end20 ], [ %ir.1.reg2mem.0, %if.then19 ], [ %ir.1.reg2mem.0, %land.lhs.true ], [ %ir.1.reg2mem.0, %while.body ], [ %ir.1.reg2mem.0, %originalBBpart292 ], [ %ir.1.reg2mem.0, %originalBB90 ], [ %ir.1.reg2mem.0, %while.cond ], [ %ir.1.reg2mem.0, %originalBBpart288 ], [ %ir.1.reg2mem.0, %originalBB81 ], [ %ir.1.reg2mem.0, %if.end10 ], [ %63, %if.else ], [ %ir.0.reload.reg2mem.0.ir.0.reload.reload, %originalBBpart2 ], [ %ir.1.reg2mem.0, %originalBB ], [ %ir.1.reg2mem.0, %if.then ], [ %ir.1.reg2mem.0, %for.cond ], [ %ir.1.reg2mem.0, %loopEntry ]
  %l.0.reg2mem.0.be = phi i32 [ %l.0.reg2mem.0, %originalBB103alteredBB ], [ %l.0.reg2mem.0, %originalBB94alteredBB ], [ %l.0.reg2mem.0, %originalBB90alteredBB ], [ %l.0.reg2mem.0, %originalBB81alteredBB ], [ %l.0.reg2mem.0, %originalBBalteredBB ], [ %l.1.reload.reg2mem.0.l.1.reload.reload137, %originalBBpart2105 ], [ %l.0.reg2mem.0, %originalBB103 ], [ %l.0.reg2mem.0, %while.end ], [ %l.0.reg2mem.0, %originalBBpart2101 ], [ %l.0.reg2mem.0, %originalBB94 ], [ %l.0.reg2mem.0, %if.else30 ], [ %l.0.reg2mem.0, %if.then24 ], [ %l.0.reg2mem.0, %if.end20 ], [ %l.0.reg2mem.0, %if.then19 ], [ %l.0.reg2mem.0, %land.lhs.true ], [ %l.0.reg2mem.0, %while.body ], [ %l.0.reg2mem.0, %originalBBpart292 ], [ %l.0.reg2mem.0, %originalBB90 ], [ %l.0.reg2mem.0, %while.cond ], [ %l.0.reg2mem.0, %originalBBpart288 ], [ %l.0.reg2mem.0, %originalBB81 ], [ %l.0.reg2mem.0, %if.end10 ], [ %l.0.reg2mem.0, %if.else ], [ %l.0.reg2mem.0, %originalBBpart2 ], [ %l.0.reg2mem.0, %originalBB ], [ %l.0.reg2mem.0, %if.then ], [ %l.0.reg2mem.0, %for.cond ], [ %l.0.reg2mem.0, %loopEntry ]
  %ir.0.reg2mem.0.be = phi i32 [ %ir.0.reg2mem.0, %originalBB103alteredBB ], [ %ir.0.reg2mem.0, %originalBB94alteredBB ], [ %ir.0.reg2mem.0, %originalBB90alteredBB ], [ %ir.0.reg2mem.0, %originalBB81alteredBB ], [ %ir.0.reg2mem.0, %originalBBalteredBB ], [ %ir.1.reload.reg2mem.0.ir.1.reload.reload145, %originalBBpart2105 ], [ %ir.0.reg2mem.0, %originalBB103 ], [ %ir.0.reg2mem.0, %while.end ], [ %ir.0.reg2mem.0, %originalBBpart2101 ], [ %ir.0.reg2mem.0, %originalBB94 ], [ %ir.0.reg2mem.0, %if.else30 ], [ %ir.0.reg2mem.0, %if.then24 ], [ %ir.0.reg2mem.0, %if.end20 ], [ %ir.0.reg2mem.0, %if.then19 ], [ %ir.0.reg2mem.0, %land.lhs.true ], [ %ir.0.reg2mem.0, %while.body ], [ %ir.0.reg2mem.0, %originalBBpart292 ], [ %ir.0.reg2mem.0, %originalBB90 ], [ %ir.0.reg2mem.0, %while.cond ], [ %ir.0.reg2mem.0, %originalBBpart288 ], [ %ir.0.reg2mem.0, %originalBB81 ], [ %ir.0.reg2mem.0, %if.end10 ], [ %ir.0.reg2mem.0, %if.else ], [ %ir.0.reg2mem.0, %originalBBpart2 ], [ %ir.0.reg2mem.0, %originalBB ], [ %ir.0.reg2mem.0, %if.then ], [ %ir.0.reg2mem.0, %for.cond ], [ %ir.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -1003606842, %originalBB103alteredBB ], [ 497915743, %originalBB94alteredBB ], [ 36232554, %originalBB90alteredBB ], [ -1222007183, %originalBB81alteredBB ], [ -40792214, %originalBBalteredBB ], [ -1643477648, %originalBBpart2105 ], [ %312, %originalBB103 ], [ %290, %while.end ], [ -1878726500, %originalBBpart2101 ], [ %255, %originalBB94 ], [ %231, %if.else30 ], [ -1878726500, %if.then24 ], [ %196, %if.end20 ], [ 1390560003, %if.then19 ], [ %192, %land.lhs.true ], [ %186, %while.body ], [ %185, %originalBBpart292 ], [ %184, %originalBB90 ], [ %154, %while.cond ], [ -1878726500, %originalBBpart288 ], [ %132, %originalBB81 ], [ %99, %if.end10 ], [ %64, %if.else ], [ -1786960195, %originalBBpart2 ], [ %55, %originalBB ], [ %33, %if.then ], [ %3, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %l.0.reg2mem.0, i32* %l.0.reload.reg2mem, align 4
  store i32 %ir.0.reg2mem.0, i32* %ir.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload117 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %cmp = icmp sgt i32 %l.0.reload.reg2mem.0.l.0.reload.reload117, 1
  %3 = select i1 %cmp, i32 -1732547697, i32 -93158343
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %4 = load i32, i32* @x.2, align 4
  %5 = load i32, i32* @y.3, align 4
  %6 = add i32 %4, 1401223068
  %7 = add i32 %6, -1
  %8 = sub i32 %7, 1401223068
  %9 = add i32 %4, -1
  %10 = mul i32 %8, %4
  %11 = xor i32 1, -1
  %12 = xor i32 %10, %11
  %13 = and i32 %12, %10
  %14 = and i32 %10, 1
  %15 = icmp eq i32 %13, 0
  %16 = icmp slt i32 %5, 10
  %17 = xor i1 %16, true
  %18 = xor i1 %15, true
  %19 = xor i1 false, true
  %20 = and i1 %17, false
  %21 = and i1 %16, %19
  %22 = and i1 %18, false
  %23 = and i1 %15, %19
  %24 = or i1 %20, %21
  %25 = or i1 %22, %23
  %26 = xor i1 %24, %25
  %27 = or i1 %17, %18
  %28 = xor i1 %27, true
  %29 = or i1 false, %19
  %30 = and i1 %28, %29
  %31 = or i1 %26, %30
  %32 = or i1 %16, %15
  %33 = select i1 %31, i32 -40792214, i32 420035265
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %l.0.reload.reg2mem.0.l.0.reload.reload118 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %34 = sub i32 0, -1
  %35 = sub i32 %l.0.reload.reg2mem.0.l.0.reload.reload118, %34
  %dec = add nsw i32 %l.0.reload.reg2mem.0.l.0.reload.reload118, -1
  store i32 %35, i32* %dec.reg2mem, align 4
  %dec.reg2mem.0.dec.reload108 = load volatile i32, i32* %dec.reg2mem, align 4
  %idxprom = sext i32 %dec.reg2mem.0.dec.reload108 to i64
  %arrayidx = getelementptr inbounds double, double* %ra, i64 %idxprom
  %36 = bitcast double* %arrayidx to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !5
  store i64 %37, i64* %.reg2mem.sroa.0, align 8
  %38 = load i32, i32* @x.2, align 4
  %39 = load i32, i32* @y.3, align 4
  %40 = add i32 %38, 799861616
  %41 = add i32 %40, -1
  %42 = sub i32 %41, 799861616
  %43 = add i32 %38, -1
  %44 = mul i32 %42, %38
  %45 = xor i32 1, -1
  %46 = xor i32 %44, %45
  %47 = and i32 %46, %44
  %48 = and i32 %44, 1
  %49 = icmp eq i32 %47, 0
  %50 = icmp slt i32 %39, 10
  %51 = and i1 %50, %49
  %52 = xor i1 %50, %49
  %53 = or i1 %51, %52
  %54 = or i1 %50, %49
  %55 = select i1 %53, i32 -131789654, i32 420035265
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %dec.reg2mem.0.dec.reload = load volatile i32, i32* %dec.reg2mem, align 4
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %56 = bitcast i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload to double
  %ir.0.reload.reg2mem.0.ir.0.reload.reload = load volatile i32, i32* %ir.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

if.else:                                          ; preds = %loopEntry
  %ir.0.reload.reg2mem.0.ir.0.reload.reload128 = load volatile i32, i32* %ir.0.reload.reg2mem, align 4
  %idxprom1 = sext i32 %ir.0.reload.reg2mem.0.ir.0.reload.reload128 to i64
  %arrayidx2 = getelementptr inbounds double, double* %ra, i64 %idxprom1
  %57 = bitcast double* %arrayidx2 to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !5
  store i64 %58, i64* %.reg2mem109.sroa.0, align 8
  store double* %arrayidx3, double** %arrayidx3.reg2mem, align 8
  %arrayidx3.reg2mem.0.arrayidx3.reload112 = load volatile double*, double** %arrayidx3.reg2mem, align 8
  %59 = bitcast double* %arrayidx3.reg2mem.0.arrayidx3.reload112 to i64*
  %60 = load i64, i64* %59, align 8, !tbaa !5
  store i64 %60, i64* %57, align 8, !tbaa !5
  %ir.0.reload.reg2mem.0.ir.0.reload.reload129 = load volatile i32, i32* %ir.0.reload.reg2mem, align 4
  %61 = sub i32 %ir.0.reload.reg2mem.0.ir.0.reload.reload129, -2123424534
  %62 = add i32 %61, -1
  %63 = add i32 %62, -2123424534
  %dec6 = add nsw i32 %ir.0.reload.reg2mem.0.ir.0.reload.reload129, -1
  %cmp7 = icmp eq i32 %63, 1
  %64 = select i1 %cmp7, i32 -390849385, i32 -1786960195
  %.reg2mem109.sroa.0.0..reg2mem109.sroa.0.0..reload110 = load volatile i64, i64* %.reg2mem109.sroa.0, align 8
  %65 = bitcast i64 %.reg2mem109.sroa.0.0..reg2mem109.sroa.0.0..reload110 to double
  %l.0.reload.reg2mem.0.l.0.reload.reload = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

if.then8:                                         ; preds = %loopEntry
  %.reg2mem109.sroa.0.0..reg2mem109.sroa.0.0..reload111 = load volatile i64, i64* %.reg2mem109.sroa.0, align 8
  %arrayidx3.reg2mem.0.arrayidx3.reload = load volatile double*, double** %arrayidx3.reg2mem, align 8
  %66 = bitcast double* %arrayidx3.reg2mem.0.arrayidx3.reload to i64*
  store i64 %.reg2mem109.sroa.0.0..reg2mem109.sroa.0.0..reload111, i64* %66, align 8, !tbaa !5
  ret void

if.end10:                                         ; preds = %loopEntry
  store double %rra.0.reg2mem.0, double* %rra.0.reload.reg2mem, align 8
  store i32 %l.1.reg2mem.0, i32* %l.1.reload.reg2mem, align 4
  store i32 %ir.1.reg2mem.0, i32* %ir.1.reload.reg2mem, align 4
  %67 = load i32, i32* @x.2, align 4
  %68 = load i32, i32* @y.3, align 4
  %69 = sub i32 0, -1
  %70 = sub i32 %67, %69
  %71 = add i32 %67, -1
  %72 = mul i32 %70, %67
  %73 = xor i32 %72, -1
  %74 = xor i32 1, -1
  %75 = xor i32 -306080964, -1
  %76 = or i32 %73, %74
  %77 = or i32 -306080964, %75
  %78 = xor i32 %76, -1
  %79 = and i32 %78, %77
  %80 = and i32 %72, 1
  %81 = icmp eq i32 %79, 0
  %82 = icmp slt i32 %68, 10
  %83 = xor i1 %82, true
  %84 = xor i1 %81, true
  %85 = xor i1 false, true
  %86 = and i1 %83, false
  %87 = and i1 %82, %85
  %88 = and i1 %84, false
  %89 = and i1 %81, %85
  %90 = or i1 %86, %87
  %91 = or i1 %88, %89
  %92 = xor i1 %90, %91
  %93 = or i1 %83, %84
  %94 = xor i1 %93, true
  %95 = or i1 false, %85
  %96 = and i1 %94, %95
  %97 = or i1 %92, %96
  %98 = or i1 %82, %81
  %99 = select i1 %97, i32 -1222007183, i32 -1463449821
  br label %loopEntry.backedge

originalBB81:                                     ; preds = %loopEntry
  %l.1.reload.reg2mem.0.l.1.reload.reload132 = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  %shl = shl i32 %l.1.reload.reg2mem.0.l.1.reload.reload132, 1
  store i32 %shl, i32* %shl.reg2mem, align 4
  %100 = load i32, i32* @x.2, align 4
  %101 = load i32, i32* @y.3, align 4
  %102 = sub i32 0, -1
  %103 = sub i32 %100, %102
  %104 = add i32 %100, -1
  %105 = mul i32 %103, %100
  %106 = xor i32 %105, -1
  %107 = xor i32 1, -1
  %108 = xor i32 957025999, -1
  %109 = or i32 %106, %107
  %110 = or i32 957025999, %108
  %111 = xor i32 %109, -1
  %112 = and i32 %111, %110
  %113 = and i32 %105, 1
  %114 = icmp eq i32 %112, 0
  %115 = icmp slt i32 %101, 10
  %116 = xor i1 %115, true
  %117 = xor i1 %114, true
  %118 = xor i1 true, true
  %119 = and i1 %116, true
  %120 = and i1 %115, %118
  %121 = and i1 %117, true
  %122 = and i1 %114, %118
  %123 = or i1 %119, %120
  %124 = or i1 %121, %122
  %125 = xor i1 %123, %124
  %126 = or i1 %116, %117
  %127 = xor i1 %126, true
  %128 = or i1 true, %118
  %129 = and i1 %127, %128
  %130 = or i1 %125, %129
  %131 = or i1 %115, %114
  %132 = select i1 %130, i32 -1699241039, i32 -1463449821
  br label %loopEntry.backedge

originalBBpart288:                                ; preds = %loopEntry
  %shl.reg2mem.0.shl.reload = load volatile i32, i32* %shl.reg2mem, align 4
  %l.1.reload.reg2mem.0.l.1.reload.reload = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

while.cond:                                       ; preds = %loopEntry
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %133 = load i32, i32* @x.2, align 4
  %134 = load i32, i32* @y.3, align 4
  %135 = sub i32 %133, -139771321
  %136 = add i32 %135, -1
  %137 = add i32 %136, -139771321
  %138 = add i32 %133, -1
  %139 = mul i32 %137, %133
  %140 = xor i32 %139, -1
  %141 = xor i32 1, -1
  %142 = xor i32 1512755073, -1
  %143 = or i32 %140, %141
  %144 = or i32 1512755073, %142
  %145 = xor i32 %143, -1
  %146 = and i32 %145, %144
  %147 = and i32 %139, 1
  %148 = icmp eq i32 %146, 0
  %149 = icmp slt i32 %134, 10
  %150 = and i1 %149, %148
  %151 = xor i1 %149, %148
  %152 = or i1 %150, %151
  %153 = or i1 %149, %148
  %154 = select i1 %152, i32 36232554, i32 1648180509
  br label %loopEntry.backedge

originalBB90:                                     ; preds = %loopEntry
  %ir.1.reload.reg2mem.0.ir.1.reload.reload = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload147 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp11 = icmp sle i32 %j.0.reload.reg2mem.0.j.0.reload.reload147, %ir.1.reload.reg2mem.0.ir.1.reload.reload
  store i1 %cmp11, i1* %cmp11.reg2mem, align 1
  %155 = load i32, i32* @x.2, align 4
  %156 = load i32, i32* @y.3, align 4
  %157 = sub i32 %155, -1736690427
  %158 = add i32 %157, -1
  %159 = add i32 %158, -1736690427
  %160 = add i32 %155, -1
  %161 = mul i32 %159, %155
  %162 = xor i32 1, -1
  %163 = xor i32 %161, %162
  %164 = and i32 %163, %161
  %165 = and i32 %161, 1
  %166 = icmp eq i32 %164, 0
  %167 = icmp slt i32 %156, 10
  %168 = xor i1 %167, true
  %169 = xor i1 %166, true
  %170 = xor i1 false, true
  %171 = and i1 %168, false
  %172 = and i1 %167, %170
  %173 = and i1 %169, false
  %174 = and i1 %166, %170
  %175 = or i1 %171, %172
  %176 = or i1 %173, %174
  %177 = xor i1 %175, %176
  %178 = or i1 %168, %169
  %179 = xor i1 %178, true
  %180 = or i1 false, %170
  %181 = and i1 %179, %180
  %182 = or i1 %177, %181
  %183 = or i1 %167, %166
  %184 = select i1 %182, i32 -10992963, i32 1648180509
  br label %loopEntry.backedge

originalBBpart292:                                ; preds = %loopEntry
  %cmp11.reg2mem.0.cmp11.reload = load volatile i1, i1* %cmp11.reg2mem, align 1
  %185 = select i1 %cmp11.reg2mem.0.cmp11.reload, i32 485639552, i32 2103502506
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  %ir.1.reload.reg2mem.0.ir.1.reload.reload138 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload148 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp12 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload148, %ir.1.reload.reg2mem.0.ir.1.reload.reload138
  %186 = select i1 %cmp12, i32 2142412995, i32 1390560003
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

land.lhs.true:                                    ; preds = %loopEntry
  %j.0.reload.reg2mem.0.j.0.reload.reload149 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom13 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload149 to i64
  %arrayidx14 = getelementptr inbounds double, double* %ra, i64 %idxprom13
  %187 = load double, double* %arrayidx14, align 8, !tbaa !5
  %j.0.reload.reg2mem.0.j.0.reload.reload150 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %188 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload150, 45275659
  %189 = add i32 %188, 1
  %190 = add i32 %189, 45275659
  %add15 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload150, 1
  store i32 %190, i32* %add15.reg2mem, align 4
  %add15.reg2mem.0.add15.reload113 = load volatile i32, i32* %add15.reg2mem, align 4
  %idxprom16 = sext i32 %add15.reg2mem.0.add15.reload113 to i64
  %arrayidx17 = getelementptr inbounds double, double* %ra, i64 %idxprom16
  %191 = load double, double* %arrayidx17, align 8, !tbaa !5
  %cmp18 = fcmp olt double %187, %191
  %192 = select i1 %cmp18, i32 588665097, i32 1390560003
  %j.0.reload.reg2mem.0.j.0.reload.reload146 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

if.then19:                                        ; preds = %loopEntry
  %add15.reg2mem.0.add15.reload = load volatile i32, i32* %add15.reg2mem, align 4
  br label %loopEntry.backedge

if.end20:                                         ; preds = %loopEntry
  store i32 %j.1.reg2mem.0, i32* %j.1.reload.reg2mem, align 4
  %j.1.reload.reg2mem.0.j.1.reload.reload = load volatile i32, i32* %j.1.reload.reg2mem, align 4
  %idxprom21 = sext i32 %j.1.reload.reg2mem.0.j.1.reload.reload to i64
  %arrayidx22 = getelementptr inbounds double, double* %ra, i64 %idxprom21
  %193 = bitcast double* %arrayidx22 to i64*
  %194 = load i64, i64* %193, align 8, !tbaa !5
  store i64 %194, i64* %.reg2mem114.sroa.0, align 8
  %.reg2mem114.sroa.0.0..reg2mem114.sroa.0.0..reload116 = load volatile i64, i64* %.reg2mem114.sroa.0, align 8
  %195 = bitcast i64 %.reg2mem114.sroa.0.0..reg2mem114.sroa.0.0..reload116 to double
  %rra.0.reload.reg2mem.0.rra.0.reload.reload = load volatile double, double* %rra.0.reload.reg2mem, align 8
  %cmp23 = fcmp olt double %rra.0.reload.reg2mem.0.rra.0.reload.reload, %195
  %196 = select i1 %cmp23, i32 1919720946, i32 1903499132
  br label %loopEntry.backedge

if.then24:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom27 = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload to i64
  %arrayidx28 = getelementptr inbounds double, double* %ra, i64 %idxprom27
  %.reg2mem114.sroa.0.0..reg2mem114.sroa.0.0..reload115 = load volatile i64, i64* %.reg2mem114.sroa.0, align 8
  %197 = bitcast double* %arrayidx28 to i64*
  store i64 %.reg2mem114.sroa.0.0..reg2mem114.sroa.0.0..reload115, i64* %197, align 8, !tbaa !5
  %j.1.reload.reg2mem.0.j.1.reload.reload155 = load volatile i32, i32* %j.1.reload.reg2mem, align 4
  %add29 = shl nsw i32 %j.1.reload.reg2mem.0.j.1.reload.reload155, 1
  %j.1.reload.reg2mem.0.j.1.reload.reload156 = load volatile i32, i32* %j.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

if.else30:                                        ; preds = %loopEntry
  %198 = load i32, i32* @x.2, align 4
  %199 = load i32, i32* @y.3, align 4
  %200 = add i32 %198, -925288907
  %201 = add i32 %200, -1
  %202 = sub i32 %201, -925288907
  %203 = add i32 %198, -1
  %204 = mul i32 %202, %198
  %205 = xor i32 %204, -1
  %206 = xor i32 1, -1
  %207 = xor i32 1098581806, -1
  %208 = or i32 %205, %206
  %209 = or i32 1098581806, %207
  %210 = xor i32 %208, -1
  %211 = and i32 %210, %209
  %212 = and i32 %204, 1
  %213 = icmp eq i32 %211, 0
  %214 = icmp slt i32 %199, 10
  %215 = xor i1 %214, true
  %216 = xor i1 %213, true
  %217 = xor i1 true, true
  %218 = and i1 %215, true
  %219 = and i1 %214, %217
  %220 = and i1 %216, true
  %221 = and i1 %213, %217
  %222 = or i1 %218, %219
  %223 = or i1 %220, %221
  %224 = xor i1 %222, %223
  %225 = or i1 %215, %216
  %226 = xor i1 %225, true
  %227 = or i1 true, %217
  %228 = and i1 %226, %227
  %229 = or i1 %224, %228
  %230 = or i1 %214, %213
  %231 = select i1 %229, i32 497915743, i32 871879699
  br label %loopEntry.backedge

originalBB94:                                     ; preds = %loopEntry
  %ir.1.reload.reg2mem.0.ir.1.reload.reload139 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %232 = sub i32 %ir.1.reload.reg2mem.0.ir.1.reload.reload139, 891200959
  %233 = add i32 %232, 1
  %234 = add i32 %233, 891200959
  %add31 = add nsw i32 %ir.1.reload.reg2mem.0.ir.1.reload.reload139, 1
  store i32 %234, i32* %add31.reg2mem, align 4
  %235 = load i32, i32* @x.2, align 4
  %236 = load i32, i32* @y.3, align 4
  %237 = sub i32 0, -1
  %238 = sub i32 %235, %237
  %239 = add i32 %235, -1
  %240 = mul i32 %238, %235
  %241 = xor i32 %240, -1
  %242 = xor i32 1, -1
  %243 = xor i32 -1911659794, -1
  %244 = or i32 %241, %242
  %245 = or i32 -1911659794, %243
  %246 = xor i32 %244, -1
  %247 = and i32 %246, %245
  %248 = and i32 %240, 1
  %249 = icmp eq i32 %247, 0
  %250 = icmp slt i32 %236, 10
  %251 = and i1 %250, %249
  %252 = xor i1 %250, %249
  %253 = or i1 %251, %252
  %254 = or i1 %250, %249
  %255 = select i1 %253, i32 1260729148, i32 871879699
  br label %loopEntry.backedge

originalBBpart2101:                               ; preds = %loopEntry
  %add31.reg2mem.0.add31.reload = load volatile i32, i32* %add31.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload154 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

while.end:                                        ; preds = %loopEntry
  %256 = load i32, i32* @x.2, align 4
  %257 = load i32, i32* @y.3, align 4
  %258 = sub i32 0, %256
  %259 = sub i32 0, -1
  %260 = add i32 %258, %259
  %261 = sub i32 0, %260
  %262 = add i32 %256, -1
  %263 = mul i32 %261, %256
  %264 = xor i32 %263, -1
  %265 = xor i32 1, -1
  %266 = xor i32 -121804232, -1
  %267 = or i32 %264, %265
  %268 = or i32 -121804232, %266
  %269 = xor i32 %267, -1
  %270 = and i32 %269, %268
  %271 = and i32 %263, 1
  %272 = icmp eq i32 %270, 0
  %273 = icmp slt i32 %257, 10
  %274 = xor i1 %273, true
  %275 = xor i1 %272, true
  %276 = xor i1 false, true
  %277 = and i1 %274, false
  %278 = and i1 %273, %276
  %279 = and i1 %275, false
  %280 = and i1 %272, %276
  %281 = or i1 %277, %278
  %282 = or i1 %279, %280
  %283 = xor i1 %281, %282
  %284 = or i1 %274, %275
  %285 = xor i1 %284, true
  %286 = or i1 false, %276
  %287 = and i1 %285, %286
  %288 = or i1 %283, %287
  %289 = or i1 %273, %272
  %290 = select i1 %288, i32 -1003606842, i32 831867980
  br label %loopEntry.backedge

originalBB103:                                    ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload152 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom33 = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload152 to i64
  %arrayidx34 = getelementptr inbounds double, double* %ra, i64 %idxprom33
  %rra.0.reload.reg2mem.0.rra.0.reload.reload130 = load volatile double, double* %rra.0.reload.reg2mem, align 8
  store double %rra.0.reload.reg2mem.0.rra.0.reload.reload130, double* %arrayidx34, align 8, !tbaa !5
  %291 = load i32, i32* @x.2, align 4
  %292 = load i32, i32* @y.3, align 4
  %293 = add i32 %291, 464840883
  %294 = add i32 %293, -1
  %295 = sub i32 %294, 464840883
  %296 = add i32 %291, -1
  %297 = mul i32 %295, %291
  %298 = xor i32 %297, -1
  %299 = xor i32 1, -1
  %300 = xor i32 -2106145355, -1
  %301 = or i32 %298, %299
  %302 = or i32 -2106145355, %300
  %303 = xor i32 %301, -1
  %304 = and i32 %303, %302
  %305 = and i32 %297, 1
  %306 = icmp eq i32 %304, 0
  %307 = icmp slt i32 %292, 10
  %308 = and i1 %307, %306
  %309 = xor i1 %307, %306
  %310 = or i1 %308, %309
  %311 = or i1 %307, %306
  %312 = select i1 %310, i32 1944003977, i32 831867980
  br label %loopEntry.backedge

originalBBpart2105:                               ; preds = %loopEntry
  %ir.1.reload.reg2mem.0.ir.1.reload.reload145 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %l.1.reload.reg2mem.0.l.1.reload.reload137 = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBBalteredBB:                              ; preds = %loopEntry
  %l.0.reload.reg2mem.0.l.0.reload.reload120 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload121 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload122 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload123 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload124 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload125 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload126 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload127 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  %l.0.reload.reg2mem.0.l.0.reload.reload119 = load volatile i32, i32* %l.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB81alteredBB:                            ; preds = %loopEntry
  %l.1.reload.reg2mem.0.l.1.reload.reload134 = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  %l.1.reload.reg2mem.0.l.1.reload.reload135 = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  %l.1.reload.reg2mem.0.l.1.reload.reload136 = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  %l.1.reload.reg2mem.0.l.1.reload.reload133 = load volatile i32, i32* %l.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB90alteredBB:                            ; preds = %loopEntry
  %ir.1.reload.reg2mem.0.ir.1.reload.reload140 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload151 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB94alteredBB:                            ; preds = %loopEntry
  %ir.1.reload.reg2mem.0.ir.1.reload.reload142 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %ir.1.reload.reg2mem.0.ir.1.reload.reload143 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %ir.1.reload.reg2mem.0.ir.1.reload.reload144 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  %ir.1.reload.reg2mem.0.ir.1.reload.reload141 = load volatile i32, i32* %ir.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB103alteredBB:                           ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload153 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom33alteredBB = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload153 to i64
  %arrayidx34alteredBB = getelementptr inbounds double, double* %ra, i64 %idxprom33alteredBB
  %rra.0.reload.reg2mem.0.rra.0.reload.reload131 = load volatile double, double* %rra.0.reload.reg2mem, align 8
  store double %rra.0.reload.reg2mem.0.rra.0.reload.reload131, double* %arrayidx34alteredBB, align 8, !tbaa !5
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 {
entry:
  %div.reg2mem.i = alloca double, align 8
  %.reg2mem32.i = alloca i1, align 1
  %.reg2mem.i = alloca i1, align 1
  %i.0.reload.reg2mem = alloca i32, align 4
  %.reg2mem = alloca double*, align 8
  %call1.reg2mem = alloca i8*, align 8
  %call.reg2mem = alloca i64, align 8
  %call = tail call i64 @clock() #4
  store i64 %call, i64* %call.reg2mem, align 8
  %call1 = tail call noalias i8* @malloc(i64 64000008) #4
  store i8* %call1, i8** %call1.reg2mem, align 8
  %call1.reg2mem.0.call1.reload24 = load volatile i8*, i8** %call1.reg2mem, align 8
  %0 = bitcast double** %.reg2mem to i8**
  store i8* %call1.reg2mem.0.call1.reload24, i8** %0, align 8
  %div.reg2mem.i.0..sroa_cast = bitcast double* %div.reg2mem.i to i8*
  %.reg2mem32.i.0..sroa_cast = bitcast i1* %.reg2mem32.i to i8*
  %.reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i to i8*
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %gen_random.exit, %entry
  %i.0.reg2mem.0.ph = phi i32 [ %50, %gen_random.exit ], [ 1, %entry ]
  br label %loopEntry.outer32

loopEntry.outer32:                                ; preds = %loopEntry.outer, %for.cond.split
  %switchVar.0.ph = phi i32 [ 712228689, %loopEntry.outer ], [ %1, %for.cond.split ]
  %trunc = trunc i32 %switchVar.0.ph to i31
  switch i31 %trunc, label %infloop.preheader [
    i31 712228689, label %for.cond.split
    i31 454643277, label %for.body.split
    i31 -706349145, label %for.end.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer32
  br label %infloop

for.cond.split:                                   ; preds = %loopEntry.outer32
  store i32 %i.0.reg2mem.0.ph, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 8000001
  %1 = select i1 %cmp, i32 454643277, i32 1441134503
  br label %loopEntry.outer32

for.body.split:                                   ; preds = %loopEntry.outer32
  call void @llvm.lifetime.start(i64 8, i8* nonnull %div.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem32.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, 1523322975
  %5 = add i32 %4, -1
  %6 = sub i32 %5, 1523322975
  %7 = add i32 %2, -1
  %8 = mul i32 %6, %2
  %9 = xor i32 %8, -1
  %10 = xor i32 1, -1
  %11 = xor i32 434615249, -1
  %12 = or i32 %9, %10
  %13 = or i32 434615249, %11
  %14 = xor i32 %12, -1
  %15 = and i32 %14, %13
  %16 = and i32 %8, 1
  %17 = icmp eq i32 %15, 0
  store i1 %17, i1* %.reg2mem.i, align 1
  %18 = icmp slt i32 %3, 10
  store i1 %18, i1* %.reg2mem32.i, align 1
  %19 = and i1 %18, %17
  %20 = xor i1 %18, %17
  %21 = or i1 %19, %20
  %22 = or i1 %18, %17
  %23 = select i1 %21, i32 -151658036, i32 -906608263
  br label %loopEntry.outer.i

loopEntry.outer.i:                                ; preds = %loopEntry.outer.i.backedge, %for.body.split
  %switchVar.0.ph.i = phi i32 [ -585922434, %for.body.split ], [ %switchVar.0.ph.i.be, %loopEntry.outer.i.backedge ]
  switch i32 %switchVar.0.ph.i, label %infloop.i.preheader [
    i32 -585922434, label %first.split.i
    i32 2016568753, label %originalBB.split.i
    i32 -151658036, label %gen_random.exit
    i32 -906608263, label %originalBBalteredBB.split.i
  ]

infloop.i.preheader:                              ; preds = %loopEntry.outer.i
  br label %infloop.i

first.split.i:                                    ; preds = %loopEntry.outer.i
  %.reg2mem.i.0..reg2mem.0..reload.i = load volatile i1, i1* %.reg2mem.i, align 1
  %.reg2mem32.i.0..reg2mem32.0..reload33.i = load volatile i1, i1* %.reg2mem32.i, align 1
  %24 = xor i1 %.reg2mem.i.0..reg2mem.0..reload.i, true
  %25 = xor i1 %.reg2mem32.i.0..reg2mem32.0..reload33.i, true
  %26 = xor i1 false, true
  %27 = and i1 %24, false
  %28 = and i1 %.reg2mem.i.0..reg2mem.0..reload.i, %26
  %29 = and i1 %25, false
  %30 = and i1 %.reg2mem32.i.0..reg2mem32.0..reload33.i, %26
  %31 = or i1 %27, %28
  %32 = or i1 %29, %30
  %33 = xor i1 %31, %32
  %34 = or i1 %24, %25
  %35 = xor i1 %34, true
  %36 = or i1 false, %26
  %37 = and i1 %35, %36
  %38 = or i1 %33, %37
  %39 = or i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem32.i.0..reg2mem32.0..reload33.i
  %40 = select i1 %38, i32 2016568753, i32 -906608263
  br label %loopEntry.outer.i.backedge

loopEntry.outer.i.backedge:                       ; preds = %first.split.i, %originalBB.split.i, %originalBBalteredBB.split.i
  %switchVar.0.ph.i.be = phi i32 [ %40, %first.split.i ], [ %23, %originalBB.split.i ], [ 2016568753, %originalBBalteredBB.split.i ]
  br label %loopEntry.outer.i

originalBB.split.i:                               ; preds = %loopEntry.outer.i
  %41 = load i64, i64* @gen_random.last, align 8, !tbaa !1
  %mul.i = mul nsw i64 %41, 3877
  %42 = sub i64 %mul.i, 7355648476004393273
  %43 = add i64 %42, 29573
  %44 = add i64 %43, 7355648476004393273
  %add.i = add nsw i64 %mul.i, 29573
  %rem.i = srem i64 %44, 139968
  store i64 %rem.i, i64* @gen_random.last, align 8, !tbaa !1
  %conv.i = sitofp i64 %rem.i to double
  %div.i = fdiv double %conv.i, 1.399680e+05
  store double %div.i, double* %div.reg2mem.i, align 8
  br label %loopEntry.outer.i.backedge

originalBBalteredBB.split.i:                      ; preds = %loopEntry.outer.i
  %45 = load i64, i64* @gen_random.last, align 8, !tbaa !1
  %mulalteredBB.i = mul nsw i64 %45, 3877
  %46 = add i64 %mulalteredBB.i, 480452287660337160
  %47 = add i64 %46, 29573
  %48 = sub i64 %47, 480452287660337160
  %addalteredBB.i = add nsw i64 %mulalteredBB.i, 29573
  %remalteredBB.i = srem i64 %48, 139968
  store i64 %remalteredBB.i, i64* @gen_random.last, align 8, !tbaa !1
  br label %loopEntry.outer.i.backedge

infloop.i:                                        ; preds = %infloop.i.preheader, %infloop.i
  br label %infloop.i

gen_random.exit:                                  ; preds = %loopEntry.outer.i
  %div.reg2mem.i.0.div.reg2mem.0.div.reload.i = load volatile double, double* %div.reg2mem.i, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %div.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem32.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %i.0.reload.reg2mem.0.i.0.reload.reload27 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload27 to i64
  %.reg2mem.0..reload = load volatile double*, double** %.reg2mem, align 8
  %arrayidx = getelementptr inbounds double, double* %.reg2mem.0..reload, i64 %idxprom
  store double %div.reg2mem.i.0.div.reg2mem.0.div.reload.i, double* %arrayidx, align 8, !tbaa !5
  %i.0.reload.reg2mem.0.i.0.reload.reload28 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %49 = sub i32 0, 1
  %50 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload28, %49
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload28, 1
  br label %loopEntry.outer

for.end.split:                                    ; preds = %loopEntry.outer32
  %.reg2mem.0..reload25 = load volatile double*, double** %.reg2mem, align 8
  tail call void @benchmark_heapsort(i32 8000000, double* %.reg2mem.0..reload25)
  %.reg2mem.0..reload26 = load volatile double*, double** %.reg2mem, align 8
  %arrayidx5 = getelementptr inbounds double, double* %.reg2mem.0..reload26, i64 8000000
  %51 = load double, double* %arrayidx5, align 8, !tbaa !5
  %call6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %51)
  %call7 = tail call i64 @clock() #4
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %52 = add i64 %call7, -3426036539319422476
  %53 = sub i64 %52, %call.reg2mem.0.call.reload
  %54 = sub i64 %53, -3426036539319422476
  %sub = sub nsw i64 %call7, %call.reg2mem.0.call.reload
  %conv8 = sitofp i64 %54 to double
  %div = fdiv double %conv8, 1.000000e+06
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  %call1.reg2mem.0.call1.reload = load volatile i8*, i8** %call1.reg2mem, align 8
  tail call void @free(i8* %call1.reg2mem.0.call1.reload) #4
  ret i32 0

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
