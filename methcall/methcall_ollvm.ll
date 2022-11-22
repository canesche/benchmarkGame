; ModuleID = 'methcall/methcall.c'
source_filename = "methcall/methcall.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.3 = common local_unnamed_addr global i32 0
@y.4 = common local_unnamed_addr global i32 0
@x.5 = common local_unnamed_addr global i32 0
@y.6 = common local_unnamed_addr global i32 0
@x.7 = common local_unnamed_addr global i32 0
@y.8 = common local_unnamed_addr global i32 0
@x.9 = common local_unnamed_addr global i32 0
@y.10 = common local_unnamed_addr global i32 0
@x.11 = common local_unnamed_addr global i32 0
@y.12 = common local_unnamed_addr global i32 0
@x.13 = common local_unnamed_addr global i32 0
@y.14 = common local_unnamed_addr global i32 0
@x.15 = common local_unnamed_addr global i32 0
@y.16 = common local_unnamed_addr global i32 0

; Function Attrs: norecurse nounwind readonly uwtable
define signext i8 @toggle_value(%struct.Toggle* nocapture readonly %this) #0 {
entry:
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %this, i64 0, i32 0
  %0 = load i8, i8* %state, align 8, !tbaa !1
  ret i8 %0
}

; Function Attrs: norecurse nounwind uwtable
define %struct.Toggle* @toggle_activate(%struct.Toggle* returned %this) #1 {
entry:
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %this, i64 0, i32 0
  %0 = load i8, i8* %state, align 8, !tbaa !1
  %lnot = icmp eq i8 %0, 0
  %conv = zext i1 %lnot to i8
  store i8 %conv, i8* %state, align 8, !tbaa !1
  ret %struct.Toggle* %this
}

; Function Attrs: norecurse nounwind uwtable
define %struct.Toggle* @init_Toggle(%struct.Toggle* returned %this, i8 signext %start_state) local_unnamed_addr #1 {
entry:
  %.reg2mem6 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.5, align 4
  %1 = load i32, i32* @y.6, align 4
  %2 = sub i32 0, -1
  %3 = sub i32 %0, %2
  %4 = add i32 %0, -1
  %5 = mul i32 %3, %0
  %6 = xor i32 %5, -1
  %7 = xor i32 1, -1
  %8 = xor i32 1015668092, -1
  %9 = or i32 %6, %7
  %10 = or i32 1015668092, %8
  %11 = xor i32 %9, -1
  %12 = and i32 %11, %10
  %13 = and i32 %5, 1
  %14 = icmp eq i32 %12, 0
  store i1 %14, i1* %.reg2mem, align 1
  %15 = icmp slt i32 %1, 10
  store i1 %15, i1* %.reg2mem6, align 1
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %this, i64 0, i32 0
  %value = getelementptr inbounds %struct.Toggle, %struct.Toggle* %this, i64 0, i32 1
  %value1 = bitcast {}** %value to i8 (%struct.Toggle*)**
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %this, i64 0, i32 2
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ -2146541966, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 -2146541966, label %first.split
    i32 252869420, label %originalBB.split
    i32 402481840, label %originalBBpart2.split
    i32 514546088, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem6.0..reload7 = load volatile i1, i1* %.reg2mem6, align 1
  %16 = xor i1 %.reg2mem.0..reload, true
  %17 = xor i1 %.reg2mem6.0..reload7, true
  %18 = xor i1 false, true
  %19 = and i1 %16, false
  %20 = and i1 %.reg2mem.0..reload, %18
  %21 = and i1 %17, false
  %22 = and i1 %.reg2mem6.0..reload7, %18
  %23 = or i1 %19, %20
  %24 = or i1 %21, %22
  %25 = xor i1 %23, %24
  %26 = or i1 %16, %17
  %27 = xor i1 %26, true
  %28 = or i1 false, %18
  %29 = and i1 %27, %28
  %30 = or i1 %25, %29
  %31 = or i1 %.reg2mem.0..reload, %.reg2mem6.0..reload7
  %32 = select i1 %30, i32 252869420, i32 514546088
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  store i8 %start_state, i8* %state, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %activate, align 8, !tbaa !7
  %33 = load i32, i32* @x.5, align 4
  %34 = load i32, i32* @y.6, align 4
  %35 = sub i32 0, %33
  %36 = sub i32 0, -1
  %37 = add i32 %35, %36
  %38 = sub i32 0, %37
  %39 = add i32 %33, -1
  %40 = mul i32 %38, %33
  %41 = xor i32 1, -1
  %42 = xor i32 %40, %41
  %43 = and i32 %42, %40
  %44 = and i32 %40, 1
  %45 = icmp eq i32 %43, 0
  %46 = icmp slt i32 %34, 10
  %47 = xor i1 %46, true
  %48 = xor i1 %45, true
  %49 = xor i1 true, true
  %50 = and i1 %47, true
  %51 = and i1 %46, %49
  %52 = and i1 %48, true
  %53 = and i1 %45, %49
  %54 = or i1 %50, %51
  %55 = or i1 %52, %53
  %56 = xor i1 %54, %55
  %57 = or i1 %47, %48
  %58 = xor i1 %57, true
  %59 = or i1 true, %49
  %60 = and i1 %58, %59
  %61 = or i1 %56, %60
  %62 = or i1 %46, %45
  %63 = select i1 %61, i32 402481840, i32 514546088
  br label %loopEntry.outer.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer
  ret %struct.Toggle* %this

originalBBalteredBB.split:                        ; preds = %loopEntry.outer
  store i8 %start_state, i8* %state, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %activate, align 8, !tbaa !7
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %originalBBalteredBB.split, %originalBB.split, %first.split
  %switchVar.0.ph.be = phi i32 [ %32, %first.split ], [ %63, %originalBB.split ], [ 252869420, %originalBBalteredBB.split ]
  br label %loopEntry.outer

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind uwtable
define noalias %struct.Toggle* @new_Toggle(i8 signext %start_state) local_unnamed_addr #2 {
entry:
  %.reg2mem6.i = alloca i1, align 1
  %.reg2mem.i = alloca i1, align 1
  %call = tail call noalias i8* @malloc(i64 24) #5
  %0 = bitcast i8* %call to %struct.Toggle*
  %.reg2mem6.i.0..sroa_cast = bitcast i1* %.reg2mem6.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem6.i.0..sroa_cast)
  %.reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i to i8*
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %1 = load i32, i32* @x.5, align 4
  %2 = load i32, i32* @y.6, align 4
  %3 = add i32 %1, -762518617
  %4 = add i32 %3, -1
  %5 = sub i32 %4, -762518617
  %6 = add i32 %1, -1
  %7 = mul i32 %5, %1
  %8 = xor i32 %7, -1
  %9 = xor i32 1, -1
  %10 = xor i32 -1216763178, -1
  %11 = or i32 %8, %9
  %12 = or i32 -1216763178, %10
  %13 = xor i32 %11, -1
  %14 = and i32 %13, %12
  %15 = and i32 %7, 1
  %16 = icmp eq i32 %14, 0
  store i1 %16, i1* %.reg2mem.i, align 1
  %17 = icmp slt i32 %2, 10
  store i1 %17, i1* %.reg2mem6.i, align 1
  %value.i = getelementptr inbounds i8, i8* %call, i64 8
  %value1.i = bitcast i8* %value.i to i8 (%struct.Toggle*)**
  %activate.i = getelementptr inbounds i8, i8* %call, i64 16
  %18 = bitcast i8* %activate.i to %struct.Toggle* (%struct.Toggle*)**
  %19 = and i1 %17, %16
  %20 = xor i1 %17, %16
  %21 = or i1 %19, %20
  %22 = or i1 %17, %16
  %23 = select i1 %21, i32 402481840, i32 514546088
  br label %loopEntry.outer.i

loopEntry.outer.i:                                ; preds = %loopEntry.outer.i.backedge, %entry
  %switchVar.0.ph.i = phi i32 [ -2146541966, %entry ], [ %switchVar.0.ph.i.be, %loopEntry.outer.i.backedge ]
  switch i32 %switchVar.0.ph.i, label %infloop.i.preheader [
    i32 -2146541966, label %first.split.i
    i32 252869420, label %originalBB.split.i
    i32 402481840, label %init_Toggle.exit
    i32 514546088, label %originalBBalteredBB.split.i
  ]

infloop.i.preheader:                              ; preds = %loopEntry.outer.i
  br label %infloop.i

first.split.i:                                    ; preds = %loopEntry.outer.i
  %.reg2mem.i.0..reg2mem.0..reload.i = load volatile i1, i1* %.reg2mem.i, align 1
  %.reg2mem6.i.0..reg2mem6.0..reload7.i = load volatile i1, i1* %.reg2mem6.i, align 1
  %24 = xor i1 %.reg2mem.i.0..reg2mem.0..reload.i, true
  %25 = xor i1 %.reg2mem6.i.0..reg2mem6.0..reload7.i, true
  %26 = xor i1 true, true
  %27 = and i1 %24, true
  %28 = and i1 %.reg2mem.i.0..reg2mem.0..reload.i, %26
  %29 = and i1 %25, true
  %30 = and i1 %.reg2mem6.i.0..reg2mem6.0..reload7.i, %26
  %31 = or i1 %27, %28
  %32 = or i1 %29, %30
  %33 = xor i1 %31, %32
  %34 = or i1 %24, %25
  %35 = xor i1 %34, true
  %36 = or i1 true, %26
  %37 = and i1 %35, %36
  %38 = or i1 %33, %37
  %39 = or i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem6.i.0..reg2mem6.0..reload7.i
  %40 = select i1 %38, i32 252869420, i32 514546088
  br label %loopEntry.outer.i.backedge

loopEntry.outer.i.backedge:                       ; preds = %first.split.i, %originalBB.split.i, %originalBBalteredBB.split.i
  %switchVar.0.ph.i.be = phi i32 [ %40, %first.split.i ], [ %23, %originalBB.split.i ], [ 252869420, %originalBBalteredBB.split.i ]
  br label %loopEntry.outer.i

originalBB.split.i:                               ; preds = %loopEntry.outer.i
  store i8 %start_state, i8* %call, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1.i, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %18, align 8, !tbaa !7
  br label %loopEntry.outer.i.backedge

originalBBalteredBB.split.i:                      ; preds = %loopEntry.outer.i
  store i8 %start_state, i8* %call, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1.i, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %18, align 8, !tbaa !7
  br label %loopEntry.outer.i.backedge

infloop.i:                                        ; preds = %infloop.i.preheader, %infloop.i
  br label %infloop.i

init_Toggle.exit:                                 ; preds = %loopEntry.outer.i
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  ret %struct.Toggle* %0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* returned %this) #1 {
entry:
  %cmp.reg2mem = alloca i1, align 1
  %counter.reg2mem = alloca i32*, align 8
  %.reg2mem17 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.9, align 4
  %1 = load i32, i32* @y.10, align 4
  %2 = sub i32 %0, 1648178006
  %3 = add i32 %2, -1
  %4 = add i32 %3, 1648178006
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 1911478592, -1
  %10 = or i32 %7, %8
  %11 = or i32 1911478592, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  store i1 %15, i1* %.reg2mem, align 1
  %16 = icmp slt i32 %1, 10
  store i1 %16, i1* %.reg2mem17, align 1
  %counter = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %this, i64 0, i32 4
  %count_max = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %this, i64 0, i32 3
  %state = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %this, i64 0, i32 0
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ 72496463, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 72496463, label %first.split
    i32 -1529229381, label %originalBB.split
    i32 1715585727, label %originalBBpart2.split
    i32 1460652558, label %if.then.split
    i32 -1090203262, label %if.end.split
    i32 1147377594, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem17.0..reload18 = load volatile i1, i1* %.reg2mem17, align 1
  %17 = and i1 %.reg2mem.0..reload, %.reg2mem17.0..reload18
  %18 = xor i1 %.reg2mem.0..reload, %.reg2mem17.0..reload18
  %19 = or i1 %17, %18
  %20 = or i1 %.reg2mem.0..reload, %.reg2mem17.0..reload18
  %21 = select i1 %19, i32 -1529229381, i32 1147377594
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  store i32* %counter, i32** %counter.reg2mem, align 8
  %counter.reg2mem.0.counter.reload20 = load volatile i32*, i32** %counter.reg2mem, align 8
  %22 = load i32, i32* %counter.reg2mem.0.counter.reload20, align 4, !tbaa !8
  %23 = add i32 %22, -1726336744
  %24 = add i32 %23, 1
  %25 = sub i32 %24, -1726336744
  %inc = add nsw i32 %22, 1
  %counter.reg2mem.0.counter.reload19 = load volatile i32*, i32** %counter.reg2mem, align 8
  store i32 %25, i32* %counter.reg2mem.0.counter.reload19, align 4, !tbaa !8
  %26 = load i32, i32* %count_max, align 8, !tbaa !11
  %cmp = icmp sge i32 %25, %26
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %27 = load i32, i32* @x.9, align 4
  %28 = load i32, i32* @y.10, align 4
  %29 = add i32 %27, 1854605967
  %30 = add i32 %29, -1
  %31 = sub i32 %30, 1854605967
  %32 = add i32 %27, -1
  %33 = mul i32 %31, %27
  %34 = xor i32 %33, -1
  %35 = xor i32 1, -1
  %36 = xor i32 -194775856, -1
  %37 = or i32 %34, %35
  %38 = or i32 -194775856, %36
  %39 = xor i32 %37, -1
  %40 = and i32 %39, %38
  %41 = and i32 %33, 1
  %42 = icmp eq i32 %40, 0
  %43 = icmp slt i32 %28, 10
  %44 = and i1 %43, %42
  %45 = xor i1 %43, %42
  %46 = or i1 %44, %45
  %47 = or i1 %43, %42
  %48 = select i1 %46, i32 1715585727, i32 1147377594
  br label %loopEntry.outer.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %49 = select i1 %cmp.reg2mem.0.cmp.reload, i32 1460652558, i32 -1090203262
  br label %loopEntry.outer.backedge

if.then.split:                                    ; preds = %loopEntry.outer
  %50 = load i8, i8* %state, align 8, !tbaa !12
  %lnot = icmp eq i8 %50, 0
  %conv = zext i1 %lnot to i8
  store i8 %conv, i8* %state, align 8, !tbaa !12
  %counter.reg2mem.0.counter.reload = load volatile i32*, i32** %counter.reg2mem, align 8
  store i32 0, i32* %counter.reg2mem.0.counter.reload, align 4, !tbaa !8
  br label %loopEntry.outer.backedge

if.end.split:                                     ; preds = %loopEntry.outer
  ret %struct.NthToggle* %this

originalBBalteredBB.split:                        ; preds = %loopEntry.outer
  %51 = load i32, i32* %counter, align 4, !tbaa !8
  %52 = sub i32 %51, 2085936340
  %53 = add i32 %52, 1
  %54 = add i32 %53, 2085936340
  %incalteredBB = add nsw i32 %51, 1
  store i32 %54, i32* %counter, align 4, !tbaa !8
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %originalBBalteredBB.split, %if.then.split, %originalBBpart2.split, %originalBB.split, %first.split
  %switchVar.0.ph.be = phi i32 [ %21, %first.split ], [ %48, %originalBB.split ], [ %49, %originalBBpart2.split ], [ -1090203262, %if.then.split ], [ -1529229381, %originalBBalteredBB.split ]
  br label %loopEntry.outer

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: norecurse nounwind uwtable
define %struct.NthToggle* @init_NthToggle(%struct.NthToggle* returned %this, i32 %max_count) local_unnamed_addr #1 {
entry:
  %count_max = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %this, i64 0, i32 3
  store i32 %max_count, i32* %count_max, align 8, !tbaa !11
  %counter = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %this, i64 0, i32 4
  store i32 0, i32* %counter, align 4, !tbaa !8
  %activate = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %this, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %activate, align 8, !tbaa !13
  ret %struct.NthToggle* %this
}

; Function Attrs: nounwind uwtable
define %struct.NthToggle* @new_NthToggle(i8 signext %start_state, i32 %max_count) local_unnamed_addr #2 {
entry:
  %.reg2mem6.i9 = alloca i1, align 1
  %.reg2mem.i10 = alloca i1, align 1
  %.reg2mem6.i = alloca i1, align 1
  %.reg2mem.i = alloca i1, align 1
  %call2.reg2mem = alloca %struct.NthToggle*, align 8
  %.reg2mem6 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.13, align 4
  %1 = load i32, i32* @y.14, align 4
  %2 = sub i32 %0, 665343222
  %3 = add i32 %2, -1
  %4 = add i32 %3, 665343222
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 -274897632, -1
  %10 = or i32 %7, %8
  %11 = or i32 -274897632, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  store i1 %15, i1* %.reg2mem, align 1
  %16 = icmp slt i32 %1, 10
  store i1 %16, i1* %.reg2mem6, align 1
  %.reg2mem6.i.0..sroa_cast = bitcast i1* %.reg2mem6.i to i8*
  %.reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i to i8*
  %17 = load i32, i32* @x.5, align 4
  %18 = load i32, i32* @y.6, align 4
  %19 = sub i32 0, -1
  %20 = sub i32 %17, %19
  %21 = add i32 %17, -1
  %22 = mul i32 %20, %17
  %23 = xor i32 1, -1
  %24 = xor i32 %22, %23
  %25 = and i32 %24, %22
  %26 = and i32 %22, 1
  %27 = icmp eq i32 %25, 0
  %28 = icmp slt i32 %18, 10
  %29 = and i1 %28, %27
  %30 = xor i1 %28, %27
  %31 = or i1 %29, %30
  %32 = or i1 %28, %27
  %33 = select i1 %31, i32 402481840, i32 514546088
  %34 = bitcast %struct.NthToggle** %call2.reg2mem to i8**
  %35 = and i1 %16, %15
  %36 = xor i1 %16, %15
  %37 = or i1 %35, %36
  %38 = or i1 %16, %15
  %39 = select i1 %37, i32 1602038367, i32 -1881661386
  %.reg2mem6.i9.0..sroa_cast = bitcast i1* %.reg2mem6.i9 to i8*
  %.reg2mem.i10.0..sroa_cast = bitcast i1* %.reg2mem.i10 to i8*
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ 1004423743, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 1004423743, label %first.split
    i32 -1550255420, label %originalBB.split
    i32 1602038367, label %originalBBpart2.split
    i32 -1881661386, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem6.0..reload7 = load volatile i1, i1* %.reg2mem6, align 1
  %40 = and i1 %.reg2mem.0..reload, %.reg2mem6.0..reload7
  %41 = xor i1 %.reg2mem.0..reload, %.reg2mem6.0..reload7
  %42 = or i1 %40, %41
  %43 = or i1 %.reg2mem.0..reload, %.reg2mem6.0..reload7
  %44 = select i1 %42, i32 -1550255420, i32 -1881661386
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  %call = tail call noalias i8* @malloc(i64 32) #5
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  store i1 %27, i1* %.reg2mem.i, align 1
  store i1 %28, i1* %.reg2mem6.i, align 1
  %value.i = getelementptr inbounds i8, i8* %call, i64 8
  %value1.i = bitcast i8* %value.i to i8 (%struct.Toggle*)**
  %activate.i = getelementptr inbounds i8, i8* %call, i64 16
  %45 = bitcast i8* %activate.i to %struct.Toggle* (%struct.Toggle*)**
  br label %loopEntry.outer.i

loopEntry.outer.i:                                ; preds = %loopEntry.outer.i.backedge, %originalBB.split
  %switchVar.0.ph.i = phi i32 [ -2146541966, %originalBB.split ], [ %switchVar.0.ph.i.be, %loopEntry.outer.i.backedge ]
  switch i32 %switchVar.0.ph.i, label %infloop.i.preheader [
    i32 -2146541966, label %first.split.i
    i32 252869420, label %originalBB.split.i
    i32 402481840, label %init_Toggle.exit
    i32 514546088, label %originalBBalteredBB.split.i
  ]

infloop.i.preheader:                              ; preds = %loopEntry.outer.i
  br label %infloop.i

first.split.i:                                    ; preds = %loopEntry.outer.i
  %.reg2mem.i.0..reg2mem.0..reload.i = load volatile i1, i1* %.reg2mem.i, align 1
  %.reg2mem6.i.0..reg2mem6.0..reload7.i = load volatile i1, i1* %.reg2mem6.i, align 1
  %46 = xor i1 %.reg2mem.i.0..reg2mem.0..reload.i, true
  %47 = xor i1 %.reg2mem6.i.0..reg2mem6.0..reload7.i, true
  %48 = xor i1 true, true
  %49 = and i1 %46, true
  %50 = and i1 %.reg2mem.i.0..reg2mem.0..reload.i, %48
  %51 = and i1 %47, true
  %52 = and i1 %.reg2mem6.i.0..reg2mem6.0..reload7.i, %48
  %53 = or i1 %49, %50
  %54 = or i1 %51, %52
  %55 = xor i1 %53, %54
  %56 = or i1 %46, %47
  %57 = xor i1 %56, true
  %58 = or i1 true, %48
  %59 = and i1 %57, %58
  %60 = or i1 %55, %59
  %61 = or i1 %.reg2mem.i.0..reg2mem.0..reload.i, %.reg2mem6.i.0..reg2mem6.0..reload7.i
  %62 = select i1 %60, i32 252869420, i32 514546088
  br label %loopEntry.outer.i.backedge

loopEntry.outer.i.backedge:                       ; preds = %first.split.i, %originalBB.split.i, %originalBBalteredBB.split.i
  %switchVar.0.ph.i.be = phi i32 [ %62, %first.split.i ], [ %33, %originalBB.split.i ], [ 252869420, %originalBBalteredBB.split.i ]
  br label %loopEntry.outer.i

originalBB.split.i:                               ; preds = %loopEntry.outer.i
  store i8 %start_state, i8* %call, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1.i, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %45, align 8, !tbaa !7
  br label %loopEntry.outer.i.backedge

originalBBalteredBB.split.i:                      ; preds = %loopEntry.outer.i
  store i8 %start_state, i8* %call, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1.i, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %45, align 8, !tbaa !7
  br label %loopEntry.outer.i.backedge

infloop.i:                                        ; preds = %infloop.i.preheader, %infloop.i
  br label %infloop.i

init_Toggle.exit:                                 ; preds = %loopEntry.outer.i
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.0..sroa_cast)
  %count_max.i24 = getelementptr inbounds i8, i8* %call, i64 24
  %63 = bitcast i8* %count_max.i24 to i32*
  store i32 %max_count, i32* %63, align 8, !tbaa !11
  %counter.i25 = getelementptr inbounds i8, i8* %call, i64 28
  %64 = bitcast i8* %counter.i25 to i32*
  store i32 0, i32* %64, align 4, !tbaa !8
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %45, align 8, !tbaa !13
  store i8* %call, i8** %34, align 8
  br label %loopEntry.outer.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer
  %call2.reg2mem.0.call2.reload = load volatile %struct.NthToggle*, %struct.NthToggle** %call2.reg2mem, align 8
  ret %struct.NthToggle* %call2.reg2mem.0.call2.reload

originalBBalteredBB.split:                        ; preds = %loopEntry.outer
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem6.i9.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i10.0..sroa_cast)
  store i1 %27, i1* %.reg2mem.i10, align 1
  store i1 %28, i1* %.reg2mem6.i9, align 1
  br label %loopEntry.outer.i16

loopEntry.outer.i16:                              ; preds = %loopEntry.outer.i16.backedge, %originalBBalteredBB.split
  %switchVar.0.ph.i15 = phi i32 [ -2146541966, %originalBBalteredBB.split ], [ %switchVar.0.ph.i15.be, %loopEntry.outer.i16.backedge ]
  switch i32 %switchVar.0.ph.i15, label %infloop.i22.preheader [
    i32 -2146541966, label %first.split.i19
    i32 252869420, label %originalBB.split.i20
    i32 402481840, label %init_Toggle.exit23
    i32 514546088, label %loopEntry.outer.i16.backedge
  ]

infloop.i22.preheader:                            ; preds = %loopEntry.outer.i16
  br label %infloop.i22

first.split.i19:                                  ; preds = %loopEntry.outer.i16
  %.reg2mem.i10.0..reg2mem.0..reload.i17 = load volatile i1, i1* %.reg2mem.i10, align 1
  %.reg2mem6.i9.0..reg2mem6.0..reload7.i18 = load volatile i1, i1* %.reg2mem6.i9, align 1
  %65 = and i1 %.reg2mem.i10.0..reg2mem.0..reload.i17, %.reg2mem6.i9.0..reg2mem6.0..reload7.i18
  %66 = xor i1 %.reg2mem.i10.0..reg2mem.0..reload.i17, %.reg2mem6.i9.0..reg2mem6.0..reload7.i18
  %67 = or i1 %65, %66
  %68 = or i1 %.reg2mem.i10.0..reg2mem.0..reload.i17, %.reg2mem6.i9.0..reg2mem6.0..reload7.i18
  %69 = select i1 %67, i32 252869420, i32 514546088
  br label %loopEntry.outer.i16.backedge

loopEntry.outer.i16.backedge:                     ; preds = %first.split.i19, %originalBB.split.i20, %loopEntry.outer.i16
  %switchVar.0.ph.i15.be = phi i32 [ %69, %first.split.i19 ], [ %33, %originalBB.split.i20 ], [ 252869420, %loopEntry.outer.i16 ]
  br label %loopEntry.outer.i16

originalBB.split.i20:                             ; preds = %loopEntry.outer.i16
  br label %loopEntry.outer.i16.backedge

infloop.i22:                                      ; preds = %infloop.i22.preheader, %infloop.i22
  br label %infloop.i22

init_Toggle.exit23:                               ; preds = %loopEntry.outer.i16
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem6.i9.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i10.0..sroa_cast)
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %init_Toggle.exit23, %init_Toggle.exit, %first.split
  %switchVar.0.ph.be = phi i32 [ %44, %first.split ], [ %39, %init_Toggle.exit ], [ -1550255420, %init_Toggle.exit23 ]
  br label %loopEntry.outer

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #2 {
entry:
  %.reg2mem6.i.i54 = alloca i1, align 1
  %.reg2mem.i.i55 = alloca i1, align 1
  %.reg2mem6.i.i = alloca i1, align 1
  %.reg2mem.i.i = alloca i1, align 1
  %val.1.reload.reg2mem = alloca i8, align 1
  %i.1.reload.reg2mem = alloca i32, align 4
  %val.0.reload.reg2mem = alloca i8, align 1
  %i.0.reload.reg2mem = alloca i32, align 4
  %call6.reg2mem = alloca %struct.NthToggle*, align 8
  %call1.reg2mem = alloca %struct.Toggle*, align 8
  %call.reg2mem = alloca i64, align 8
  %.reg2mem45 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.15, align 4
  %1 = load i32, i32* @y.16, align 4
  %2 = sub i32 0, %0
  %3 = sub i32 0, -1
  %4 = add i32 %2, %3
  %5 = sub i32 0, %4
  %6 = add i32 %0, -1
  %7 = mul i32 %5, %0
  %8 = xor i32 1, -1
  %9 = xor i32 %7, %8
  %10 = and i32 %9, %7
  %11 = and i32 %7, 1
  %12 = icmp eq i32 %10, 0
  store i1 %12, i1* %.reg2mem, align 1
  %13 = icmp slt i32 %1, 10
  store i1 %13, i1* %.reg2mem45, align 1
  %.reg2mem6.i.i.0..reg2mem6.i.0..sroa_cast = bitcast i1* %.reg2mem6.i.i to i8*
  %.reg2mem.i.i.0..reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i.i to i8*
  %14 = bitcast %struct.Toggle** %call1.reg2mem to i8**
  %.reg2mem6.i.i54.0..reg2mem6.i.0..sroa_cast = bitcast i1* %.reg2mem6.i.i54 to i8*
  %.reg2mem.i.i55.0..reg2mem.i.0..sroa_cast = bitcast i1* %.reg2mem.i.i55 to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %i.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.1.reg2mem.0.be, %loopEntry.backedge ]
  %val.1.reg2mem.0 = phi i8 [ undef, %entry ], [ %val.1.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %val.0.reg2mem.0 = phi i8 [ undef, %entry ], [ %val.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -138091102, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -138091102, label %first
    i32 1198149612, label %originalBB
    i32 -1533593612, label %originalBBpart2
    i32 -576430176, label %for.cond
    i32 1565663839, label %for.body
    i32 -350928653, label %for.end
    i32 -1537644866, label %for.cond7
    i32 -1847008885, label %for.body10
    i32 1505009429, label %for.end18
    i32 -1667900080, label %originalBBalteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %new_Toggle.exit70, %for.body10, %for.cond7, %for.end, %for.body, %for.cond, %originalBBpart2, %new_Toggle.exit, %first
  %i.1.reg2mem.0.be = phi i32 [ %i.1.reg2mem.0, %new_Toggle.exit70 ], [ %104, %for.body10 ], [ %i.1.reg2mem.0, %for.cond7 ], [ 0, %for.end ], [ %i.1.reg2mem.0, %for.body ], [ %i.1.reg2mem.0, %for.cond ], [ %i.1.reg2mem.0, %originalBBpart2 ], [ %i.1.reg2mem.0, %new_Toggle.exit ], [ %i.1.reg2mem.0, %first ], [ %i.1.reg2mem.0, %loopEntry ]
  %val.1.reg2mem.0.be = phi i8 [ %val.1.reg2mem.0, %new_Toggle.exit70 ], [ %call15, %for.body10 ], [ %val.1.reg2mem.0, %for.cond7 ], [ 1, %for.end ], [ %val.1.reg2mem.0, %for.body ], [ %val.1.reg2mem.0, %for.cond ], [ %val.1.reg2mem.0, %originalBBpart2 ], [ %val.1.reg2mem.0, %new_Toggle.exit ], [ %val.1.reg2mem.0, %first ], [ %val.1.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %new_Toggle.exit70 ], [ %i.0.reg2mem.0, %for.body10 ], [ %i.0.reg2mem.0, %for.cond7 ], [ %i.0.reg2mem.0, %for.end ], [ %96, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ 0, %originalBBpart2 ], [ %i.0.reg2mem.0, %new_Toggle.exit ], [ %i.0.reg2mem.0, %first ], [ %i.0.reg2mem.0, %loopEntry ]
  %val.0.reg2mem.0.be = phi i8 [ %val.0.reg2mem.0, %new_Toggle.exit70 ], [ %val.0.reg2mem.0, %for.body10 ], [ %val.0.reg2mem.0, %for.cond7 ], [ %val.0.reg2mem.0, %for.end ], [ %call4, %for.body ], [ %val.0.reg2mem.0, %for.cond ], [ 1, %originalBBpart2 ], [ %val.0.reg2mem.0, %new_Toggle.exit ], [ %val.0.reg2mem.0, %first ], [ %val.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1198149612, %new_Toggle.exit70 ], [ -1537644866, %for.body10 ], [ %98, %for.cond7 ], [ -1537644866, %for.end ], [ -576430176, %for.body ], [ %90, %for.cond ], [ -576430176, %originalBBpart2 ], [ %89, %new_Toggle.exit ], [ %31, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem45.0..reload46 = load volatile i1, i1* %.reg2mem45, align 1
  %15 = xor i1 %.reg2mem.0..reload, true
  %16 = xor i1 %.reg2mem45.0..reload46, true
  %17 = xor i1 true, true
  %18 = and i1 %15, true
  %19 = and i1 %.reg2mem.0..reload, %17
  %20 = and i1 %16, true
  %21 = and i1 %.reg2mem45.0..reload46, %17
  %22 = or i1 %18, %19
  %23 = or i1 %20, %21
  %24 = xor i1 %22, %23
  %25 = or i1 %15, %16
  %26 = xor i1 %25, true
  %27 = or i1 true, %17
  %28 = and i1 %26, %27
  %29 = or i1 %24, %28
  %30 = or i1 %.reg2mem.0..reload, %.reg2mem45.0..reload46
  %31 = select i1 %29, i32 1198149612, i32 -1667900080
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %call = tail call i64 @clock() #5
  store i64 %call, i64* %call.reg2mem, align 8
  %call.i = tail call noalias i8* @malloc(i64 24) #5
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem6.i.i.0..reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.i.0..reg2mem.i.0..sroa_cast)
  %32 = load i32, i32* @x.5, align 4
  %33 = load i32, i32* @y.6, align 4
  %34 = sub i32 %32, 465990898
  %35 = add i32 %34, -1
  %36 = add i32 %35, 465990898
  %37 = add i32 %32, -1
  %38 = mul i32 %36, %32
  %39 = xor i32 1, -1
  %40 = xor i32 %38, %39
  %41 = and i32 %40, %38
  %42 = and i32 %38, 1
  %43 = icmp eq i32 %41, 0
  store i1 %43, i1* %.reg2mem.i.i, align 1
  %44 = icmp slt i32 %33, 10
  store i1 %44, i1* %.reg2mem6.i.i, align 1
  %value.i.i = getelementptr inbounds i8, i8* %call.i, i64 8
  %value1.i.i = bitcast i8* %value.i.i to i8 (%struct.Toggle*)**
  %activate.i.i = getelementptr inbounds i8, i8* %call.i, i64 16
  %45 = bitcast i8* %activate.i.i to %struct.Toggle* (%struct.Toggle*)**
  %46 = and i1 %44, %43
  %47 = xor i1 %44, %43
  %48 = or i1 %46, %47
  %49 = or i1 %44, %43
  %50 = select i1 %48, i32 402481840, i32 514546088
  br label %loopEntry.outer.i.i

loopEntry.outer.i.i:                              ; preds = %loopEntry.outer.i.i.backedge, %originalBB
  %switchVar.0.ph.i.i = phi i32 [ -2146541966, %originalBB ], [ %switchVar.0.ph.i.i.be, %loopEntry.outer.i.i.backedge ]
  switch i32 %switchVar.0.ph.i.i, label %infloop.i.i.preheader [
    i32 -2146541966, label %first.split.i.i
    i32 252869420, label %originalBB.split.i.i
    i32 402481840, label %new_Toggle.exit
    i32 514546088, label %originalBBalteredBB.split.i.i
  ]

infloop.i.i.preheader:                            ; preds = %loopEntry.outer.i.i
  br label %infloop.i.i

first.split.i.i:                                  ; preds = %loopEntry.outer.i.i
  %.reg2mem.i.i.0..reg2mem.i.0..reg2mem.0..reload.i.i = load volatile i1, i1* %.reg2mem.i.i, align 1
  %.reg2mem6.i.i.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i = load volatile i1, i1* %.reg2mem6.i.i, align 1
  %51 = and i1 %.reg2mem.i.i.0..reg2mem.i.0..reg2mem.0..reload.i.i, %.reg2mem6.i.i.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i
  %52 = xor i1 %.reg2mem.i.i.0..reg2mem.i.0..reg2mem.0..reload.i.i, %.reg2mem6.i.i.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i
  %53 = or i1 %51, %52
  %54 = or i1 %.reg2mem.i.i.0..reg2mem.i.0..reg2mem.0..reload.i.i, %.reg2mem6.i.i.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i
  %55 = select i1 %53, i32 252869420, i32 514546088
  br label %loopEntry.outer.i.i.backedge

loopEntry.outer.i.i.backedge:                     ; preds = %first.split.i.i, %originalBB.split.i.i, %originalBBalteredBB.split.i.i
  %switchVar.0.ph.i.i.be = phi i32 [ %55, %first.split.i.i ], [ %50, %originalBB.split.i.i ], [ 252869420, %originalBBalteredBB.split.i.i ]
  br label %loopEntry.outer.i.i

originalBB.split.i.i:                             ; preds = %loopEntry.outer.i.i
  store i8 1, i8* %call.i, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1.i.i, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %45, align 8, !tbaa !7
  br label %loopEntry.outer.i.i.backedge

originalBBalteredBB.split.i.i:                    ; preds = %loopEntry.outer.i.i
  store i8 1, i8* %call.i, align 8, !tbaa !1
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1.i.i, align 8, !tbaa !6
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %45, align 8, !tbaa !7
  br label %loopEntry.outer.i.i.backedge

infloop.i.i:                                      ; preds = %infloop.i.i.preheader, %infloop.i.i
  br label %infloop.i.i

new_Toggle.exit:                                  ; preds = %loopEntry.outer.i.i
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem6.i.i.0..reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.i.0..reg2mem.i.0..sroa_cast)
  store i8* %call.i, i8** %14, align 8
  %56 = load i32, i32* @x.15, align 4
  %57 = load i32, i32* @y.16, align 4
  %58 = add i32 %56, 293129866
  %59 = add i32 %58, -1
  %60 = sub i32 %59, 293129866
  %61 = add i32 %56, -1
  %62 = mul i32 %60, %56
  %63 = xor i32 %62, -1
  %64 = xor i32 1, -1
  %65 = xor i32 1332350135, -1
  %66 = or i32 %63, %64
  %67 = or i32 1332350135, %65
  %68 = xor i32 %66, -1
  %69 = and i32 %68, %67
  %70 = and i32 %62, 1
  %71 = icmp eq i32 %69, 0
  %72 = icmp slt i32 %57, 10
  %73 = xor i1 %72, true
  %74 = xor i1 %71, true
  %75 = xor i1 true, true
  %76 = and i1 %73, true
  %77 = and i1 %72, %75
  %78 = and i1 %74, true
  %79 = and i1 %71, %75
  %80 = or i1 %76, %77
  %81 = or i1 %78, %79
  %82 = xor i1 %80, %81
  %83 = or i1 %73, %74
  %84 = xor i1 %83, true
  %85 = or i1 true, %75
  %86 = and i1 %84, %85
  %87 = or i1 %82, %86
  %88 = or i1 %72, %71
  %89 = select i1 %87, i32 -1533593612, i32 -1667900080
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  store i8 %val.0.reg2mem.0, i8* %val.0.reload.reg2mem, align 1
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 500000000
  %90 = select i1 %cmp, i32 1565663839, i32 -350928653
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload = load volatile %struct.Toggle*, %struct.Toggle** %call1.reg2mem, align 8
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call1.reg2mem.0.call1.reload, i64 0, i32 2
  %91 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %activate, align 8, !tbaa !7
  %call1.reg2mem.0.call1.reload47 = load volatile %struct.Toggle*, %struct.Toggle** %call1.reg2mem, align 8
  %call2 = tail call %struct.Toggle* %91(%struct.Toggle* %call1.reg2mem.0.call1.reload47) #5
  %value = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call2, i64 0, i32 1
  %value3 = bitcast {}** %value to i8 (%struct.Toggle*)**
  %92 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %value3, align 8, !tbaa !6
  %call1.reg2mem.0.call1.reload48 = load volatile %struct.Toggle*, %struct.Toggle** %call1.reg2mem, align 8
  %call4 = tail call signext i8 %92(%struct.Toggle* %call1.reg2mem.0.call1.reload48) #5
  %i.0.reload.reg2mem.0.i.0.reload.reload52 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %93 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload52
  %94 = sub i32 0, 1
  %95 = add i32 %93, %94
  %96 = sub i32 0, %95
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload52, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %val.0.reload.reg2mem.0.val.0.reload.reload = load volatile i8, i8* %val.0.reload.reg2mem, align 1
  %tobool = icmp ne i8 %val.0.reload.reg2mem.0.val.0.reload.reload, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %call5 = tail call i32 @puts(i8* %cond)
  %call1.reg2mem.0.call1.reload49 = load volatile %struct.Toggle*, %struct.Toggle** %call1.reg2mem, align 8
  %97 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call1.reg2mem.0.call1.reload49, i64 0, i32 0
  tail call void @free(i8* %97) #5
  %call6 = tail call %struct.NthToggle* @new_NthToggle(i8 signext 1, i32 3)
  store %struct.NthToggle* %call6, %struct.NthToggle** %call6.reg2mem, align 8
  br label %loopEntry.backedge

for.cond7:                                        ; preds = %loopEntry
  store i32 %i.1.reg2mem.0, i32* %i.1.reload.reg2mem, align 4
  store i8 %val.1.reg2mem.0, i8* %val.1.reload.reg2mem, align 1
  %i.1.reload.reg2mem.0.i.1.reload.reload = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %cmp8 = icmp slt i32 %i.1.reload.reg2mem.0.i.1.reload.reload, 500000000
  %98 = select i1 %cmp8, i32 -1847008885, i32 1505009429
  br label %loopEntry.backedge

for.body10:                                       ; preds = %loopEntry
  %call6.reg2mem.0.call6.reload = load volatile %struct.NthToggle*, %struct.NthToggle** %call6.reg2mem, align 8
  %activate11 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %call6.reg2mem.0.call6.reload, i64 0, i32 2
  %99 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %activate11, align 8, !tbaa !13
  %call6.reg2mem.0.call6.reload50 = load volatile %struct.NthToggle*, %struct.NthToggle** %call6.reg2mem, align 8
  %100 = bitcast %struct.NthToggle* %call6.reg2mem.0.call6.reload50 to %struct.Toggle*
  %call12 = tail call %struct.Toggle* %99(%struct.Toggle* %100) #5
  %value13 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call12, i64 0, i32 1
  %value14 = bitcast {}** %value13 to i8 (%struct.Toggle*)**
  %101 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %value14, align 8, !tbaa !6
  %call15 = tail call signext i8 %101(%struct.Toggle* %100) #5
  %i.1.reload.reg2mem.0.i.1.reload.reload53 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %102 = sub i32 %i.1.reload.reg2mem.0.i.1.reload.reload53, -1556506495
  %103 = add i32 %102, 1
  %104 = add i32 %103, -1556506495
  %inc17 = add nsw i32 %i.1.reload.reg2mem.0.i.1.reload.reload53, 1
  br label %loopEntry.backedge

for.end18:                                        ; preds = %loopEntry
  %val.1.reload.reg2mem.0.val.1.reload.reload = load volatile i8, i8* %val.1.reload.reg2mem, align 1
  %tobool20 = icmp ne i8 %val.1.reload.reg2mem.0.val.1.reload.reload, 0
  %cond21 = select i1 %tobool20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %call22 = tail call i32 @puts(i8* %cond21)
  %call23 = tail call i64 @clock() #5
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %105 = sub i64 %call23, 5192320238177688149
  %106 = sub i64 %105, %call.reg2mem.0.call.reload
  %107 = add i64 %106, 5192320238177688149
  %sub = sub nsw i64 %call23, %call.reg2mem.0.call.reload
  %conv24 = sitofp i64 %107 to double
  %div = fdiv double %conv24, 1.000000e+06
  %call25 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double %div)
  %call6.reg2mem.0.call6.reload51 = load volatile %struct.NthToggle*, %struct.NthToggle** %call6.reg2mem, align 8
  %108 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %call6.reg2mem.0.call6.reload51, i64 0, i32 0
  tail call void @free(i8* %108) #5
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %callalteredBB = tail call i64 @clock() #5
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem6.i.i54.0..reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %.reg2mem.i.i55.0..reg2mem.i.0..sroa_cast)
  %109 = load i32, i32* @x.5, align 4
  %110 = load i32, i32* @y.6, align 4
  %111 = sub i32 0, -1
  %112 = sub i32 %109, %111
  %113 = add i32 %109, -1
  %114 = mul i32 %112, %109
  %115 = xor i32 %114, -1
  %116 = xor i32 1, -1
  %117 = xor i32 2103042569, -1
  %118 = or i32 %115, %116
  %119 = or i32 2103042569, %117
  %120 = xor i32 %118, -1
  %121 = and i32 %120, %119
  %122 = and i32 %114, 1
  %123 = icmp eq i32 %121, 0
  store i1 %123, i1* %.reg2mem.i.i55, align 1
  %124 = icmp slt i32 %110, 10
  store i1 %124, i1* %.reg2mem6.i.i54, align 1
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
  %141 = select i1 %139, i32 402481840, i32 514546088
  br label %loopEntry.outer.i.i63

loopEntry.outer.i.i63:                            ; preds = %loopEntry.outer.i.i63.backedge, %originalBBalteredBB
  %switchVar.0.ph.i.i62 = phi i32 [ -2146541966, %originalBBalteredBB ], [ %switchVar.0.ph.i.i62.be, %loopEntry.outer.i.i63.backedge ]
  switch i32 %switchVar.0.ph.i.i62, label %infloop.i.i69.preheader [
    i32 -2146541966, label %first.split.i.i66
    i32 252869420, label %loopEntry.outer.i.i63.backedge
    i32 402481840, label %new_Toggle.exit70
    i32 514546088, label %originalBBalteredBB.split.i.i68
  ]

infloop.i.i69.preheader:                          ; preds = %loopEntry.outer.i.i63
  br label %infloop.i.i69

first.split.i.i66:                                ; preds = %loopEntry.outer.i.i63
  %.reg2mem.i.i55.0..reg2mem.i.0..reg2mem.0..reload.i.i64 = load volatile i1, i1* %.reg2mem.i.i55, align 1
  %.reg2mem6.i.i54.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i65 = load volatile i1, i1* %.reg2mem6.i.i54, align 1
  %142 = xor i1 %.reg2mem.i.i55.0..reg2mem.i.0..reg2mem.0..reload.i.i64, true
  %143 = xor i1 %.reg2mem6.i.i54.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i65, true
  %144 = xor i1 true, true
  %145 = and i1 %142, true
  %146 = and i1 %.reg2mem.i.i55.0..reg2mem.i.0..reg2mem.0..reload.i.i64, %144
  %147 = and i1 %143, true
  %148 = and i1 %.reg2mem6.i.i54.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i65, %144
  %149 = or i1 %145, %146
  %150 = or i1 %147, %148
  %151 = xor i1 %149, %150
  %152 = or i1 %142, %143
  %153 = xor i1 %152, true
  %154 = or i1 true, %144
  %155 = and i1 %153, %154
  %156 = or i1 %151, %155
  %157 = or i1 %.reg2mem.i.i55.0..reg2mem.i.0..reg2mem.0..reload.i.i64, %.reg2mem6.i.i54.0..reg2mem6.i.0..reg2mem6.0..reload7.i.i65
  %158 = select i1 %156, i32 252869420, i32 514546088
  br label %loopEntry.outer.i.i63.backedge

loopEntry.outer.i.i63.backedge:                   ; preds = %first.split.i.i66, %originalBBalteredBB.split.i.i68, %loopEntry.outer.i.i63
  %switchVar.0.ph.i.i62.be = phi i32 [ %158, %first.split.i.i66 ], [ 252869420, %originalBBalteredBB.split.i.i68 ], [ %141, %loopEntry.outer.i.i63 ]
  br label %loopEntry.outer.i.i63

originalBBalteredBB.split.i.i68:                  ; preds = %loopEntry.outer.i.i63
  br label %loopEntry.outer.i.i63.backedge

infloop.i.i69:                                    ; preds = %infloop.i.i69.preheader, %infloop.i.i69
  br label %infloop.i.i69

new_Toggle.exit70:                                ; preds = %loopEntry.outer.i.i63
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem6.i.i54.0..reg2mem6.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %.reg2mem.i.i55.0..reg2mem.i.0..sroa_cast)
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"Toggle", !3, i64 0, !5, i64 8, !5, i64 16}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"any pointer", !3, i64 0}
!6 = !{!2, !5, i64 8}
!7 = !{!2, !5, i64 16}
!8 = !{!9, !10, i64 28}
!9 = !{!"NthToggle", !3, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !10, i64 28}
!10 = !{!"int", !3, i64 0}
!11 = !{!9, !10, i64 24}
!12 = !{!9, !3, i64 0}
!13 = !{!9, !5, i64 16}
