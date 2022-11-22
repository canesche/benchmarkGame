; ModuleID = 'sptl-norm/sptl-norm.c'
source_filename = "sptl-norm/sptl-norm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%0.9f\0A\00", align 1
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

; Function Attrs: norecurse nounwind uwtable
define double @eval_A(i32 %i, i32 %j) local_unnamed_addr #0 {
entry:
  %div5.reg2mem = alloca double, align 8
  %.reg2mem55 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x, align 4
  %1 = load i32, i32* @y, align 4
  %2 = add i32 %0, -836944787
  %3 = add i32 %2, -1
  %4 = sub i32 %3, -836944787
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 1116346748, -1
  %10 = or i32 %7, %8
  %11 = or i32 1116346748, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  store i1 %15, i1* %.reg2mem, align 1
  %16 = icmp slt i32 %1, 10
  store i1 %16, i1* %.reg2mem55, align 1
  %17 = sub i32 0, %i
  %18 = sub i32 %j, %17
  %add = add nsw i32 %j, %i
  %19 = sub i32 0, %18
  %20 = sub i32 0, 1
  %21 = add i32 %19, %20
  %22 = sub i32 0, %21
  %add2 = add nsw i32 %18, 1
  %mul = mul nsw i32 %22, %18
  %div = sdiv i32 %mul, 2
  %23 = sub i32 %i, 889975470
  %24 = add i32 %23, 1
  %25 = add i32 %24, 889975470
  %add3 = add i32 %i, 1
  %26 = sub i32 %25, -727473719
  %27 = add i32 %26, %div
  %28 = add i32 %27, -727473719
  %add4 = add i32 %25, %div
  %conv = sitofp i32 %28 to double
  %div5 = fdiv double 1.000000e+00, %conv
  %29 = xor i1 %16, true
  %30 = xor i1 %15, true
  %31 = xor i1 false, true
  %32 = and i1 %29, false
  %33 = and i1 %16, %31
  %34 = and i1 %30, false
  %35 = and i1 %15, %31
  %36 = or i1 %32, %33
  %37 = or i1 %34, %35
  %38 = xor i1 %36, %37
  %39 = or i1 %29, %30
  %40 = xor i1 %39, true
  %41 = or i1 false, %31
  %42 = and i1 %40, %41
  %43 = or i1 %38, %42
  %44 = or i1 %16, %15
  %45 = select i1 %43, i32 -1036846134, i32 -1181340862
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ 170597836, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 170597836, label %first.split
    i32 -653813940, label %originalBB.split
    i32 -1036846134, label %originalBBpart2.split
    i32 -1181340862, label %loopEntry.outer.backedge
  ]

loopEntry.outer.backedge:                         ; preds = %loopEntry.outer, %originalBB.split, %first.split
  %switchVar.0.ph.be = phi i32 [ %50, %first.split ], [ %45, %originalBB.split ], [ -653813940, %loopEntry.outer ]
  br label %loopEntry.outer

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem55.0..reload56 = load volatile i1, i1* %.reg2mem55, align 1
  %46 = and i1 %.reg2mem.0..reload, %.reg2mem55.0..reload56
  %47 = xor i1 %.reg2mem.0..reload, %.reg2mem55.0..reload56
  %48 = or i1 %46, %47
  %49 = or i1 %.reg2mem.0..reload, %.reg2mem55.0..reload56
  %50 = select i1 %48, i32 -653813940, i32 -1181340862
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  store double %div5, double* %div5.reg2mem, align 8
  br label %loopEntry.outer.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer
  %div5.reg2mem.0.div5.reload = load volatile double, double* %div5.reg2mem, align 8
  ret double %div5.reg2mem.0.div5.reload

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind uwtable
define void @eval_A_times_u(i32 %N, double* nocapture readonly %u, double* %Au) local_unnamed_addr #1 {
entry:
  %div5.reg2mem.i = alloca double, align 8
  %.reg2mem55.i = alloca i1, align 1
  %.reg2mem.i = alloca i1, align 1
  %j.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %cmp2.reg2mem = alloca i1, align 1
  %arrayidx.reg2mem = alloca double*, align 8
  %div5.reg2mem.i.0..sroa_cast = bitcast double* %div5.reg2mem.i to i8*
  %.reg2mem55.i.0..sroa_cast = bitcast i1* %.reg2mem55.i to i8*
  %.reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 480950087, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 480950087, label %for.cond
    i32 -2083892058, label %for.body
    i32 -1097567732, label %originalBB
    i32 1674313321, label %originalBBpart2
    i32 180016366, label %for.cond1
    i32 15173885, label %originalBB21
    i32 -2137056522, label %originalBBpart223
    i32 -1745536276, label %for.body3
    i32 330602394, label %for.inc8
    i32 1720303161, label %for.end10
    i32 1698143597, label %originalBB25
    i32 2141290984, label %originalBBpart227
    i32 1382398463, label %originalBBalteredBB
    i32 285396740, label %originalBB21alteredBB
    i32 -801744015, label %originalBB25alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB25alteredBB, %originalBB21alteredBB, %originalBBalteredBB, %originalBB25, %for.end10, %for.inc8, %eval_A.exit, %originalBBpart223, %originalBB21, %for.cond1, %originalBBpart2, %originalBB, %for.body, %for.cond
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBB25alteredBB ], [ %j.0.reg2mem.0, %originalBB21alteredBB ], [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBB25 ], [ %j.0.reg2mem.0, %for.end10 ], [ %j.0.reg2mem.0, %for.inc8 ], [ %159, %eval_A.exit ], [ %j.0.reg2mem.0, %originalBBpart223 ], [ %j.0.reg2mem.0, %originalBB21 ], [ %j.0.reg2mem.0, %for.cond1 ], [ 0, %originalBBpart2 ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %for.body ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB25alteredBB ], [ %i.0.reg2mem.0, %originalBB21alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB25 ], [ %i.0.reg2mem.0, %for.end10 ], [ %163, %for.inc8 ], [ %i.0.reg2mem.0, %eval_A.exit ], [ %i.0.reg2mem.0, %originalBBpart223 ], [ %i.0.reg2mem.0, %originalBB21 ], [ %i.0.reg2mem.0, %for.cond1 ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1698143597, %originalBB25alteredBB ], [ 15173885, %originalBB21alteredBB ], [ -1097567732, %originalBBalteredBB ], [ %216, %originalBB25 ], [ %193, %for.end10 ], [ 480950087, %for.inc8 ], [ 180016366, %eval_A.exit ], [ %102, %originalBBpart223 ], [ %101, %originalBB21 ], [ %83, %for.cond1 ], [ 180016366, %originalBBpart2 ], [ %53, %originalBB ], [ %23, %for.body ], [ %0, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %N
  %0 = select i1 %cmp, i32 -2083892058, i32 1720303161
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %1 = load i32, i32* @x.2, align 4
  %2 = load i32, i32* @y.3, align 4
  %3 = sub i32 0, %1
  %4 = sub i32 0, -1
  %5 = add i32 %3, %4
  %6 = sub i32 0, %5
  %7 = add i32 %1, -1
  %8 = mul i32 %6, %1
  %9 = xor i32 %8, -1
  %10 = xor i32 1, -1
  %11 = xor i32 1267446751, -1
  %12 = or i32 %9, %10
  %13 = or i32 1267446751, %11
  %14 = xor i32 %12, -1
  %15 = and i32 %14, %13
  %16 = and i32 %8, 1
  %17 = icmp eq i32 %15, 0
  %18 = icmp slt i32 %2, 10
  %19 = and i1 %18, %17
  %20 = xor i1 %18, %17
  %21 = or i1 %19, %20
  %22 = or i1 %18, %17
  %23 = select i1 %21, i32 -1097567732, i32 1382398463
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload32 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload32 to i64
  %arrayidx = getelementptr inbounds double, double* %Au, i64 %idxprom
  store double* %arrayidx, double** %arrayidx.reg2mem, align 8
  %arrayidx.reg2mem.0.arrayidx.reload31 = load volatile double*, double** %arrayidx.reg2mem, align 8
  store double 0.000000e+00, double* %arrayidx.reg2mem.0.arrayidx.reload31, align 8, !tbaa !1
  %24 = load i32, i32* @x.2, align 4
  %25 = load i32, i32* @y.3, align 4
  %26 = sub i32 %24, 1261150381
  %27 = add i32 %26, -1
  %28 = add i32 %27, 1261150381
  %29 = add i32 %24, -1
  %30 = mul i32 %28, %24
  %31 = xor i32 1, -1
  %32 = xor i32 %30, %31
  %33 = and i32 %32, %30
  %34 = and i32 %30, 1
  %35 = icmp eq i32 %33, 0
  %36 = icmp slt i32 %25, 10
  %37 = xor i1 %36, true
  %38 = xor i1 %35, true
  %39 = xor i1 false, true
  %40 = and i1 %37, false
  %41 = and i1 %36, %39
  %42 = and i1 %38, false
  %43 = and i1 %35, %39
  %44 = or i1 %40, %41
  %45 = or i1 %42, %43
  %46 = xor i1 %44, %45
  %47 = or i1 %37, %38
  %48 = xor i1 %47, true
  %49 = or i1 false, %39
  %50 = and i1 %48, %49
  %51 = or i1 %46, %50
  %52 = or i1 %36, %35
  %53 = select i1 %51, i32 1674313321, i32 1382398463
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond1:                                        ; preds = %loopEntry
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  %54 = load i32, i32* @x.2, align 4
  %55 = load i32, i32* @y.3, align 4
  %56 = add i32 %54, -1227737112
  %57 = add i32 %56, -1
  %58 = sub i32 %57, -1227737112
  %59 = add i32 %54, -1
  %60 = mul i32 %58, %54
  %61 = xor i32 1, -1
  %62 = xor i32 %60, %61
  %63 = and i32 %62, %60
  %64 = and i32 %60, 1
  %65 = icmp eq i32 %63, 0
  %66 = icmp slt i32 %55, 10
  %67 = xor i1 %66, true
  %68 = xor i1 %65, true
  %69 = xor i1 false, true
  %70 = and i1 %67, false
  %71 = and i1 %66, %69
  %72 = and i1 %68, false
  %73 = and i1 %65, %69
  %74 = or i1 %70, %71
  %75 = or i1 %72, %73
  %76 = xor i1 %74, %75
  %77 = or i1 %67, %68
  %78 = xor i1 %77, true
  %79 = or i1 false, %69
  %80 = and i1 %78, %79
  %81 = or i1 %76, %80
  %82 = or i1 %66, %65
  %83 = select i1 %81, i32 15173885, i32 285396740
  br label %loopEntry.backedge

originalBB21:                                     ; preds = %loopEntry
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp2 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload, %N
  store i1 %cmp2, i1* %cmp2.reg2mem, align 1
  %84 = load i32, i32* @x.2, align 4
  %85 = load i32, i32* @y.3, align 4
  %86 = add i32 %84, 132796997
  %87 = add i32 %86, -1
  %88 = sub i32 %87, 132796997
  %89 = add i32 %84, -1
  %90 = mul i32 %88, %84
  %91 = xor i32 1, -1
  %92 = xor i32 %90, %91
  %93 = and i32 %92, %90
  %94 = and i32 %90, 1
  %95 = icmp eq i32 %93, 0
  %96 = icmp slt i32 %85, 10
  %97 = and i1 %96, %95
  %98 = xor i1 %96, %95
  %99 = or i1 %97, %98
  %100 = or i1 %96, %95
  %101 = select i1 %99, i32 -2137056522, i32 285396740
  br label %loopEntry.backedge

originalBBpart223:                                ; preds = %loopEntry
  %cmp2.reg2mem.0.cmp2.reload = load volatile i1, i1* %cmp2.reg2mem, align 1
  %102 = select i1 %cmp2.reg2mem.0.cmp2.reload, i32 -1745536276, i32 330602394
  br label %loopEntry.backedge

for.body3:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload33 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload36 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  call void @llvm.lifetime.start(i64 8, i8* nonnull %div5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem55.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %103 = load i32, i32* @x, align 4
  %104 = load i32, i32* @y, align 4
  %105 = sub i32 0, %103
  %106 = sub i32 0, -1
  %107 = add i32 %105, %106
  %108 = sub i32 0, %107
  %109 = add i32 %103, -1
  %110 = mul i32 %108, %103
  %111 = xor i32 %110, -1
  %112 = xor i32 1, -1
  %113 = xor i32 870973676, -1
  %114 = or i32 %111, %112
  %115 = or i32 870973676, %113
  %116 = xor i32 %114, -1
  %117 = and i32 %116, %115
  %118 = and i32 %110, 1
  %119 = icmp eq i32 %117, 0
  store i1 %119, i1* %.reg2mem.i, align 1
  %120 = icmp slt i32 %104, 10
  store i1 %120, i1* %.reg2mem55.i, align 1
  %121 = add i32 %j.0.reload.reg2mem.0.j.0.reload.reload36, 68059933
  %122 = add i32 %121, %i.0.reload.reg2mem.0.i.0.reload.reload33
  %123 = sub i32 %122, 68059933
  %add.i = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload36, %i.0.reload.reg2mem.0.i.0.reload.reload33
  %124 = sub i32 %123, -1159382907
  %125 = add i32 %124, 1
  %126 = add i32 %125, -1159382907
  %add2.i = add nsw i32 %123, 1
  %mul.i = mul nsw i32 %126, %123
  %div.i = sdiv i32 %mul.i, 2
  %127 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload33, 853848772
  %128 = add i32 %127, 1
  %129 = add i32 %128, 853848772
  %add3.i = add i32 %i.0.reload.reg2mem.0.i.0.reload.reload33, 1
  %130 = add i32 %129, 680717178
  %131 = add i32 %130, %div.i
  %132 = sub i32 %131, 680717178
  %add4.i = add i32 %129, %div.i
  %conv.i = sitofp i32 %132 to double
  %div5.i = fdiv double 1.000000e+00, %conv.i
  %133 = xor i1 %120, true
  %134 = xor i1 %119, true
  %135 = xor i1 true, true
  %136 = and i1 %133, true
  %137 = and i1 %120, %135
  %138 = and i1 %134, true
  %139 = and i1 %119, %135
  %140 = or i1 %136, %137
  %141 = or i1 %138, %139
  %142 = xor i1 %140, %141
  %143 = or i1 %133, %134
  %144 = xor i1 %143, true
  %145 = or i1 true, %135
  %146 = and i1 %144, %145
  %147 = or i1 %142, %146
  %148 = or i1 %120, %119
  %149 = select i1 %147, i32 -1036846134, i32 -1181340862
  br label %loopEntry.outer.i

loopEntry.outer.i:                                ; preds = %loopEntry.outer.i.backedge, %for.body3
  %switchVar.0.ph.i = phi i32 [ 170597836, %for.body3 ], [ %switchVar.0.ph.i.be, %loopEntry.outer.i.backedge ]
  switch i32 %switchVar.0.ph.i, label %infloop.i.preheader [
    i32 170597836, label %first.split.i
    i32 -653813940, label %originalBB.split.i
    i32 -1036846134, label %eval_A.exit
    i32 -1181340862, label %loopEntry.outer.i.backedge
  ]

loopEntry.outer.i.backedge:                       ; preds = %loopEntry.outer.i, %first.split.i, %originalBB.split.i
  %switchVar.0.ph.i.be = phi i32 [ %154, %first.split.i ], [ %149, %originalBB.split.i ], [ -653813940, %loopEntry.outer.i ]
  br label %loopEntry.outer.i

infloop.i.preheader:                              ; preds = %loopEntry.outer.i
  br label %infloop.i

first.split.i:                                    ; preds = %loopEntry.outer.i
  %.reg2mem.i.0..reg2mem.0..reload.i = load volatile i1, i1* %.reg2mem.i, align 1
  %.reg2mem55.i.0..reg2mem55.0..reload56.i = load volatile i1, i1* %.reg2mem55.i, align 1
  %150 = and i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem55.i.0..reg2mem55.0..reload56.i
  %151 = xor i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem55.i.0..reg2mem55.0..reload56.i
  %152 = or i1 %150, %151
  %153 = or i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem55.i.0..reg2mem55.0..reload56.i
  %154 = select i1 %152, i32 -653813940, i32 -1181340862
  br label %loopEntry.outer.i.backedge

originalBB.split.i:                               ; preds = %loopEntry.outer.i
  store double %div5.i, double* %div5.reg2mem.i, align 8
  br label %loopEntry.outer.i.backedge

infloop.i:                                        ; preds = %infloop.i.preheader, %infloop.i
  br label %infloop.i

eval_A.exit:                                      ; preds = %loopEntry.outer.i
  %div5.reg2mem.i.0.div5.reg2mem.0.div5.reload.i = load volatile double, double* %div5.reg2mem.i, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %div5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem55.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %j.0.reload.reg2mem.0.j.0.reload.reload37 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom4 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload37 to i64
  %arrayidx5 = getelementptr inbounds double, double* %u, i64 %idxprom4
  %155 = load double, double* %arrayidx5, align 8, !tbaa !1
  %mul = fmul double %div5.reg2mem.i.0.div5.reg2mem.0.div5.reload.i, %155
  %arrayidx.reg2mem.0.arrayidx.reload = load volatile double*, double** %arrayidx.reg2mem, align 8
  %156 = load double, double* %arrayidx.reg2mem.0.arrayidx.reload, align 8, !tbaa !1
  %add = fadd double %mul, %156
  %arrayidx.reg2mem.0.arrayidx.reload30 = load volatile double*, double** %arrayidx.reg2mem, align 8
  store double %add, double* %arrayidx.reg2mem.0.arrayidx.reload30, align 8, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload38 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %157 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload38, -258093039
  %158 = add i32 %157, 1
  %159 = add i32 %158, -258093039
  %inc = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload38, 1
  br label %loopEntry.backedge

for.inc8:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload34 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %160 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload34
  %161 = sub i32 0, 1
  %162 = add i32 %160, %161
  %163 = sub i32 0, %162
  %inc9 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload34, 1
  br label %loopEntry.backedge

for.end10:                                        ; preds = %loopEntry
  %164 = load i32, i32* @x.2, align 4
  %165 = load i32, i32* @y.3, align 4
  %166 = sub i32 %164, 1195384503
  %167 = add i32 %166, -1
  %168 = add i32 %167, 1195384503
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
  %179 = xor i1 false, true
  %180 = and i1 %177, false
  %181 = and i1 %176, %179
  %182 = and i1 %178, false
  %183 = and i1 %175, %179
  %184 = or i1 %180, %181
  %185 = or i1 %182, %183
  %186 = xor i1 %184, %185
  %187 = or i1 %177, %178
  %188 = xor i1 %187, true
  %189 = or i1 false, %179
  %190 = and i1 %188, %189
  %191 = or i1 %186, %190
  %192 = or i1 %176, %175
  %193 = select i1 %191, i32 1698143597, i32 -801744015
  br label %loopEntry.backedge

originalBB25:                                     ; preds = %loopEntry
  %194 = load i32, i32* @x.2, align 4
  %195 = load i32, i32* @y.3, align 4
  %196 = sub i32 0, %194
  %197 = sub i32 0, -1
  %198 = add i32 %196, %197
  %199 = sub i32 0, %198
  %200 = add i32 %194, -1
  %201 = mul i32 %199, %194
  %202 = xor i32 %201, -1
  %203 = xor i32 1, -1
  %204 = xor i32 -696374238, -1
  %205 = or i32 %202, %203
  %206 = or i32 -696374238, %204
  %207 = xor i32 %205, -1
  %208 = and i32 %207, %206
  %209 = and i32 %201, 1
  %210 = icmp eq i32 %208, 0
  %211 = icmp slt i32 %195, 10
  %212 = and i1 %211, %210
  %213 = xor i1 %211, %210
  %214 = or i1 %212, %213
  %215 = or i1 %211, %210
  %216 = select i1 %214, i32 2141290984, i32 -801744015
  br label %loopEntry.backedge

originalBBpart227:                                ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload35 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxpromalteredBB = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload35 to i64
  %arrayidxalteredBB = getelementptr inbounds double, double* %Au, i64 %idxpromalteredBB
  store double 0.000000e+00, double* %arrayidxalteredBB, align 8, !tbaa !1
  br label %loopEntry.backedge

originalBB21alteredBB:                            ; preds = %loopEntry
  %j.0.reload.reg2mem.0.j.0.reload.reload39 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB25alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @eval_At_times_u(i32 %N, double* nocapture readonly %u, double* %Au) local_unnamed_addr #1 {
entry:
  %div5.reg2mem.i = alloca double, align 8
  %.reg2mem55.i = alloca i1, align 1
  %.reg2mem.i = alloca i1, align 1
  %j.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %cmp2.reg2mem = alloca i1, align 1
  %arrayidx.reg2mem = alloca double*, align 8
  %cmp.reg2mem = alloca i1, align 1
  %div5.reg2mem.i.0..sroa_cast = bitcast double* %div5.reg2mem.i to i8*
  %.reg2mem55.i.0..sroa_cast = bitcast i1* %.reg2mem55.i to i8*
  %.reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -790153293, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -790153293, label %for.cond
    i32 724911407, label %originalBB
    i32 1330187079, label %originalBBpart2
    i32 -655283045, label %for.body
    i32 2107101535, label %for.cond1
    i32 2038190596, label %originalBB22
    i32 -2121313388, label %originalBBpart224
    i32 1386664980, label %for.body3
    i32 -1442035316, label %for.inc8
    i32 -1695052294, label %for.end10
    i32 552610217, label %originalBB26
    i32 1289899244, label %originalBBpart228
    i32 184822593, label %originalBBalteredBB
    i32 -1921217818, label %originalBB22alteredBB
    i32 -1288519570, label %originalBB26alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB26alteredBB, %originalBB22alteredBB, %originalBBalteredBB, %originalBB26, %for.end10, %for.inc8, %eval_A.exit, %originalBBpart224, %originalBB22, %for.cond1, %for.body, %originalBBpart2, %originalBB, %for.cond
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBB26alteredBB ], [ %j.0.reg2mem.0, %originalBB22alteredBB ], [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBB26 ], [ %j.0.reg2mem.0, %for.end10 ], [ %j.0.reg2mem.0, %for.inc8 ], [ %157, %eval_A.exit ], [ %j.0.reg2mem.0, %originalBBpart224 ], [ %j.0.reg2mem.0, %originalBB22 ], [ %j.0.reg2mem.0, %for.cond1 ], [ 0, %for.body ], [ %j.0.reg2mem.0, %originalBBpart2 ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %for.cond ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB26alteredBB ], [ %i.0.reg2mem.0, %originalBB22alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB26 ], [ %i.0.reg2mem.0, %for.end10 ], [ %160, %for.inc8 ], [ %i.0.reg2mem.0, %eval_A.exit ], [ %i.0.reg2mem.0, %originalBBpart224 ], [ %i.0.reg2mem.0, %originalBB22 ], [ %i.0.reg2mem.0, %for.cond1 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 552610217, %originalBB26alteredBB ], [ 2038190596, %originalBB22alteredBB ], [ 724911407, %originalBBalteredBB ], [ %195, %originalBB26 ], [ %178, %for.end10 ], [ -790153293, %for.inc8 ], [ 2107101535, %eval_A.exit ], [ %102, %originalBBpart224 ], [ %101, %originalBB22 ], [ %70, %for.cond1 ], [ 2107101535, %for.body ], [ %48, %originalBBpart2 ], [ %47, %originalBB ], [ %29, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %0 = load i32, i32* @x.4, align 4
  %1 = load i32, i32* @y.5, align 4
  %2 = sub i32 %0, -2068056207
  %3 = add i32 %2, -1
  %4 = add i32 %3, -2068056207
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 1, -1
  %8 = xor i32 %6, %7
  %9 = and i32 %8, %6
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %9, 0
  %12 = icmp slt i32 %1, 10
  %13 = xor i1 %12, true
  %14 = xor i1 %11, true
  %15 = xor i1 false, true
  %16 = and i1 %13, false
  %17 = and i1 %12, %15
  %18 = and i1 %14, false
  %19 = and i1 %11, %15
  %20 = or i1 %16, %17
  %21 = or i1 %18, %19
  %22 = xor i1 %20, %21
  %23 = or i1 %13, %14
  %24 = xor i1 %23, true
  %25 = or i1 false, %15
  %26 = and i1 %24, %25
  %27 = or i1 %22, %26
  %28 = or i1 %12, %11
  %29 = select i1 %27, i32 724911407, i32 184822593
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %N
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %30 = load i32, i32* @x.4, align 4
  %31 = load i32, i32* @y.5, align 4
  %32 = sub i32 %30, -117301136
  %33 = add i32 %32, -1
  %34 = add i32 %33, -117301136
  %35 = add i32 %30, -1
  %36 = mul i32 %34, %30
  %37 = xor i32 1, -1
  %38 = xor i32 %36, %37
  %39 = and i32 %38, %36
  %40 = and i32 %36, 1
  %41 = icmp eq i32 %39, 0
  %42 = icmp slt i32 %31, 10
  %43 = and i1 %42, %41
  %44 = xor i1 %42, %41
  %45 = or i1 %43, %44
  %46 = or i1 %42, %41
  %47 = select i1 %45, i32 1330187079, i32 184822593
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %48 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -655283045, i32 -1695052294
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload33 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload33 to i64
  %arrayidx = getelementptr inbounds double, double* %Au, i64 %idxprom
  store double* %arrayidx, double** %arrayidx.reg2mem, align 8
  %arrayidx.reg2mem.0.arrayidx.reload32 = load volatile double*, double** %arrayidx.reg2mem, align 8
  store double 0.000000e+00, double* %arrayidx.reg2mem.0.arrayidx.reload32, align 8, !tbaa !1
  br label %loopEntry.backedge

for.cond1:                                        ; preds = %loopEntry
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  %49 = load i32, i32* @x.4, align 4
  %50 = load i32, i32* @y.5, align 4
  %51 = sub i32 %49, -1222553418
  %52 = add i32 %51, -1
  %53 = add i32 %52, -1222553418
  %54 = add i32 %49, -1
  %55 = mul i32 %53, %49
  %56 = xor i32 %55, -1
  %57 = xor i32 1, -1
  %58 = xor i32 414679073, -1
  %59 = or i32 %56, %57
  %60 = or i32 414679073, %58
  %61 = xor i32 %59, -1
  %62 = and i32 %61, %60
  %63 = and i32 %55, 1
  %64 = icmp eq i32 %62, 0
  %65 = icmp slt i32 %50, 10
  %66 = and i1 %65, %64
  %67 = xor i1 %65, %64
  %68 = or i1 %66, %67
  %69 = or i1 %65, %64
  %70 = select i1 %68, i32 2038190596, i32 -1921217818
  br label %loopEntry.backedge

originalBB22:                                     ; preds = %loopEntry
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %cmp2 = icmp slt i32 %j.0.reload.reg2mem.0.j.0.reload.reload, %N
  store i1 %cmp2, i1* %cmp2.reg2mem, align 1
  %71 = load i32, i32* @x.4, align 4
  %72 = load i32, i32* @y.5, align 4
  %73 = sub i32 0, %71
  %74 = sub i32 0, -1
  %75 = add i32 %73, %74
  %76 = sub i32 0, %75
  %77 = add i32 %71, -1
  %78 = mul i32 %76, %71
  %79 = xor i32 1, -1
  %80 = xor i32 %78, %79
  %81 = and i32 %80, %78
  %82 = and i32 %78, 1
  %83 = icmp eq i32 %81, 0
  %84 = icmp slt i32 %72, 10
  %85 = xor i1 %84, true
  %86 = xor i1 %83, true
  %87 = xor i1 false, true
  %88 = and i1 %85, false
  %89 = and i1 %84, %87
  %90 = and i1 %86, false
  %91 = and i1 %83, %87
  %92 = or i1 %88, %89
  %93 = or i1 %90, %91
  %94 = xor i1 %92, %93
  %95 = or i1 %85, %86
  %96 = xor i1 %95, true
  %97 = or i1 false, %87
  %98 = and i1 %96, %97
  %99 = or i1 %94, %98
  %100 = or i1 %84, %83
  %101 = select i1 %99, i32 -2121313388, i32 -1921217818
  br label %loopEntry.backedge

originalBBpart224:                                ; preds = %loopEntry
  %cmp2.reg2mem.0.cmp2.reload = load volatile i1, i1* %cmp2.reg2mem, align 1
  %102 = select i1 %cmp2.reg2mem.0.cmp2.reload, i32 1386664980, i32 -1442035316
  br label %loopEntry.backedge

for.body3:                                        ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload34 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %j.0.reload.reg2mem.0.j.0.reload.reload37 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  call void @llvm.lifetime.start(i64 8, i8* nonnull %div5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem55.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %103 = load i32, i32* @x, align 4
  %104 = load i32, i32* @y, align 4
  %105 = sub i32 0, -1
  %106 = sub i32 %103, %105
  %107 = add i32 %103, -1
  %108 = mul i32 %106, %103
  %109 = xor i32 %108, -1
  %110 = xor i32 1, -1
  %111 = xor i32 1817716334, -1
  %112 = or i32 %109, %110
  %113 = or i32 1817716334, %111
  %114 = xor i32 %112, -1
  %115 = and i32 %114, %113
  %116 = and i32 %108, 1
  %117 = icmp eq i32 %115, 0
  store i1 %117, i1* %.reg2mem.i, align 1
  %118 = icmp slt i32 %104, 10
  store i1 %118, i1* %.reg2mem55.i, align 1
  %119 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload34
  %120 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload37, %119
  %add.i = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload37, %i.0.reload.reg2mem.0.i.0.reload.reload34
  %121 = add i32 %120, -120620744
  %122 = add i32 %121, 1
  %123 = sub i32 %122, -120620744
  %add2.i = add nsw i32 %120, 1
  %mul.i = mul nsw i32 %123, %120
  %div.i = sdiv i32 %mul.i, 2
  %124 = sub i32 0, %j.0.reload.reg2mem.0.j.0.reload.reload37
  %125 = sub i32 0, 1
  %126 = add i32 %124, %125
  %127 = sub i32 0, %126
  %add3.i = add i32 %j.0.reload.reg2mem.0.j.0.reload.reload37, 1
  %128 = add i32 %127, -380308783
  %129 = add i32 %128, %div.i
  %130 = sub i32 %129, -380308783
  %add4.i = add i32 %127, %div.i
  %conv.i = sitofp i32 %130 to double
  %div5.i = fdiv double 1.000000e+00, %conv.i
  %131 = and i1 %118, %117
  %132 = xor i1 %118, %117
  %133 = or i1 %131, %132
  %134 = or i1 %118, %117
  %135 = select i1 %133, i32 -1036846134, i32 -1181340862
  br label %loopEntry.outer.i

loopEntry.outer.i:                                ; preds = %loopEntry.outer.i.backedge, %for.body3
  %switchVar.0.ph.i = phi i32 [ 170597836, %for.body3 ], [ %switchVar.0.ph.i.be, %loopEntry.outer.i.backedge ]
  switch i32 %switchVar.0.ph.i, label %infloop.i.preheader [
    i32 170597836, label %first.split.i
    i32 -653813940, label %originalBB.split.i
    i32 -1036846134, label %eval_A.exit
    i32 -1181340862, label %loopEntry.outer.i.backedge
  ]

loopEntry.outer.i.backedge:                       ; preds = %loopEntry.outer.i, %first.split.i, %originalBB.split.i
  %switchVar.0.ph.i.be = phi i32 [ %152, %first.split.i ], [ %135, %originalBB.split.i ], [ -653813940, %loopEntry.outer.i ]
  br label %loopEntry.outer.i

infloop.i.preheader:                              ; preds = %loopEntry.outer.i
  br label %infloop.i

first.split.i:                                    ; preds = %loopEntry.outer.i
  %.reg2mem.i.0..reg2mem.0..reload.i = load volatile i1, i1* %.reg2mem.i, align 1
  %.reg2mem55.i.0..reg2mem55.0..reload56.i = load volatile i1, i1* %.reg2mem55.i, align 1
  %136 = xor i1 %.reg2mem.i.0..reg2mem.0..reload.i, true
  %137 = xor i1 %.reg2mem55.i.0..reg2mem55.0..reload56.i, true
  %138 = xor i1 false, true
  %139 = and i1 %136, false
  %140 = and i1 %.reg2mem.i.0..reg2mem.0..reload.i, %138
  %141 = and i1 %137, false
  %142 = and i1 %.reg2mem55.i.0..reg2mem55.0..reload56.i, %138
  %143 = or i1 %139, %140
  %144 = or i1 %141, %142
  %145 = xor i1 %143, %144
  %146 = or i1 %136, %137
  %147 = xor i1 %146, true
  %148 = or i1 false, %138
  %149 = and i1 %147, %148
  %150 = or i1 %145, %149
  %151 = or i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem55.i.0..reg2mem55.0..reload56.i
  %152 = select i1 %150, i32 -653813940, i32 -1181340862
  br label %loopEntry.outer.i.backedge

originalBB.split.i:                               ; preds = %loopEntry.outer.i
  store double %div5.i, double* %div5.reg2mem.i, align 8
  br label %loopEntry.outer.i.backedge

infloop.i:                                        ; preds = %infloop.i.preheader, %infloop.i
  br label %infloop.i

eval_A.exit:                                      ; preds = %loopEntry.outer.i
  %div5.reg2mem.i.0.div5.reg2mem.0.div5.reload.i = load volatile double, double* %div5.reg2mem.i, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %div5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem55.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %j.0.reload.reg2mem.0.j.0.reload.reload38 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom4 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload38 to i64
  %arrayidx5 = getelementptr inbounds double, double* %u, i64 %idxprom4
  %153 = load double, double* %arrayidx5, align 8, !tbaa !1
  %mul = fmul double %div5.reg2mem.i.0.div5.reg2mem.0.div5.reload.i, %153
  %arrayidx.reg2mem.0.arrayidx.reload = load volatile double*, double** %arrayidx.reg2mem, align 8
  %154 = load double, double* %arrayidx.reg2mem.0.arrayidx.reload, align 8, !tbaa !1
  %add = fadd double %mul, %154
  %arrayidx.reg2mem.0.arrayidx.reload31 = load volatile double*, double** %arrayidx.reg2mem, align 8
  store double %add, double* %arrayidx.reg2mem.0.arrayidx.reload31, align 8, !tbaa !1
  %j.0.reload.reg2mem.0.j.0.reload.reload39 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %155 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload39, 389639852
  %156 = add i32 %155, 1
  %157 = add i32 %156, 389639852
  %inc = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload39, 1
  br label %loopEntry.backedge

for.inc8:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload35 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %158 = add i32 %i.0.reload.reg2mem.0.i.0.reload.reload35, 2026306100
  %159 = add i32 %158, 1
  %160 = sub i32 %159, 2026306100
  %inc9 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload35, 1
  br label %loopEntry.backedge

for.end10:                                        ; preds = %loopEntry
  %161 = load i32, i32* @x.4, align 4
  %162 = load i32, i32* @y.5, align 4
  %163 = sub i32 %161, 1784329989
  %164 = add i32 %163, -1
  %165 = add i32 %164, 1784329989
  %166 = add i32 %161, -1
  %167 = mul i32 %165, %161
  %168 = xor i32 1, -1
  %169 = xor i32 %167, %168
  %170 = and i32 %169, %167
  %171 = and i32 %167, 1
  %172 = icmp eq i32 %170, 0
  %173 = icmp slt i32 %162, 10
  %174 = and i1 %173, %172
  %175 = xor i1 %173, %172
  %176 = or i1 %174, %175
  %177 = or i1 %173, %172
  %178 = select i1 %176, i32 552610217, i32 -1288519570
  br label %loopEntry.backedge

originalBB26:                                     ; preds = %loopEntry
  %179 = load i32, i32* @x.4, align 4
  %180 = load i32, i32* @y.5, align 4
  %181 = sub i32 0, -1
  %182 = sub i32 %179, %181
  %183 = add i32 %179, -1
  %184 = mul i32 %182, %179
  %185 = xor i32 1, -1
  %186 = xor i32 %184, %185
  %187 = and i32 %186, %184
  %188 = and i32 %184, 1
  %189 = icmp eq i32 %187, 0
  %190 = icmp slt i32 %180, 10
  %191 = and i1 %190, %189
  %192 = xor i1 %190, %189
  %193 = or i1 %191, %192
  %194 = or i1 %190, %189
  %195 = select i1 %193, i32 1289899244, i32 -1288519570
  br label %loopEntry.backedge

originalBBpart228:                                ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload36 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB22alteredBB:                            ; preds = %loopEntry
  %j.0.reload.reg2mem.0.j.0.reload.reload40 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB26alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define void @eval_AtA_times_u(i32 %N, double* nocapture readonly %u, double* %AtAu) local_unnamed_addr #1 {
entry:
  %0 = zext i32 %N to i64
  %vla = alloca double, i64 %0, align 16
  call void @eval_A_times_u(i32 %N, double* %u, double* nonnull %vla)
  call void @eval_At_times_u(i32 %N, double* nonnull %vla, double* %AtAu)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 {
entry:
  %vla.i7072 = alloca [5000 x double], align 16
  %vla.i73 = alloca [5000 x double], align 16
  %vv.0.reload.reg2mem = alloca double, align 8
  %vBv.0.reload.reg2mem = alloca double, align 8
  %i.2.reload.reg2mem = alloca i32, align 4
  %i.1.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %cmp11.reg2mem = alloca i1, align 1
  %call.reg2mem = alloca i64, align 8
  %.reg2mem59 = alloca i8*, align 8
  %.reg2mem = alloca i8*, align 8
  %u = alloca [5000 x double], align 16
  %v = alloca [5000 x double], align 16
  %vla.i73.sub = getelementptr inbounds [5000 x double], [5000 x double]* %vla.i73, i64 0, i64 0
  %vla.i7072.sub = getelementptr inbounds [5000 x double], [5000 x double]* %vla.i7072, i64 0, i64 0
  %0 = bitcast i8** %.reg2mem to [5000 x double]**
  store [5000 x double]* %u, [5000 x double]** %0, align 8
  %.reg2mem.0..reload58 = load volatile i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start(i64 40000, i8* %.reg2mem.0..reload58) #3
  %1 = bitcast i8** %.reg2mem59 to [5000 x double]**
  store [5000 x double]* %v, [5000 x double]** %1, align 8
  %.reg2mem59.0..reload61 = load volatile i8*, i8** %.reg2mem59, align 8
  call void @llvm.lifetime.start(i64 40000, i8* %.reg2mem59.0..reload61) #3
  %arraydecay = getelementptr inbounds [5000 x double], [5000 x double]* %u, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [5000 x double], [5000 x double]* %v, i64 0, i64 0
  %2 = bitcast [5000 x double]* %vla.i73 to i8*
  %3 = bitcast [5000 x double]* %vla.i7072 to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %i.2.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.2.reg2mem.0.be, %loopEntry.backedge ]
  %vBv.0.reg2mem.0 = phi double [ undef, %entry ], [ %vBv.0.reg2mem.0.be, %loopEntry.backedge ]
  %vv.0.reg2mem.0 = phi double [ undef, %entry ], [ %vv.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.1.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -5453810, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -5453810, label %for.cond
    i32 -1237437835, label %for.body
    i32 133854356, label %for.end
    i32 -1595577462, label %originalBB
    i32 -650946237, label %originalBBpart2
    i32 1423222474, label %for.cond1
    i32 1212372714, label %for.body3
    i32 -150925541, label %for.end9
    i32 -750708905, label %originalBB49
    i32 1949005392, label %originalBBpart251
    i32 1129848575, label %for.cond10
    i32 645858800, label %originalBB53
    i32 665098304, label %originalBBpart255
    i32 941214073, label %for.body12
    i32 -1662914164, label %for.end25
    i32 858843618, label %originalBBalteredBB
    i32 -1623321999, label %originalBB49alteredBB
    i32 -1060470307, label %originalBB53alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB53alteredBB, %originalBB49alteredBB, %originalBBalteredBB, %for.body12, %originalBBpart255, %originalBB53, %for.cond10, %originalBBpart251, %originalBB49, %for.end9, %for.body3, %for.cond1, %originalBBpart2, %originalBB, %for.end, %for.body, %for.cond
  %i.2.reg2mem.0.be = phi i32 [ %i.2.reg2mem.0, %originalBB53alteredBB ], [ %i.2.reg2mem.0, %originalBB49alteredBB ], [ %i.2.reg2mem.0, %originalBBalteredBB ], [ %172, %for.body12 ], [ %i.2.reg2mem.0, %originalBBpart255 ], [ %i.2.reg2mem.0, %originalBB53 ], [ %i.2.reg2mem.0, %for.cond10 ], [ 0, %originalBBpart251 ], [ %i.2.reg2mem.0, %originalBB49 ], [ %i.2.reg2mem.0, %for.end9 ], [ %i.2.reg2mem.0, %for.body3 ], [ %i.2.reg2mem.0, %for.cond1 ], [ %i.2.reg2mem.0, %originalBBpart2 ], [ %i.2.reg2mem.0, %originalBB ], [ %i.2.reg2mem.0, %for.end ], [ %i.2.reg2mem.0, %for.body ], [ %i.2.reg2mem.0, %for.cond ], [ %i.2.reg2mem.0, %loopEntry ]
  %vBv.0.reg2mem.0.be = phi double [ %vBv.0.reg2mem.0, %originalBB53alteredBB ], [ %vBv.0.reg2mem.0, %originalBB49alteredBB ], [ %vBv.0.reg2mem.0, %originalBBalteredBB ], [ %add, %for.body12 ], [ %vBv.0.reg2mem.0, %originalBBpart255 ], [ %vBv.0.reg2mem.0, %originalBB53 ], [ %vBv.0.reg2mem.0, %for.cond10 ], [ 0.000000e+00, %originalBBpart251 ], [ %vBv.0.reg2mem.0, %originalBB49 ], [ %vBv.0.reg2mem.0, %for.end9 ], [ %vBv.0.reg2mem.0, %for.body3 ], [ %vBv.0.reg2mem.0, %for.cond1 ], [ %vBv.0.reg2mem.0, %originalBBpart2 ], [ %vBv.0.reg2mem.0, %originalBB ], [ %vBv.0.reg2mem.0, %for.end ], [ %vBv.0.reg2mem.0, %for.body ], [ %vBv.0.reg2mem.0, %for.cond ], [ %vBv.0.reg2mem.0, %loopEntry ]
  %vv.0.reg2mem.0.be = phi double [ %vv.0.reg2mem.0, %originalBB53alteredBB ], [ %vv.0.reg2mem.0, %originalBB49alteredBB ], [ %vv.0.reg2mem.0, %originalBBalteredBB ], [ %add22, %for.body12 ], [ %vv.0.reg2mem.0, %originalBBpart255 ], [ %vv.0.reg2mem.0, %originalBB53 ], [ %vv.0.reg2mem.0, %for.cond10 ], [ 0.000000e+00, %originalBBpart251 ], [ %vv.0.reg2mem.0, %originalBB49 ], [ %vv.0.reg2mem.0, %for.end9 ], [ %vv.0.reg2mem.0, %for.body3 ], [ %vv.0.reg2mem.0, %for.cond1 ], [ %vv.0.reg2mem.0, %originalBBpart2 ], [ %vv.0.reg2mem.0, %originalBB ], [ %vv.0.reg2mem.0, %for.end ], [ %vv.0.reg2mem.0, %for.body ], [ %vv.0.reg2mem.0, %for.cond ], [ %vv.0.reg2mem.0, %loopEntry ]
  %i.1.reg2mem.0.be = phi i32 [ %i.1.reg2mem.0, %originalBB53alteredBB ], [ %i.1.reg2mem.0, %originalBB49alteredBB ], [ %i.1.reg2mem.0, %originalBBalteredBB ], [ %i.1.reg2mem.0, %for.body12 ], [ %i.1.reg2mem.0, %originalBBpart255 ], [ %i.1.reg2mem.0, %originalBB53 ], [ %i.1.reg2mem.0, %for.cond10 ], [ %i.1.reg2mem.0, %originalBBpart251 ], [ %i.1.reg2mem.0, %originalBB49 ], [ %i.1.reg2mem.0, %for.end9 ], [ %52, %for.body3 ], [ %i.1.reg2mem.0, %for.cond1 ], [ 0, %originalBBpart2 ], [ %i.1.reg2mem.0, %originalBB ], [ %i.1.reg2mem.0, %for.end ], [ %i.1.reg2mem.0, %for.body ], [ %i.1.reg2mem.0, %for.cond ], [ %i.1.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB53alteredBB ], [ %i.0.reg2mem.0, %originalBB49alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %for.body12 ], [ %i.0.reg2mem.0, %originalBBpart255 ], [ %i.0.reg2mem.0, %originalBB53 ], [ %i.0.reg2mem.0, %for.cond10 ], [ %i.0.reg2mem.0, %originalBBpart251 ], [ %i.0.reg2mem.0, %originalBB49 ], [ %i.0.reg2mem.0, %for.end9 ], [ %i.0.reg2mem.0, %for.body3 ], [ %i.0.reg2mem.0, %for.cond1 ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.end ], [ %7, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 645858800, %originalBB53alteredBB ], [ -750708905, %originalBB49alteredBB ], [ -1595577462, %originalBBalteredBB ], [ 1129848575, %for.body12 ], [ %167, %originalBBpart255 ], [ %166, %originalBB53 ], [ %149, %for.cond10 ], [ 1129848575, %originalBBpart251 ], [ %115, %originalBB49 ], [ %85, %for.end9 ], [ 1423222474, %for.body3 ], [ %49, %for.cond1 ], [ 1423222474, %originalBBpart2 ], [ %48, %originalBB ], [ %26, %for.end ], [ -5453810, %for.body ], [ %4, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 5000
  %4 = select i1 %cmp, i32 -1237437835, i32 133854356
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload62 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload62 to i64
  %arrayidx = getelementptr inbounds [5000 x double], [5000 x double]* %u, i64 0, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx, align 8, !tbaa !1
  %i.0.reload.reg2mem.0.i.0.reload.reload63 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %5 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload63, 887799364
  %6 = add i32 %5, 1
  %7 = add i32 %6, 887799364
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload63, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %8 = load i32, i32* @x.8, align 4
  %9 = load i32, i32* @y.9, align 4
  %10 = sub i32 0, %8
  %11 = sub i32 0, -1
  %12 = add i32 %10, %11
  %13 = sub i32 0, %12
  %14 = add i32 %8, -1
  %15 = mul i32 %13, %8
  %16 = xor i32 1, -1
  %17 = xor i32 %15, %16
  %18 = and i32 %17, %15
  %19 = and i32 %15, 1
  %20 = icmp eq i32 %18, 0
  %21 = icmp slt i32 %9, 10
  %22 = and i1 %21, %20
  %23 = xor i1 %21, %20
  %24 = or i1 %22, %23
  %25 = or i1 %21, %20
  %26 = select i1 %24, i32 -1595577462, i32 858843618
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %call = call i64 @clock() #3
  store i64 %call, i64* %call.reg2mem, align 8
  %27 = load i32, i32* @x.8, align 4
  %28 = load i32, i32* @y.9, align 4
  %29 = sub i32 %27, 812716702
  %30 = add i32 %29, -1
  %31 = add i32 %30, 812716702
  %32 = add i32 %27, -1
  %33 = mul i32 %31, %27
  %34 = xor i32 %33, -1
  %35 = xor i32 1, -1
  %36 = xor i32 1968684683, -1
  %37 = or i32 %34, %35
  %38 = or i32 1968684683, %36
  %39 = xor i32 %37, -1
  %40 = and i32 %39, %38
  %41 = and i32 %33, 1
  %42 = icmp eq i32 %40, 0
  %43 = icmp slt i32 %28, 10
  %44 = and i1 %43, %42
  %45 = xor i1 %43, %42
  %46 = or i1 %44, %45
  %47 = or i1 %43, %42
  %48 = select i1 %46, i32 -650946237, i32 858843618
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond1:                                        ; preds = %loopEntry
  store i32 %i.1.reg2mem.0, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %cmp2 = icmp slt i32 %i.1.reload.reg2mem.0.i.1.reload.reload, 10
  %49 = select i1 %cmp2, i32 1212372714, i32 -150925541
  br label %loopEntry.backedge

for.body3:                                        ; preds = %loopEntry
  %savedstack = call i8* @llvm.stacksave()
  call void @llvm.lifetime.start(i64 40000, i8* nonnull %2)
  call void @eval_A_times_u(i32 5000, double* nonnull %arraydecay, double* nonnull %vla.i73.sub) #3
  call void @eval_At_times_u(i32 5000, double* nonnull %vla.i73.sub, double* nonnull %arraydecay4) #3
  call void @llvm.lifetime.end(i64 40000, i8* nonnull %2)
  call void @llvm.stackrestore(i8* %savedstack)
  %savedstack71 = call i8* @llvm.stacksave()
  call void @llvm.lifetime.start(i64 40000, i8* nonnull %3)
  call void @eval_A_times_u(i32 5000, double* nonnull %arraydecay4, double* nonnull %vla.i7072.sub) #3
  call void @eval_At_times_u(i32 5000, double* nonnull %vla.i7072.sub, double* nonnull %arraydecay) #3
  call void @llvm.lifetime.end(i64 40000, i8* nonnull %3)
  call void @llvm.stackrestore(i8* %savedstack71)
  %i.1.reload.reg2mem.0.i.1.reload.reload64 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %50 = sub i32 %i.1.reload.reg2mem.0.i.1.reload.reload64, -1870050446
  %51 = add i32 %50, 1
  %52 = add i32 %51, -1870050446
  %inc8 = add nsw i32 %i.1.reload.reg2mem.0.i.1.reload.reload64, 1
  br label %loopEntry.backedge

for.end9:                                         ; preds = %loopEntry
  %53 = load i32, i32* @x.8, align 4
  %54 = load i32, i32* @y.9, align 4
  %55 = sub i32 0, -1
  %56 = sub i32 %53, %55
  %57 = add i32 %53, -1
  %58 = mul i32 %56, %53
  %59 = xor i32 %58, -1
  %60 = xor i32 1, -1
  %61 = xor i32 79179301, -1
  %62 = or i32 %59, %60
  %63 = or i32 79179301, %61
  %64 = xor i32 %62, -1
  %65 = and i32 %64, %63
  %66 = and i32 %58, 1
  %67 = icmp eq i32 %65, 0
  %68 = icmp slt i32 %54, 10
  %69 = xor i1 %68, true
  %70 = xor i1 %67, true
  %71 = xor i1 false, true
  %72 = and i1 %69, false
  %73 = and i1 %68, %71
  %74 = and i1 %70, false
  %75 = and i1 %67, %71
  %76 = or i1 %72, %73
  %77 = or i1 %74, %75
  %78 = xor i1 %76, %77
  %79 = or i1 %69, %70
  %80 = xor i1 %79, true
  %81 = or i1 false, %71
  %82 = and i1 %80, %81
  %83 = or i1 %78, %82
  %84 = or i1 %68, %67
  %85 = select i1 %83, i32 -750708905, i32 -1623321999
  br label %loopEntry.backedge

originalBB49:                                     ; preds = %loopEntry
  %86 = load i32, i32* @x.8, align 4
  %87 = load i32, i32* @y.9, align 4
  %88 = add i32 %86, -548723769
  %89 = add i32 %88, -1
  %90 = sub i32 %89, -548723769
  %91 = add i32 %86, -1
  %92 = mul i32 %90, %86
  %93 = xor i32 1, -1
  %94 = xor i32 %92, %93
  %95 = and i32 %94, %92
  %96 = and i32 %92, 1
  %97 = icmp eq i32 %95, 0
  %98 = icmp slt i32 %87, 10
  %99 = xor i1 %98, true
  %100 = xor i1 %97, true
  %101 = xor i1 true, true
  %102 = and i1 %99, true
  %103 = and i1 %98, %101
  %104 = and i1 %100, true
  %105 = and i1 %97, %101
  %106 = or i1 %102, %103
  %107 = or i1 %104, %105
  %108 = xor i1 %106, %107
  %109 = or i1 %99, %100
  %110 = xor i1 %109, true
  %111 = or i1 true, %101
  %112 = and i1 %110, %111
  %113 = or i1 %108, %112
  %114 = or i1 %98, %97
  %115 = select i1 %113, i32 1949005392, i32 -1623321999
  br label %loopEntry.backedge

originalBBpart251:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond10:                                       ; preds = %loopEntry
  store i32 %i.2.reg2mem.0, i32* %i.2.reload.reg2mem, align 4
  store double %vBv.0.reg2mem.0, double* %vBv.0.reload.reg2mem, align 8
  store double %vv.0.reg2mem.0, double* %vv.0.reload.reg2mem, align 8
  %116 = load i32, i32* @x.8, align 4
  %117 = load i32, i32* @y.9, align 4
  %118 = sub i32 %116, 856197953
  %119 = add i32 %118, -1
  %120 = add i32 %119, 856197953
  %121 = add i32 %116, -1
  %122 = mul i32 %120, %116
  %123 = xor i32 %122, -1
  %124 = xor i32 1, -1
  %125 = xor i32 63992243, -1
  %126 = or i32 %123, %124
  %127 = or i32 63992243, %125
  %128 = xor i32 %126, -1
  %129 = and i32 %128, %127
  %130 = and i32 %122, 1
  %131 = icmp eq i32 %129, 0
  %132 = icmp slt i32 %117, 10
  %133 = xor i1 %132, true
  %134 = xor i1 %131, true
  %135 = xor i1 true, true
  %136 = and i1 %133, true
  %137 = and i1 %132, %135
  %138 = and i1 %134, true
  %139 = and i1 %131, %135
  %140 = or i1 %136, %137
  %141 = or i1 %138, %139
  %142 = xor i1 %140, %141
  %143 = or i1 %133, %134
  %144 = xor i1 %143, true
  %145 = or i1 true, %135
  %146 = and i1 %144, %145
  %147 = or i1 %142, %146
  %148 = or i1 %132, %131
  %149 = select i1 %147, i32 645858800, i32 -1060470307
  br label %loopEntry.backedge

originalBB53:                                     ; preds = %loopEntry
  %i.2.reload.reg2mem.0.i.2.reload.reload = load volatile i32, i32* %i.2.reload.reg2mem, align 4
  %cmp11 = icmp slt i32 %i.2.reload.reg2mem.0.i.2.reload.reload, 5000
  store i1 %cmp11, i1* %cmp11.reg2mem, align 1
  %150 = load i32, i32* @x.8, align 4
  %151 = load i32, i32* @y.9, align 4
  %152 = sub i32 0, -1
  %153 = sub i32 %150, %152
  %154 = add i32 %150, -1
  %155 = mul i32 %153, %150
  %156 = xor i32 1, -1
  %157 = xor i32 %155, %156
  %158 = and i32 %157, %155
  %159 = and i32 %155, 1
  %160 = icmp eq i32 %158, 0
  %161 = icmp slt i32 %151, 10
  %162 = and i1 %161, %160
  %163 = xor i1 %161, %160
  %164 = or i1 %162, %163
  %165 = or i1 %161, %160
  %166 = select i1 %164, i32 665098304, i32 -1060470307
  br label %loopEntry.backedge

originalBBpart255:                                ; preds = %loopEntry
  %cmp11.reg2mem.0.cmp11.reload = load volatile i1, i1* %cmp11.reg2mem, align 1
  %167 = select i1 %cmp11.reg2mem.0.cmp11.reload, i32 941214073, i32 -1662914164
  br label %loopEntry.backedge

for.body12:                                       ; preds = %loopEntry
  %i.2.reload.reg2mem.0.i.2.reload.reload65 = load volatile i32, i32* %i.2.reload.reg2mem, align 4
  %idxprom13 = sext i32 %i.2.reload.reg2mem.0.i.2.reload.reload65 to i64
  %arrayidx14 = getelementptr inbounds [5000 x double], [5000 x double]* %u, i64 0, i64 %idxprom13
  %168 = load double, double* %arrayidx14, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds [5000 x double], [5000 x double]* %v, i64 0, i64 %idxprom13
  %169 = load double, double* %arrayidx16, align 8, !tbaa !1
  %mul = fmul double %168, %169
  %vBv.0.reload.reg2mem.0.vBv.0.reload.reload = load volatile double, double* %vBv.0.reload.reg2mem, align 8
  %add = fadd double %vBv.0.reload.reg2mem.0.vBv.0.reload.reload, %mul
  %mul21 = fmul double %169, %169
  %vv.0.reload.reg2mem.0.vv.0.reload.reload = load volatile double, double* %vv.0.reload.reg2mem, align 8
  %add22 = fadd double %mul21, %vv.0.reload.reg2mem.0.vv.0.reload.reload
  %i.2.reload.reg2mem.0.i.2.reload.reload66 = load volatile i32, i32* %i.2.reload.reg2mem, align 4
  %170 = sub i32 %i.2.reload.reg2mem.0.i.2.reload.reload66, 1309231104
  %171 = add i32 %170, 1
  %172 = add i32 %171, 1309231104
  %inc24 = add nsw i32 %i.2.reload.reg2mem.0.i.2.reload.reload66, 1
  br label %loopEntry.backedge

for.end25:                                        ; preds = %loopEntry
  %vBv.0.reload.reg2mem.0.vBv.0.reload.reload68 = load volatile double, double* %vBv.0.reload.reg2mem, align 8
  %vv.0.reload.reg2mem.0.vv.0.reload.reload69 = load volatile double, double* %vv.0.reload.reg2mem, align 8
  %div = fdiv double %vBv.0.reload.reg2mem.0.vBv.0.reload.reload68, %vv.0.reload.reg2mem.0.vv.0.reload.reload69
  %call26 = call double @sqrt(double %div) #3
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %call26)
  %call28 = call i64 @clock() #3
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %173 = sub i64 0, %call.reg2mem.0.call.reload
  %174 = add i64 %call28, %173
  %sub = sub nsw i64 %call28, %call.reg2mem.0.call.reload
  %conv = sitofp i64 %174 to double
  %div29 = fdiv double %conv, 1.000000e+06
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div29)
  %.reg2mem59.0..reload60 = load volatile i8*, i8** %.reg2mem59, align 8
  call void @llvm.lifetime.end(i64 40000, i8* %.reg2mem59.0..reload60) #3
  %.reg2mem.0..reload = load volatile i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end(i64 40000, i8* %.reg2mem.0..reload) #3
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %callalteredBB = call i64 @clock() #3
  br label %loopEntry.backedge

originalBB49alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB53alteredBB:                            ; preds = %loopEntry
  %i.2.reload.reg2mem.0.i.2.reload.reload67 = load volatile i32, i32* %i.2.reload.reg2mem, align 4
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #4

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
