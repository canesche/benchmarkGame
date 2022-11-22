; ModuleID = 'lists/lists.c'
source_filename = "lists/lists.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DLL = type { i32, %struct.DLL*, %struct.DLL* }

@.str = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i:%3d  v:%3d  n:%3d  p:%3d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[val of next of tail is:  %d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"li1 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"last value wrong, wanted %d, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"li2 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"li1 size wrong, wanted %d, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.14 = common local_unnamed_addr global i32 0
@y.15 = common local_unnamed_addr global i32 0
@x.16 = common local_unnamed_addr global i32 0
@y.17 = common local_unnamed_addr global i32 0
@x.18 = common local_unnamed_addr global i32 0
@y.19 = common local_unnamed_addr global i32 0
@x.20 = common local_unnamed_addr global i32 0
@y.21 = common local_unnamed_addr global i32 0
@x.22 = common local_unnamed_addr global i32 0
@y.23 = common local_unnamed_addr global i32 0
@x.24 = common local_unnamed_addr global i32 0
@y.25 = common local_unnamed_addr global i32 0
@x.26 = common local_unnamed_addr global i32 0
@y.27 = common local_unnamed_addr global i32 0
@x.28 = common local_unnamed_addr global i32 0
@y.29 = common local_unnamed_addr global i32 0
@x.30 = common local_unnamed_addr global i32 0
@y.31 = common local_unnamed_addr global i32 0
@x.32 = common local_unnamed_addr global i32 0
@y.33 = common local_unnamed_addr global i32 0
@x.34 = common local_unnamed_addr global i32 0
@y.35 = common local_unnamed_addr global i32 0
@x.36 = common local_unnamed_addr global i32 0
@y.37 = common local_unnamed_addr global i32 0
@x.38 = common local_unnamed_addr global i32 0
@y.39 = common local_unnamed_addr global i32 0
@x.40 = common local_unnamed_addr global i32 0
@y.41 = common local_unnamed_addr global i32 0
@x.42 = common local_unnamed_addr global i32 0
@y.43 = common local_unnamed_addr global i32 0
@str.44 = private unnamed_addr constant [33 x i8] c"[last entry points to list head]\00"
@str.45 = private unnamed_addr constant [26 x i8] c"li1 and li2 are not equal\00"
@str.46 = private unnamed_addr constant [24 x i8] c"li3 should be empty now\00"
@str.47 = private unnamed_addr constant [24 x i8] c"li2 should be empty now\00"
@str.48 = private unnamed_addr constant [26 x i8] c"li2 and li1 are not equal\00"

; Function Attrs: norecurse nounwind uwtable
define void @list_push_tail(%struct.DLL* %head, %struct.DLL* %item) local_unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %head, i64 0, i32 2
  %0 = load %struct.DLL*, %struct.DLL** %prev, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  store %struct.DLL* %item, %struct.DLL** %next, align 8, !tbaa !7
  %next1 = getelementptr inbounds %struct.DLL, %struct.DLL* %item, i64 0, i32 1
  store %struct.DLL* %head, %struct.DLL** %next1, align 8, !tbaa !7
  store %struct.DLL* %item, %struct.DLL** %prev, align 8, !tbaa !1
  %prev3 = getelementptr inbounds %struct.DLL, %struct.DLL* %item, i64 0, i32 2
  store %struct.DLL* %0, %struct.DLL** %prev3, align 8, !tbaa !1
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %head, i64 0, i32 0
  %1 = load i32, i32* %val, align 8, !tbaa !8
  %2 = add i32 %1, -498879046
  %3 = add i32 %2, 1
  %4 = sub i32 %3, -498879046
  %inc = add nsw i32 %1, 1
  store i32 %4, i32* %val, align 8, !tbaa !8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define %struct.DLL* @list_pop_tail(%struct.DLL* %head) local_unnamed_addr #0 {
entry:
  %call.reg2mem = alloca i32, align 4
  %head.idx = getelementptr %struct.DLL, %struct.DLL* %head, i64 0, i32 0
  %head.idx.val = load i32, i32* %head.idx, align 8, !tbaa !8
  %cmp.i = icmp eq i32 %head.idx.val, 0
  %conv.i = zext i1 %cmp.i to i32
  store i32 %conv.i, i32* %call.reg2mem, align 4
  %prev1 = getelementptr inbounds %struct.DLL, %struct.DLL* %head, i64 0, i32 2
  br label %loopEntry.outer.outer

loopEntry.outer.outer:                            ; preds = %if.end.split, %entry
  %.ph = phi i32 [ %37, %if.end.split ], [ %head.idx.val, %entry ]
  %retval.0.reg2mem.0.ph.ph = phi %struct.DLL* [ %33, %if.end.split ], [ undef, %entry ]
  %switchVar.0.ph.ph = phi i32 [ 970493121, %if.end.split ], [ -436574882, %entry ]
  %0 = load i32, i32* @x.14, align 4
  %1 = load i32, i32* @y.15, align 4
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
  %13 = icmp slt i32 %1, 10
  %14 = xor i1 %13, true
  %15 = xor i1 %12, true
  %16 = xor i1 false, true
  %17 = and i1 %14, false
  %18 = and i1 %13, %16
  %19 = and i1 %15, false
  %20 = and i1 %12, %16
  %21 = or i1 %17, %18
  %22 = or i1 %19, %20
  %23 = xor i1 %21, %22
  %24 = or i1 %14, %15
  %25 = xor i1 %24, true
  %26 = or i1 false, %16
  %27 = and i1 %25, %26
  %28 = or i1 %23, %27
  %29 = or i1 %13, %12
  %30 = select i1 %28, i32 16181237, i32 -2042769353
  %31 = select i1 %28, i32 -1934033342, i32 -2042769353
  br label %loopEntry.outer

loopEntry.outer.loopexit:                         ; preds = %loopEntry.outer14
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.loopexit, %loopEntry.outer.outer
  %retval.0.reg2mem.0.ph = phi %struct.DLL* [ %retval.0.reg2mem.0.ph.ph, %loopEntry.outer.outer ], [ null, %loopEntry.outer.loopexit ]
  %switchVar.0.ph = phi i32 [ %switchVar.0.ph.ph, %loopEntry.outer.outer ], [ 970493121, %loopEntry.outer.loopexit ]
  br label %loopEntry.outer14

loopEntry.outer14:                                ; preds = %loopEntry.outer14.backedge, %loopEntry.outer
  %switchVar.0.ph15 = phi i32 [ %switchVar.0.ph, %loopEntry.outer ], [ %switchVar.0.ph15.be, %loopEntry.outer14.backedge ]
  switch i32 %switchVar.0.ph15, label %infloop.preheader [
    i32 -436574882, label %first.split
    i32 1560280838, label %loopEntry.outer14.backedge
    i32 16181237, label %originalBB.split
    i32 -1934033342, label %loopEntry.outer.loopexit
    i32 -899647976, label %if.end.split
    i32 970493121, label %cleanup
    i32 -2042769353, label %originalBBalteredBB
  ]

loopEntry.outer14.backedge:                       ; preds = %loopEntry.outer14, %originalBBalteredBB, %originalBB.split, %first.split
  %switchVar.0.ph15.be = phi i32 [ %32, %first.split ], [ %31, %originalBB.split ], [ 16181237, %originalBBalteredBB ], [ %30, %loopEntry.outer14 ]
  br label %loopEntry.outer14

infloop.preheader:                                ; preds = %loopEntry.outer14
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer14
  %call.reg2mem.0.call.reload = load volatile i32, i32* %call.reg2mem, align 4
  %tobool = icmp ne i32 %call.reg2mem.0.call.reload, 0
  %32 = select i1 %tobool, i32 1560280838, i32 -899647976
  br label %loopEntry.outer14.backedge

originalBB.split:                                 ; preds = %loopEntry.outer14
  br label %loopEntry.outer14.backedge

if.end.split:                                     ; preds = %loopEntry.outer14
  %33 = load %struct.DLL*, %struct.DLL** %prev1, align 8, !tbaa !1
  %prev2 = getelementptr inbounds %struct.DLL, %struct.DLL* %33, i64 0, i32 2
  %34 = load %struct.DLL*, %struct.DLL** %prev2, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %34, i64 0, i32 1
  store %struct.DLL* %head, %struct.DLL** %next, align 8, !tbaa !7
  store %struct.DLL* %34, %struct.DLL** %prev1, align 8, !tbaa !1
  %35 = add i32 %.ph, -1738173825
  %36 = add i32 %35, -1
  %37 = sub i32 %36, -1738173825
  %dec = add nsw i32 %.ph, -1
  store i32 %37, i32* %head.idx, align 8, !tbaa !8
  br label %loopEntry.outer.outer

cleanup:                                          ; preds = %loopEntry.outer14
  ret %struct.DLL* %retval.0.reg2mem.0.ph

originalBBalteredBB:                              ; preds = %loopEntry.outer14
  br label %loopEntry.outer14.backedge

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: norecurse nounwind uwtable
define void @list_push_head(%struct.DLL* %head, %struct.DLL* %item) local_unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.DLL, %struct.DLL* %head, i64 0, i32 1
  %0 = load %struct.DLL*, %struct.DLL** %next1, align 8, !tbaa !7
  store %struct.DLL* %item, %struct.DLL** %next1, align 8, !tbaa !7
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  store %struct.DLL* %item, %struct.DLL** %prev, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.DLL, %struct.DLL* %item, i64 0, i32 1
  store %struct.DLL* %0, %struct.DLL** %next3, align 8, !tbaa !7
  %prev4 = getelementptr inbounds %struct.DLL, %struct.DLL* %item, i64 0, i32 2
  store %struct.DLL* %head, %struct.DLL** %prev4, align 8, !tbaa !1
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %head, i64 0, i32 0
  %1 = load i32, i32* %val, align 8, !tbaa !8
  %2 = sub i32 0, %1
  %3 = sub i32 0, 1
  %4 = add i32 %2, %3
  %5 = sub i32 0, %4
  %inc = add nsw i32 %1, 1
  store i32 %5, i32* %val, align 8, !tbaa !8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define %struct.DLL* @list_pop_head(%struct.DLL* %head) local_unnamed_addr #0 {
entry:
  %call.reg2mem = alloca i32, align 4
  %head.idx = getelementptr %struct.DLL, %struct.DLL* %head, i64 0, i32 0
  %head.idx.val = load i32, i32* %head.idx, align 8, !tbaa !8
  %cmp.i = icmp eq i32 %head.idx.val, 0
  %conv.i = zext i1 %cmp.i to i32
  store i32 %conv.i, i32* %call.reg2mem, align 4
  %next1 = getelementptr inbounds %struct.DLL, %struct.DLL* %head, i64 0, i32 1
  %0 = bitcast %struct.DLL** %next1 to i64*
  br label %loopEntry.outer.outer

loopEntry.outer.outer:                            ; preds = %if.end.split, %entry
  %.ph = phi i32 [ %7, %if.end.split ], [ %head.idx.val, %entry ]
  %retval.0.reg2mem.0.ph.ph = phi %struct.DLL* [ %2, %if.end.split ], [ undef, %entry ]
  %switchVar.0.ph.ph = phi i32 [ 527903123, %if.end.split ], [ -1644700431, %entry ]
  br label %loopEntry.outer

loopEntry.outer.loopexit:                         ; preds = %loopEntry.outer13
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.loopexit, %loopEntry.outer.outer
  %retval.0.reg2mem.0.ph = phi %struct.DLL* [ %retval.0.reg2mem.0.ph.ph, %loopEntry.outer.outer ], [ null, %loopEntry.outer.loopexit ]
  %switchVar.0.ph = phi i32 [ %switchVar.0.ph.ph, %loopEntry.outer.outer ], [ 527903123, %loopEntry.outer.loopexit ]
  br label %loopEntry.outer13

loopEntry.outer13:                                ; preds = %loopEntry.outer, %first.split
  %switchVar.0.ph14 = phi i32 [ %switchVar.0.ph, %loopEntry.outer ], [ %1, %first.split ]
  switch i32 %switchVar.0.ph14, label %infloop.preheader [
    i32 -1644700431, label %first.split
    i32 1309318401, label %loopEntry.outer.loopexit
    i32 1083787673, label %if.end.split
    i32 527903123, label %cleanup
  ]

infloop.preheader:                                ; preds = %loopEntry.outer13
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer13
  %call.reg2mem.0.call.reload = load volatile i32, i32* %call.reg2mem, align 4
  %tobool = icmp ne i32 %call.reg2mem.0.call.reload, 0
  %1 = select i1 %tobool, i32 1309318401, i32 1083787673
  br label %loopEntry.outer13

if.end.split:                                     ; preds = %loopEntry.outer13
  %2 = load %struct.DLL*, %struct.DLL** %next1, align 8, !tbaa !7
  %next2 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 1
  %3 = bitcast %struct.DLL** %next2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !7
  store i64 %4, i64* %0, align 8, !tbaa !7
  %5 = load %struct.DLL*, %struct.DLL** %next2, align 8, !tbaa !7
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i64 0, i32 2
  store %struct.DLL* %head, %struct.DLL** %prev, align 8, !tbaa !1
  %6 = sub i32 0, -1
  %7 = sub i32 %.ph, %6
  %dec = add nsw i32 %.ph, -1
  store i32 %7, i32* %head.idx, align 8, !tbaa !8
  br label %loopEntry.outer.outer

cleanup:                                          ; preds = %loopEntry.outer13
  ret %struct.DLL* %retval.0.reg2mem.0.ph

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: norecurse nounwind uwtable
define i32 @list_equal(%struct.DLL* readonly %x, %struct.DLL* %y) local_unnamed_addr #0 {
entry:
  %retval.0.reload.reg2mem = alloca i32, align 4
  %yp.0.reload.reg2mem = alloca %struct.DLL*, align 8
  %cmp2.reg2mem = alloca i1, align 1
  %.reg2mem.sroa.0 = alloca i64, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %retval.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %retval.0.reg2mem.0.be, %loopEntry.backedge ]
  %yp.0.reg2mem.0 = phi %struct.DLL* [ %y, %entry ], [ %yp.0.reg2mem.0.be, %loopEntry.backedge ]
  %xp.0.reg2mem.0 = phi %struct.DLL* [ %x, %entry ], [ %xp.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 961183086, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 961183086, label %for.cond
    i32 -1679036126, label %for.body
    i32 -586956962, label %originalBB
    i32 -490630576, label %originalBBpart2
    i32 -1153112130, label %if.then
    i32 892003023, label %originalBB21
    i32 1711704878, label %originalBBpart223
    i32 -58040790, label %for.inc
    i32 -1366672874, label %for.end
    i32 -1953199677, label %originalBB25
    i32 -1155066798, label %originalBBpart227
    i32 -160787584, label %if.then8
    i32 -1830052293, label %originalBB29
    i32 -1506997487, label %originalBBpart231
    i32 -1884443071, label %if.end9
    i32 -1188083256, label %cleanup
    i32 -778551570, label %originalBB33
    i32 1338781482, label %originalBBpart235
    i32 1655538066, label %originalBBalteredBB
    i32 2121323049, label %originalBB21alteredBB
    i32 169533678, label %originalBB25alteredBB
    i32 1273015802, label %originalBB29alteredBB
    i32 -197092103, label %originalBB33alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB33alteredBB, %originalBB29alteredBB, %originalBB25alteredBB, %originalBB21alteredBB, %originalBBalteredBB, %originalBB33, %cleanup, %if.end9, %originalBBpart231, %originalBB29, %if.then8, %originalBBpart227, %originalBB25, %for.end, %for.inc, %originalBBpart223, %originalBB21, %if.then, %originalBBpart2, %originalBB, %for.body, %for.cond
  %retval.0.reg2mem.0.be = phi i32 [ %retval.0.reg2mem.0, %originalBB33alteredBB ], [ %retval.0.reg2mem.0, %originalBB29alteredBB ], [ %retval.0.reg2mem.0, %originalBB25alteredBB ], [ %retval.0.reg2mem.0, %originalBB21alteredBB ], [ %retval.0.reg2mem.0, %originalBBalteredBB ], [ %retval.0.reg2mem.0, %originalBB33 ], [ %retval.0.reg2mem.0, %cleanup ], [ %conv, %if.end9 ], [ 0, %originalBBpart231 ], [ %retval.0.reg2mem.0, %originalBB29 ], [ %retval.0.reg2mem.0, %if.then8 ], [ %retval.0.reg2mem.0, %originalBBpart227 ], [ %retval.0.reg2mem.0, %originalBB25 ], [ %retval.0.reg2mem.0, %for.end ], [ %retval.0.reg2mem.0, %for.inc ], [ 0, %originalBBpart223 ], [ %retval.0.reg2mem.0, %originalBB21 ], [ %retval.0.reg2mem.0, %if.then ], [ %retval.0.reg2mem.0, %originalBBpart2 ], [ %retval.0.reg2mem.0, %originalBB ], [ %retval.0.reg2mem.0, %for.body ], [ %retval.0.reg2mem.0, %for.cond ], [ %retval.0.reg2mem.0, %loopEntry ]
  %yp.0.reg2mem.0.be = phi %struct.DLL* [ %yp.0.reg2mem.0, %originalBB33alteredBB ], [ %yp.0.reg2mem.0, %originalBB29alteredBB ], [ %yp.0.reg2mem.0, %originalBB25alteredBB ], [ %yp.0.reg2mem.0, %originalBB21alteredBB ], [ %yp.0.reg2mem.0, %originalBBalteredBB ], [ %yp.0.reg2mem.0, %originalBB33 ], [ %yp.0.reg2mem.0, %cleanup ], [ %yp.0.reg2mem.0, %if.end9 ], [ %yp.0.reg2mem.0, %originalBBpart231 ], [ %yp.0.reg2mem.0, %originalBB29 ], [ %yp.0.reg2mem.0, %if.then8 ], [ %yp.0.reg2mem.0, %originalBBpart227 ], [ %yp.0.reg2mem.0, %originalBB25 ], [ %yp.0.reg2mem.0, %for.end ], [ %119, %for.inc ], [ %yp.0.reg2mem.0, %originalBBpart223 ], [ %yp.0.reg2mem.0, %originalBB21 ], [ %yp.0.reg2mem.0, %if.then ], [ %yp.0.reg2mem.0, %originalBBpart2 ], [ %yp.0.reg2mem.0, %originalBB ], [ %yp.0.reg2mem.0, %for.body ], [ %yp.0.reg2mem.0, %for.cond ], [ %yp.0.reg2mem.0, %loopEntry ]
  %xp.0.reg2mem.0.be = phi %struct.DLL* [ %xp.0.reg2mem.0, %originalBB33alteredBB ], [ %xp.0.reg2mem.0, %originalBB29alteredBB ], [ %xp.0.reg2mem.0, %originalBB25alteredBB ], [ %xp.0.reg2mem.0, %originalBB21alteredBB ], [ %xp.0.reg2mem.0, %originalBBalteredBB ], [ %xp.0.reg2mem.0, %originalBB33 ], [ %xp.0.reg2mem.0, %cleanup ], [ %xp.0.reg2mem.0, %if.end9 ], [ %xp.0.reg2mem.0, %originalBBpart231 ], [ %xp.0.reg2mem.0, %originalBB29 ], [ %xp.0.reg2mem.0, %if.then8 ], [ %xp.0.reg2mem.0, %originalBBpart227 ], [ %xp.0.reg2mem.0, %originalBB25 ], [ %xp.0.reg2mem.0, %for.end ], [ %120, %for.inc ], [ %xp.0.reg2mem.0, %originalBBpart223 ], [ %xp.0.reg2mem.0, %originalBB21 ], [ %xp.0.reg2mem.0, %if.then ], [ %xp.0.reg2mem.0, %originalBBpart2 ], [ %xp.0.reg2mem.0, %originalBB ], [ %xp.0.reg2mem.0, %for.body ], [ %xp.0.reg2mem.0, %for.cond ], [ %xp.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -778551570, %originalBB33alteredBB ], [ -1830052293, %originalBB29alteredBB ], [ -1953199677, %originalBB25alteredBB ], [ 892003023, %originalBB21alteredBB ], [ -586956962, %originalBBalteredBB ], [ %266, %originalBB33 ], [ %243, %cleanup ], [ -1188083256, %if.end9 ], [ -1188083256, %originalBBpart231 ], [ %220, %originalBB29 ], [ %186, %if.then8 ], [ %168, %originalBBpart227 ], [ %167, %originalBB25 ], [ %137, %for.end ], [ 961183086, %for.inc ], [ -1188083256, %originalBBpart223 ], [ %118, %originalBB21 ], [ %83, %if.then ], [ %61, %originalBBpart2 ], [ %60, %originalBB ], [ %38, %for.body ], [ %5, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store %struct.DLL* %yp.0.reg2mem.0, %struct.DLL** %yp.0.reload.reg2mem, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reg2mem.0, i64 0, i32 1
  %0 = bitcast %struct.DLL** %next to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !7
  store i64 %1, i64* %.reg2mem.sroa.0, align 8
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload38 = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %2 = inttoptr i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload38 to %struct.DLL*
  %cmp = icmp ne %struct.DLL* %2, %x
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reg2mem.0, i64 0, i32 0
  %3 = load i32, i32* %val, align 8, !tbaa !8
  %yp.0.reload.reg2mem.0.yp.0.reload.reload = load volatile %struct.DLL*, %struct.DLL** %yp.0.reload.reg2mem, align 8
  %val1 = getelementptr inbounds %struct.DLL, %struct.DLL* %yp.0.reload.reg2mem.0.yp.0.reload.reload, i64 0, i32 0
  %4 = load i32, i32* %val1, align 8, !tbaa !8
  %cmp2 = icmp ne i32 %3, %4
  store i1 %cmp2, i1* %cmp2.reg2mem, align 1
  %5 = select i1 %cmp, i32 -1679036126, i32 -1366672874
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %6 = load i32, i32* @x.22, align 4
  %7 = load i32, i32* @y.23, align 4
  %8 = sub i32 0, -1
  %9 = sub i32 %6, %8
  %10 = add i32 %6, -1
  %11 = mul i32 %9, %6
  %12 = xor i32 %11, -1
  %13 = xor i32 1, -1
  %14 = xor i32 1869412472, -1
  %15 = or i32 %12, %13
  %16 = or i32 1869412472, %14
  %17 = xor i32 %15, -1
  %18 = and i32 %17, %16
  %19 = and i32 %11, 1
  %20 = icmp eq i32 %18, 0
  %21 = icmp slt i32 %7, 10
  %22 = xor i1 %21, true
  %23 = xor i1 %20, true
  %24 = xor i1 false, true
  %25 = and i1 %22, false
  %26 = and i1 %21, %24
  %27 = and i1 %23, false
  %28 = and i1 %20, %24
  %29 = or i1 %25, %26
  %30 = or i1 %27, %28
  %31 = xor i1 %29, %30
  %32 = or i1 %22, %23
  %33 = xor i1 %32, true
  %34 = or i1 false, %24
  %35 = and i1 %33, %34
  %36 = or i1 %31, %35
  %37 = or i1 %21, %20
  %38 = select i1 %36, i32 -586956962, i32 1655538066
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %39 = load i32, i32* @x.22, align 4
  %40 = load i32, i32* @y.23, align 4
  %41 = sub i32 %39, -2117210304
  %42 = add i32 %41, -1
  %43 = add i32 %42, -2117210304
  %44 = add i32 %39, -1
  %45 = mul i32 %43, %39
  %46 = xor i32 %45, -1
  %47 = xor i32 1, -1
  %48 = xor i32 1519759123, -1
  %49 = or i32 %46, %47
  %50 = or i32 1519759123, %48
  %51 = xor i32 %49, -1
  %52 = and i32 %51, %50
  %53 = and i32 %45, 1
  %54 = icmp eq i32 %52, 0
  %55 = icmp slt i32 %40, 10
  %56 = and i1 %55, %54
  %57 = xor i1 %55, %54
  %58 = or i1 %56, %57
  %59 = or i1 %55, %54
  %60 = select i1 %58, i32 -490630576, i32 1655538066
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp2.reg2mem.0.cmp2.reload39 = load volatile i1, i1* %cmp2.reg2mem, align 1
  %61 = select i1 %cmp2.reg2mem.0.cmp2.reload39, i32 -1153112130, i32 -58040790
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %62 = load i32, i32* @x.22, align 4
  %63 = load i32, i32* @y.23, align 4
  %64 = add i32 %62, -939074573
  %65 = add i32 %64, -1
  %66 = sub i32 %65, -939074573
  %67 = add i32 %62, -1
  %68 = mul i32 %66, %62
  %69 = xor i32 %68, -1
  %70 = xor i32 1, -1
  %71 = xor i32 -935791435, -1
  %72 = or i32 %69, %70
  %73 = or i32 -935791435, %71
  %74 = xor i32 %72, -1
  %75 = and i32 %74, %73
  %76 = and i32 %68, 1
  %77 = icmp eq i32 %75, 0
  %78 = icmp slt i32 %63, 10
  %79 = and i1 %78, %77
  %80 = xor i1 %78, %77
  %81 = or i1 %79, %80
  %82 = or i1 %78, %77
  %83 = select i1 %81, i32 892003023, i32 2121323049
  br label %loopEntry.backedge

originalBB21:                                     ; preds = %loopEntry
  %84 = load i32, i32* @x.22, align 4
  %85 = load i32, i32* @y.23, align 4
  %86 = sub i32 0, %84
  %87 = sub i32 0, -1
  %88 = add i32 %86, %87
  %89 = sub i32 0, %88
  %90 = add i32 %84, -1
  %91 = mul i32 %89, %84
  %92 = xor i32 %91, -1
  %93 = xor i32 1, -1
  %94 = xor i32 -2123378711, -1
  %95 = or i32 %92, %93
  %96 = or i32 -2123378711, %94
  %97 = xor i32 %95, -1
  %98 = and i32 %97, %96
  %99 = and i32 %91, 1
  %100 = icmp eq i32 %98, 0
  %101 = icmp slt i32 %85, 10
  %102 = xor i1 %101, true
  %103 = xor i1 %100, true
  %104 = xor i1 false, true
  %105 = and i1 %102, false
  %106 = and i1 %101, %104
  %107 = and i1 %103, false
  %108 = and i1 %100, %104
  %109 = or i1 %105, %106
  %110 = or i1 %107, %108
  %111 = xor i1 %109, %110
  %112 = or i1 %102, %103
  %113 = xor i1 %112, true
  %114 = or i1 false, %104
  %115 = and i1 %113, %114
  %116 = or i1 %111, %115
  %117 = or i1 %101, %100
  %118 = select i1 %116, i32 1711704878, i32 2121323049
  br label %loopEntry.backedge

originalBBpart223:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.inc:                                          ; preds = %loopEntry
  %yp.0.reload.reg2mem.0.yp.0.reload.reload40 = load volatile %struct.DLL*, %struct.DLL** %yp.0.reload.reg2mem, align 8
  %next4 = getelementptr inbounds %struct.DLL, %struct.DLL* %yp.0.reload.reg2mem.0.yp.0.reload.reload40, i64 0, i32 1
  %119 = load %struct.DLL*, %struct.DLL** %next4, align 8, !tbaa !7
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %120 = inttoptr i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload to %struct.DLL*
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %121 = load i32, i32* @x.22, align 4
  %122 = load i32, i32* @y.23, align 4
  %123 = sub i32 0, -1
  %124 = sub i32 %121, %123
  %125 = add i32 %121, -1
  %126 = mul i32 %124, %121
  %127 = xor i32 1, -1
  %128 = xor i32 %126, %127
  %129 = and i32 %128, %126
  %130 = and i32 %126, 1
  %131 = icmp eq i32 %129, 0
  %132 = icmp slt i32 %122, 10
  %133 = and i1 %132, %131
  %134 = xor i1 %132, %131
  %135 = or i1 %133, %134
  %136 = or i1 %132, %131
  %137 = select i1 %135, i32 -1953199677, i32 169533678
  br label %loopEntry.backedge

originalBB25:                                     ; preds = %loopEntry
  %138 = load i32, i32* @x.22, align 4
  %139 = load i32, i32* @y.23, align 4
  %140 = add i32 %138, 1102456579
  %141 = add i32 %140, -1
  %142 = sub i32 %141, 1102456579
  %143 = add i32 %138, -1
  %144 = mul i32 %142, %138
  %145 = xor i32 1, -1
  %146 = xor i32 %144, %145
  %147 = and i32 %146, %144
  %148 = and i32 %144, 1
  %149 = icmp eq i32 %147, 0
  %150 = icmp slt i32 %139, 10
  %151 = xor i1 %150, true
  %152 = xor i1 %149, true
  %153 = xor i1 true, true
  %154 = and i1 %151, true
  %155 = and i1 %150, %153
  %156 = and i1 %152, true
  %157 = and i1 %149, %153
  %158 = or i1 %154, %155
  %159 = or i1 %156, %157
  %160 = xor i1 %158, %159
  %161 = or i1 %151, %152
  %162 = xor i1 %161, true
  %163 = or i1 true, %153
  %164 = and i1 %162, %163
  %165 = or i1 %160, %164
  %166 = or i1 %150, %149
  %167 = select i1 %165, i32 -1155066798, i32 169533678
  br label %loopEntry.backedge

originalBBpart227:                                ; preds = %loopEntry
  %cmp2.reg2mem.0.cmp2.reload = load volatile i1, i1* %cmp2.reg2mem, align 1
  %168 = select i1 %cmp2.reg2mem.0.cmp2.reload, i32 -160787584, i32 -1884443071
  br label %loopEntry.backedge

if.then8:                                         ; preds = %loopEntry
  %169 = load i32, i32* @x.22, align 4
  %170 = load i32, i32* @y.23, align 4
  %171 = sub i32 %169, -1363260857
  %172 = add i32 %171, -1
  %173 = add i32 %172, -1363260857
  %174 = add i32 %169, -1
  %175 = mul i32 %173, %169
  %176 = xor i32 1, -1
  %177 = xor i32 %175, %176
  %178 = and i32 %177, %175
  %179 = and i32 %175, 1
  %180 = icmp eq i32 %178, 0
  %181 = icmp slt i32 %170, 10
  %182 = and i1 %181, %180
  %183 = xor i1 %181, %180
  %184 = or i1 %182, %183
  %185 = or i1 %181, %180
  %186 = select i1 %184, i32 -1830052293, i32 1273015802
  br label %loopEntry.backedge

originalBB29:                                     ; preds = %loopEntry
  %187 = load i32, i32* @x.22, align 4
  %188 = load i32, i32* @y.23, align 4
  %189 = sub i32 %187, 1686752268
  %190 = add i32 %189, -1
  %191 = add i32 %190, 1686752268
  %192 = add i32 %187, -1
  %193 = mul i32 %191, %187
  %194 = xor i32 %193, -1
  %195 = xor i32 1, -1
  %196 = xor i32 -369810335, -1
  %197 = or i32 %194, %195
  %198 = or i32 -369810335, %196
  %199 = xor i32 %197, -1
  %200 = and i32 %199, %198
  %201 = and i32 %193, 1
  %202 = icmp eq i32 %200, 0
  %203 = icmp slt i32 %188, 10
  %204 = xor i1 %203, true
  %205 = xor i1 %202, true
  %206 = xor i1 true, true
  %207 = and i1 %204, true
  %208 = and i1 %203, %206
  %209 = and i1 %205, true
  %210 = and i1 %202, %206
  %211 = or i1 %207, %208
  %212 = or i1 %209, %210
  %213 = xor i1 %211, %212
  %214 = or i1 %204, %205
  %215 = xor i1 %214, true
  %216 = or i1 true, %206
  %217 = and i1 %215, %216
  %218 = or i1 %213, %217
  %219 = or i1 %203, %202
  %220 = select i1 %218, i32 -1506997487, i32 1273015802
  br label %loopEntry.backedge

originalBBpart231:                                ; preds = %loopEntry
  br label %loopEntry.backedge

if.end9:                                          ; preds = %loopEntry
  %yp.0.reload.reg2mem.0.yp.0.reload.reload41 = load volatile %struct.DLL*, %struct.DLL** %yp.0.reload.reg2mem, align 8
  %next10 = getelementptr inbounds %struct.DLL, %struct.DLL* %yp.0.reload.reg2mem.0.yp.0.reload.reload41, i64 0, i32 1
  %221 = load %struct.DLL*, %struct.DLL** %next10, align 8, !tbaa !7
  %cmp11 = icmp eq %struct.DLL* %221, %y
  %conv = zext i1 %cmp11 to i32
  br label %loopEntry.backedge

cleanup:                                          ; preds = %loopEntry
  store i32 %retval.0.reg2mem.0, i32* %retval.0.reload.reg2mem, align 4
  %222 = load i32, i32* @x.22, align 4
  %223 = load i32, i32* @y.23, align 4
  %224 = sub i32 %222, -1628150882
  %225 = add i32 %224, -1
  %226 = add i32 %225, -1628150882
  %227 = add i32 %222, -1
  %228 = mul i32 %226, %222
  %229 = xor i32 %228, -1
  %230 = xor i32 1, -1
  %231 = xor i32 951393434, -1
  %232 = or i32 %229, %230
  %233 = or i32 951393434, %231
  %234 = xor i32 %232, -1
  %235 = and i32 %234, %233
  %236 = and i32 %228, 1
  %237 = icmp eq i32 %235, 0
  %238 = icmp slt i32 %223, 10
  %239 = and i1 %238, %237
  %240 = xor i1 %238, %237
  %241 = or i1 %239, %240
  %242 = or i1 %238, %237
  %243 = select i1 %241, i32 -778551570, i32 -197092103
  br label %loopEntry.backedge

originalBB33:                                     ; preds = %loopEntry
  %244 = load i32, i32* @x.22, align 4
  %245 = load i32, i32* @y.23, align 4
  %246 = sub i32 0, %244
  %247 = sub i32 0, -1
  %248 = add i32 %246, %247
  %249 = sub i32 0, %248
  %250 = add i32 %244, -1
  %251 = mul i32 %249, %244
  %252 = xor i32 %251, -1
  %253 = xor i32 1, -1
  %254 = xor i32 513305315, -1
  %255 = or i32 %252, %253
  %256 = or i32 513305315, %254
  %257 = xor i32 %255, -1
  %258 = and i32 %257, %256
  %259 = and i32 %251, 1
  %260 = icmp eq i32 %258, 0
  %261 = icmp slt i32 %245, 10
  %262 = and i1 %261, %260
  %263 = xor i1 %261, %260
  %264 = or i1 %262, %263
  %265 = or i1 %261, %260
  %266 = select i1 %264, i32 1338781482, i32 -197092103
  br label %loopEntry.backedge

originalBBpart235:                                ; preds = %loopEntry
  %retval.0.reload.reg2mem.0.retval.0.reload.reload = load volatile i32, i32* %retval.0.reload.reg2mem, align 4
  ret i32 %retval.0.reload.reg2mem.0.retval.0.reload.reload

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB21alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB25alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB29alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB33alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define void @list_print(i8* nocapture readonly %msg, %struct.DLL* nocapture readonly %x) local_unnamed_addr #1 {
entry:
  %xp.0.reload.reg2mem = alloca %struct.DLL*, align 8
  %i.0.reload.reg2mem = alloca i32, align 4
  %.reg2mem38.sroa.0 = alloca i64, align 8
  %inc.reg2mem = alloca i32, align 4
  %.reg2mem33.sroa.0 = alloca i64, align 8
  %next4.reg2mem = alloca %struct.DLL**, align 8
  %.reg2mem.sroa.0 = alloca i64, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %x, i64 0, i32 1
  %0 = bitcast %struct.DLL** %next to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !7
  store i64 %1, i64* %.reg2mem.sroa.0, align 8
  %call = tail call i32 @puts(i8* %msg)
  %x.idx = getelementptr %struct.DLL, %struct.DLL* %x, i64 0, i32 0
  %x.idx.val = load i32, i32* %x.idx, align 8, !tbaa !8
  %call2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %x.idx.val)
  %2 = load %struct.DLL*, %struct.DLL** %next, align 8, !tbaa !7
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %xp.0.reg2mem.0 = phi %struct.DLL* [ %2, %entry ], [ %xp.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -1060445399, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -1060445399, label %for.cond
    i32 -982037791, label %for.body
    i32 1951555079, label %originalBB
    i32 -732248047, label %originalBBpart2
    i32 829013809, label %for.end
    i32 1523929390, label %originalBB24
    i32 -411443919, label %originalBBpart226
    i32 2112136004, label %originalBBalteredBB
    i32 -1715089795, label %originalBB24alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB24alteredBB, %originalBBalteredBB, %originalBB24, %for.end, %originalBBpart2, %originalBB, %for.body, %for.cond
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB24alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB24 ], [ %i.0.reg2mem.0, %for.end ], [ %inc.reg2mem.0.inc.reload, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %xp.0.reg2mem.0.be = phi %struct.DLL* [ %xp.0.reg2mem.0, %originalBB24alteredBB ], [ %xp.0.reg2mem.0, %originalBBalteredBB ], [ %xp.0.reg2mem.0, %originalBB24 ], [ %xp.0.reg2mem.0, %for.end ], [ %65, %originalBBpart2 ], [ %xp.0.reg2mem.0, %originalBB ], [ %xp.0.reg2mem.0, %for.body ], [ %xp.0.reg2mem.0, %for.cond ], [ %xp.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1523929390, %originalBB24alteredBB ], [ 1951555079, %originalBBalteredBB ], [ %106, %originalBB24 ], [ %87, %for.end ], [ -1060445399, %originalBBpart2 ], [ %64, %originalBB ], [ %25, %for.body ], [ %7, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  store %struct.DLL* %xp.0.reg2mem.0, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %xp.0.reload.reg2mem.0.xp.0.reload.reload = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %next4 = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload, i64 0, i32 1
  store %struct.DLL** %next4, %struct.DLL*** %next4.reg2mem, align 8
  %next4.reg2mem.0.next4.reload32 = load volatile %struct.DLL**, %struct.DLL*** %next4.reg2mem, align 8
  %3 = bitcast %struct.DLL** %next4.reg2mem.0.next4.reload32 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !7
  store i64 %4, i64* %.reg2mem33.sroa.0, align 8
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %5 = inttoptr i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload to %struct.DLL*
  %.reg2mem33.sroa.0.0..reg2mem33.sroa.0.0..reload36 = load volatile i64, i64* %.reg2mem33.sroa.0, align 8
  %6 = inttoptr i64 %.reg2mem33.sroa.0.0..reg2mem33.sroa.0.0..reload36 to %struct.DLL*
  %cmp = icmp ne %struct.DLL* %6, %5
  %7 = select i1 %cmp, i32 -982037791, i32 829013809
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %8 = load i32, i32* @x.24, align 4
  %9 = load i32, i32* @y.25, align 4
  %10 = add i32 %8, 1185375100
  %11 = add i32 %10, -1
  %12 = sub i32 %11, 1185375100
  %13 = add i32 %8, -1
  %14 = mul i32 %12, %8
  %15 = xor i32 1, -1
  %16 = xor i32 %14, %15
  %17 = and i32 %16, %14
  %18 = and i32 %14, 1
  %19 = icmp eq i32 %17, 0
  %20 = icmp slt i32 %9, 10
  %21 = and i1 %20, %19
  %22 = xor i1 %20, %19
  %23 = or i1 %21, %22
  %24 = or i1 %20, %19
  %25 = select i1 %23, i32 1951555079, i32 2112136004
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %26 = sub i32 0, 1
  %27 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %26
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 1
  store i32 %27, i32* %inc.reg2mem, align 4
  %xp.0.reload.reg2mem.0.xp.0.reload.reload41 = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload41, i64 0, i32 0
  %28 = load i32, i32* %val, align 8, !tbaa !8
  %.reg2mem33.sroa.0.0..reg2mem33.sroa.0.0..reload35 = load volatile i64, i64* %.reg2mem33.sroa.0, align 8
  %29 = inttoptr i64 %.reg2mem33.sroa.0.0..reg2mem33.sroa.0.0..reload35 to %struct.DLL*
  %val6 = getelementptr inbounds %struct.DLL, %struct.DLL* %29, i64 0, i32 0
  %30 = load i32, i32* %val6, align 8, !tbaa !8
  %xp.0.reload.reg2mem.0.xp.0.reload.reload42 = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload42, i64 0, i32 2
  %31 = load %struct.DLL*, %struct.DLL** %prev, align 8, !tbaa !1
  %val7 = getelementptr inbounds %struct.DLL, %struct.DLL* %31, i64 0, i32 0
  %32 = load i32, i32* %val7, align 8, !tbaa !8
  %inc.reg2mem.0.inc.reload37 = load volatile i32, i32* %inc.reg2mem, align 4
  %call8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %inc.reg2mem.0.inc.reload37, i32 %28, i32 %30, i32 %32)
  %next4.reg2mem.0.next4.reload31 = load volatile %struct.DLL**, %struct.DLL*** %next4.reg2mem, align 8
  %33 = bitcast %struct.DLL** %next4.reg2mem.0.next4.reload31 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !7
  store i64 %34, i64* %.reg2mem38.sroa.0, align 8
  %35 = load i32, i32* @x.24, align 4
  %36 = load i32, i32* @y.25, align 4
  %37 = add i32 %35, 384296087
  %38 = add i32 %37, -1
  %39 = sub i32 %38, 384296087
  %40 = add i32 %35, -1
  %41 = mul i32 %39, %35
  %42 = xor i32 1, -1
  %43 = xor i32 %41, %42
  %44 = and i32 %43, %41
  %45 = and i32 %41, 1
  %46 = icmp eq i32 %44, 0
  %47 = icmp slt i32 %36, 10
  %48 = xor i1 %47, true
  %49 = xor i1 %46, true
  %50 = xor i1 true, true
  %51 = and i1 %48, true
  %52 = and i1 %47, %50
  %53 = and i1 %49, true
  %54 = and i1 %46, %50
  %55 = or i1 %51, %52
  %56 = or i1 %53, %54
  %57 = xor i1 %55, %56
  %58 = or i1 %48, %49
  %59 = xor i1 %58, true
  %60 = or i1 true, %50
  %61 = and i1 %59, %60
  %62 = or i1 %57, %61
  %63 = or i1 %47, %46
  %64 = select i1 %62, i32 -732248047, i32 2112136004
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %inc.reg2mem.0.inc.reload = load volatile i32, i32* %inc.reg2mem, align 4
  %.reg2mem38.sroa.0.0..reg2mem38.sroa.0.0..reload39 = load volatile i64, i64* %.reg2mem38.sroa.0, align 8
  %65 = inttoptr i64 %.reg2mem38.sroa.0.0..reg2mem38.sroa.0.0..reload39 to %struct.DLL*
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %66 = load i32, i32* @x.24, align 4
  %67 = load i32, i32* @y.25, align 4
  %68 = add i32 %66, 948838829
  %69 = add i32 %68, -1
  %70 = sub i32 %69, 948838829
  %71 = add i32 %66, -1
  %72 = mul i32 %70, %66
  %73 = xor i32 %72, -1
  %74 = xor i32 1, -1
  %75 = xor i32 -1044438434, -1
  %76 = or i32 %73, %74
  %77 = or i32 -1044438434, %75
  %78 = xor i32 %76, -1
  %79 = and i32 %78, %77
  %80 = and i32 %72, 1
  %81 = icmp eq i32 %79, 0
  %82 = icmp slt i32 %67, 10
  %83 = and i1 %82, %81
  %84 = xor i1 %82, %81
  %85 = or i1 %83, %84
  %86 = or i1 %82, %81
  %87 = select i1 %85, i32 1523929390, i32 -1715089795
  br label %loopEntry.backedge

originalBB24:                                     ; preds = %loopEntry
  %puts45 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.44, i64 0, i64 0))
  %next4.reg2mem.0.next4.reload30 = load volatile %struct.DLL**, %struct.DLL*** %next4.reg2mem, align 8
  %88 = load %struct.DLL*, %struct.DLL** %next4.reg2mem.0.next4.reload30, align 8, !tbaa !7
  %val12 = getelementptr inbounds %struct.DLL, %struct.DLL* %88, i64 0, i32 0
  %89 = load i32, i32* %val12, align 8, !tbaa !8
  %call13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %90 = load i32, i32* @x.24, align 4
  %91 = load i32, i32* @y.25, align 4
  %92 = sub i32 0, -1
  %93 = sub i32 %90, %92
  %94 = add i32 %90, -1
  %95 = mul i32 %93, %90
  %96 = xor i32 1, -1
  %97 = xor i32 %95, %96
  %98 = and i32 %97, %95
  %99 = and i32 %95, 1
  %100 = icmp eq i32 %98, 0
  %101 = icmp slt i32 %91, 10
  %102 = and i1 %101, %100
  %103 = xor i1 %101, %100
  %104 = or i1 %102, %103
  %105 = or i1 %101, %100
  %106 = select i1 %104, i32 -411443919, i32 -1715089795
  br label %loopEntry.backedge

originalBBpart226:                                ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload40 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %107 = sub i32 0, 1
  %108 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload40, %107
  %incalteredBB = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload40, 1
  %xp.0.reload.reg2mem.0.xp.0.reload.reload43 = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %valalteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload43, i64 0, i32 0
  %109 = load i32, i32* %valalteredBB, align 8, !tbaa !8
  %.reg2mem33.sroa.0.0..reg2mem33.sroa.0.0..reload34 = load volatile i64, i64* %.reg2mem33.sroa.0, align 8
  %110 = inttoptr i64 %.reg2mem33.sroa.0.0..reg2mem33.sroa.0.0..reload34 to %struct.DLL*
  %val6alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %110, i64 0, i32 0
  %111 = load i32, i32* %val6alteredBB, align 8, !tbaa !8
  %xp.0.reload.reg2mem.0.xp.0.reload.reload44 = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %prevalteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload44, i64 0, i32 2
  %112 = load %struct.DLL*, %struct.DLL** %prevalteredBB, align 8, !tbaa !1
  %val7alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %112, i64 0, i32 0
  %113 = load i32, i32* %val7alteredBB, align 8, !tbaa !8
  %call8alteredBB = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 %111, i32 %113)
  %next4.reg2mem.0.next4.reload29 = load volatile %struct.DLL**, %struct.DLL*** %next4.reg2mem, align 8
  br label %loopEntry.backedge

originalBB24alteredBB:                            ; preds = %loopEntry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.44, i64 0, i64 0))
  %next4.reg2mem.0.next4.reload = load volatile %struct.DLL**, %struct.DLL*** %next4.reg2mem, align 8
  %114 = load %struct.DLL*, %struct.DLL** %next4.reg2mem.0.next4.reload, align 8, !tbaa !7
  %val12alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %114, i64 0, i32 0
  %115 = load i32, i32* %val12alteredBB, align 8, !tbaa !8
  %call13alteredBB = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define %struct.DLL* @list_new() local_unnamed_addr #1 {
entry:
  %call = tail call noalias i8* @malloc(i64 24) #5
  %0 = bitcast i8* %call to %struct.DLL*
  %next = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %next to i8**
  store i8* %call, i8** %1, align 8, !tbaa !7
  %prev = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %prev to i8**
  store i8* %call, i8** %2, align 8, !tbaa !1
  %val = bitcast i8* %call to i32*
  store i32 0, i32* %val, align 8, !tbaa !8
  ret %struct.DLL* %0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define %struct.DLL* @list_sequence(i32 %from, i32 %to) local_unnamed_addr #1 {
entry:
  %i.0.reload.reg2mem = alloca i32, align 4
  %j.0.reload.reg2mem = alloca i32, align 4
  %from.addr.1.reload.reg2mem = alloca i32, align 4
  %to.addr.0.reload.reg2mem = alloca i32, align 4
  %from.addr.0.reload.reg2mem = alloca i32, align 4
  %cmp5.reg2mem = alloca i1, align 1
  %dec.reg2mem = alloca i32, align 4
  %.reg2mem140 = alloca %struct.DLL*, align 8
  %add.reg2mem = alloca i32, align 4
  %sub.reg2mem = alloca i32, align 4
  %cmp.reg2mem = alloca i1, align 1
  %.reg2mem130 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.30, align 4
  %1 = load i32, i32* @y.31, align 4
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
  store i1 %13, i1* %.reg2mem130, align 1
  %cmp = icmp sgt i32 %from, %to
  %14 = bitcast %struct.DLL** %.reg2mem140 to i8**
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %from.addr.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %from.addr.1.reg2mem.0.be, %loopEntry.backedge ]
  %j.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %j.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %from.addr.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %from.addr.0.reg2mem.0.be, %loopEntry.backedge ]
  %to.addr.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %to.addr.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -1360990860, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -1360990860, label %first
    i32 1207738722, label %originalBB
    i32 -1695768209, label %originalBBpart2
    i32 -636749455, label %if.then
    i32 368729549, label %originalBB75
    i32 1020789327, label %originalBBpart277
    i32 281047182, label %if.end
    i32 -1406292434, label %originalBB79
    i32 -1488364523, label %originalBBpart2119
    i32 -1998126609, label %for.cond
    i32 1806574910, label %originalBB121
    i32 1198956379, label %originalBBpart2123
    i32 1884453318, label %for.body
    i32 -1376127403, label %for.end
    i32 1240062418, label %originalBB125
    i32 1918781793, label %originalBBpart2127
    i32 627850281, label %originalBBalteredBB
    i32 2037306946, label %originalBB75alteredBB
    i32 -1080325332, label %originalBB79alteredBB
    i32 -1135372378, label %originalBB121alteredBB
    i32 1503685812, label %originalBB125alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB125alteredBB, %originalBB121alteredBB, %originalBB79alteredBB, %originalBB75alteredBB, %originalBBalteredBB, %originalBB125, %for.end, %for.body, %originalBBpart2123, %originalBB121, %for.cond, %originalBBpart2119, %originalBB79, %if.end, %originalBBpart277, %originalBB75, %if.then, %originalBBpart2, %originalBB, %first
  %from.addr.1.reg2mem.0.be = phi i32 [ %from.addr.1.reg2mem.0, %originalBB125alteredBB ], [ %from.addr.1.reg2mem.0, %originalBB121alteredBB ], [ %from.addr.1.reg2mem.0, %originalBB79alteredBB ], [ %from.addr.1.reg2mem.0, %originalBB75alteredBB ], [ %from.addr.1.reg2mem.0, %originalBBalteredBB ], [ %from.addr.1.reg2mem.0, %originalBB125 ], [ %from.addr.1.reg2mem.0, %for.end ], [ %228, %for.body ], [ %from.addr.1.reg2mem.0, %originalBBpart2123 ], [ %from.addr.1.reg2mem.0, %originalBB121 ], [ %from.addr.1.reg2mem.0, %for.cond ], [ %dec.reg2mem.0.dec.reload, %originalBBpart2119 ], [ %from.addr.1.reg2mem.0, %originalBB79 ], [ %from.addr.1.reg2mem.0, %if.end ], [ %from.addr.1.reg2mem.0, %originalBBpart277 ], [ %from.addr.1.reg2mem.0, %originalBB75 ], [ %from.addr.1.reg2mem.0, %if.then ], [ %from.addr.1.reg2mem.0, %originalBBpart2 ], [ %from.addr.1.reg2mem.0, %originalBB ], [ %from.addr.1.reg2mem.0, %first ], [ %from.addr.1.reg2mem.0, %loopEntry ]
  %j.0.reg2mem.0.be = phi i32 [ %j.0.reg2mem.0, %originalBB125alteredBB ], [ %j.0.reg2mem.0, %originalBB121alteredBB ], [ %j.0.reg2mem.0, %originalBB79alteredBB ], [ %j.0.reg2mem.0, %originalBB75alteredBB ], [ %j.0.reg2mem.0, %originalBBalteredBB ], [ %j.0.reg2mem.0, %originalBB125 ], [ %j.0.reg2mem.0, %for.end ], [ %231, %for.body ], [ %j.0.reg2mem.0, %originalBBpart2123 ], [ %j.0.reg2mem.0, %originalBB121 ], [ %j.0.reg2mem.0, %for.cond ], [ 1, %originalBBpart2119 ], [ %j.0.reg2mem.0, %originalBB79 ], [ %j.0.reg2mem.0, %if.end ], [ %j.0.reg2mem.0, %originalBBpart277 ], [ %j.0.reg2mem.0, %originalBB75 ], [ %j.0.reg2mem.0, %if.then ], [ %j.0.reg2mem.0, %originalBBpart2 ], [ %j.0.reg2mem.0, %originalBB ], [ %j.0.reg2mem.0, %first ], [ %j.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB125alteredBB ], [ %i.0.reg2mem.0, %originalBB121alteredBB ], [ %i.0.reg2mem.0, %originalBB79alteredBB ], [ %i.0.reg2mem.0, %originalBB75alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB125 ], [ %i.0.reg2mem.0, %for.end ], [ %222, %for.body ], [ %i.0.reg2mem.0, %originalBBpart2123 ], [ %i.0.reg2mem.0, %originalBB121 ], [ %i.0.reg2mem.0, %for.cond ], [ 0, %originalBBpart2119 ], [ %i.0.reg2mem.0, %originalBB79 ], [ %i.0.reg2mem.0, %if.end ], [ %i.0.reg2mem.0, %originalBBpart277 ], [ %i.0.reg2mem.0, %originalBB75 ], [ %i.0.reg2mem.0, %if.then ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %first ], [ %i.0.reg2mem.0, %loopEntry ]
  %from.addr.0.reg2mem.0.be = phi i32 [ %from.addr.0.reg2mem.0, %originalBB125alteredBB ], [ %from.addr.0.reg2mem.0, %originalBB121alteredBB ], [ %from.addr.0.reg2mem.0, %originalBB79alteredBB ], [ %from.addr.0.reg2mem.0, %originalBB75alteredBB ], [ %from.addr.0.reg2mem.0, %originalBBalteredBB ], [ %from.addr.0.reg2mem.0, %originalBB125 ], [ %from.addr.0.reg2mem.0, %for.end ], [ %from.addr.0.reg2mem.0, %for.body ], [ %from.addr.0.reg2mem.0, %originalBBpart2123 ], [ %from.addr.0.reg2mem.0, %originalBB121 ], [ %from.addr.0.reg2mem.0, %for.cond ], [ %from.addr.0.reg2mem.0, %originalBBpart2119 ], [ %from.addr.0.reg2mem.0, %originalBB79 ], [ %from.addr.0.reg2mem.0, %if.end ], [ %to, %originalBBpart277 ], [ %from.addr.0.reg2mem.0, %originalBB75 ], [ %from.addr.0.reg2mem.0, %if.then ], [ %from, %originalBBpart2 ], [ %from.addr.0.reg2mem.0, %originalBB ], [ %from.addr.0.reg2mem.0, %first ], [ %from.addr.0.reg2mem.0, %loopEntry ]
  %to.addr.0.reg2mem.0.be = phi i32 [ %to.addr.0.reg2mem.0, %originalBB125alteredBB ], [ %to.addr.0.reg2mem.0, %originalBB121alteredBB ], [ %to.addr.0.reg2mem.0, %originalBB79alteredBB ], [ %to.addr.0.reg2mem.0, %originalBB75alteredBB ], [ %to.addr.0.reg2mem.0, %originalBBalteredBB ], [ %to.addr.0.reg2mem.0, %originalBB125 ], [ %to.addr.0.reg2mem.0, %for.end ], [ %to.addr.0.reg2mem.0, %for.body ], [ %to.addr.0.reg2mem.0, %originalBBpart2123 ], [ %to.addr.0.reg2mem.0, %originalBB121 ], [ %to.addr.0.reg2mem.0, %for.cond ], [ %to.addr.0.reg2mem.0, %originalBBpart2119 ], [ %to.addr.0.reg2mem.0, %originalBB79 ], [ %to.addr.0.reg2mem.0, %if.end ], [ %from, %originalBBpart277 ], [ %to.addr.0.reg2mem.0, %originalBB75 ], [ %to.addr.0.reg2mem.0, %if.then ], [ %to, %originalBBpart2 ], [ %to.addr.0.reg2mem.0, %originalBB ], [ %to.addr.0.reg2mem.0, %first ], [ %to.addr.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1240062418, %originalBB125alteredBB ], [ 1806574910, %originalBB121alteredBB ], [ -1406292434, %originalBB79alteredBB ], [ 368729549, %originalBB75alteredBB ], [ 1207738722, %originalBBalteredBB ], [ %300, %originalBB125 ], [ %265, %for.end ], [ -1998126609, %for.body ], [ %219, %originalBBpart2123 ], [ %218, %originalBB121 ], [ %183, %for.cond ], [ -1998126609, %originalBBpart2119 ], [ %161, %originalBB79 ], [ %119, %if.end ], [ 281047182, %originalBBpart277 ], [ %102, %originalBB75 ], [ %69, %if.then ], [ %51, %originalBBpart2 ], [ %50, %originalBB ], [ %19, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem130.0..reload131 = load volatile i1, i1* %.reg2mem130, align 1
  %15 = and i1 %.reg2mem.0..reload, %.reg2mem130.0..reload131
  %16 = xor i1 %.reg2mem.0..reload, %.reg2mem130.0..reload131
  %17 = or i1 %15, %16
  %18 = or i1 %.reg2mem.0..reload, %.reg2mem130.0..reload131
  %19 = select i1 %17, i32 1207738722, i32 627850281
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %20 = load i32, i32* @x.30, align 4
  %21 = load i32, i32* @y.31, align 4
  %22 = sub i32 0, %20
  %23 = sub i32 0, -1
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = add i32 %20, -1
  %27 = mul i32 %25, %20
  %28 = xor i32 1, -1
  %29 = xor i32 %27, %28
  %30 = and i32 %29, %27
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %30, 0
  %33 = icmp slt i32 %21, 10
  %34 = xor i1 %33, true
  %35 = xor i1 %32, true
  %36 = xor i1 false, true
  %37 = and i1 %34, false
  %38 = and i1 %33, %36
  %39 = and i1 %35, false
  %40 = and i1 %32, %36
  %41 = or i1 %37, %38
  %42 = or i1 %39, %40
  %43 = xor i1 %41, %42
  %44 = or i1 %34, %35
  %45 = xor i1 %44, true
  %46 = or i1 false, %36
  %47 = and i1 %45, %46
  %48 = or i1 %43, %47
  %49 = or i1 %33, %32
  %50 = select i1 %48, i32 -1695768209, i32 627850281
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %51 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -636749455, i32 281047182
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %52 = load i32, i32* @x.30, align 4
  %53 = load i32, i32* @y.31, align 4
  %54 = sub i32 %52, -2115808793
  %55 = add i32 %54, -1
  %56 = add i32 %55, -2115808793
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
  %69 = select i1 %67, i32 368729549, i32 2037306946
  br label %loopEntry.backedge

originalBB75:                                     ; preds = %loopEntry
  %70 = load i32, i32* @x.30, align 4
  %71 = load i32, i32* @y.31, align 4
  %72 = sub i32 0, -1
  %73 = sub i32 %70, %72
  %74 = add i32 %70, -1
  %75 = mul i32 %73, %70
  %76 = xor i32 %75, -1
  %77 = xor i32 1, -1
  %78 = xor i32 1585964766, -1
  %79 = or i32 %76, %77
  %80 = or i32 1585964766, %78
  %81 = xor i32 %79, -1
  %82 = and i32 %81, %80
  %83 = and i32 %75, 1
  %84 = icmp eq i32 %82, 0
  %85 = icmp slt i32 %71, 10
  %86 = xor i1 %85, true
  %87 = xor i1 %84, true
  %88 = xor i1 true, true
  %89 = and i1 %86, true
  %90 = and i1 %85, %88
  %91 = and i1 %87, true
  %92 = and i1 %84, %88
  %93 = or i1 %89, %90
  %94 = or i1 %91, %92
  %95 = xor i1 %93, %94
  %96 = or i1 %86, %87
  %97 = xor i1 %96, true
  %98 = or i1 true, %88
  %99 = and i1 %97, %98
  %100 = or i1 %95, %99
  %101 = or i1 %85, %84
  %102 = select i1 %100, i32 1020789327, i32 2037306946
  br label %loopEntry.backedge

originalBBpart277:                                ; preds = %loopEntry
  br label %loopEntry.backedge

if.end:                                           ; preds = %loopEntry
  store i32 %from.addr.0.reg2mem.0, i32* %from.addr.0.reload.reg2mem, align 4
  store i32 %to.addr.0.reg2mem.0, i32* %to.addr.0.reload.reg2mem, align 4
  %103 = load i32, i32* @x.30, align 4
  %104 = load i32, i32* @y.31, align 4
  %105 = sub i32 0, -1
  %106 = sub i32 %103, %105
  %107 = add i32 %103, -1
  %108 = mul i32 %106, %103
  %109 = xor i32 1, -1
  %110 = xor i32 %108, %109
  %111 = and i32 %110, %108
  %112 = and i32 %108, 1
  %113 = icmp eq i32 %111, 0
  %114 = icmp slt i32 %104, 10
  %115 = and i1 %114, %113
  %116 = xor i1 %114, %113
  %117 = or i1 %115, %116
  %118 = or i1 %114, %113
  %119 = select i1 %117, i32 -1406292434, i32 -1080325332
  br label %loopEntry.backedge

originalBB79:                                     ; preds = %loopEntry
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %120 = add i32 %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload, -389732122
  %121 = sub i32 %120, %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload
  %122 = sub i32 %121, -389732122
  %sub = sub nsw i32 %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload, %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload
  store i32 %122, i32* %sub.reg2mem, align 4
  %sub.reg2mem.0.sub.reload133 = load volatile i32, i32* %sub.reg2mem, align 4
  %123 = sub i32 0, 1
  %124 = sub i32 %sub.reg2mem.0.sub.reload133, %123
  %add = add nsw i32 %sub.reg2mem.0.sub.reload133, 1
  store i32 %124, i32* %add.reg2mem, align 4
  %add.reg2mem.0.add.reload136 = load volatile i32, i32* %add.reg2mem, align 4
  %125 = add i32 %add.reg2mem.0.add.reload136, 748278981
  %126 = add i32 %125, 1
  %127 = sub i32 %126, 748278981
  %add4 = add nsw i32 %add.reg2mem.0.add.reload136, 1
  %conv = sext i32 %127 to i64
  %mul = mul nsw i64 %conv, 24
  %call = tail call noalias i8* @malloc(i64 %mul) #5
  store i8* %call, i8** %14, align 8
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload156 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %128 = sub i32 0, %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload156
  %129 = sub i32 0, -1
  %130 = add i32 %128, %129
  %131 = sub i32 0, %130
  %dec = add nsw i32 %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload156, -1
  store i32 %131, i32* %dec.reg2mem, align 4
  %132 = load i32, i32* @x.30, align 4
  %133 = load i32, i32* @y.31, align 4
  %134 = add i32 %132, -439916093
  %135 = add i32 %134, -1
  %136 = sub i32 %135, -439916093
  %137 = add i32 %132, -1
  %138 = mul i32 %136, %132
  %139 = xor i32 1, -1
  %140 = xor i32 %138, %139
  %141 = and i32 %140, %138
  %142 = and i32 %138, 1
  %143 = icmp eq i32 %141, 0
  %144 = icmp slt i32 %133, 10
  %145 = xor i1 %144, true
  %146 = xor i1 %143, true
  %147 = xor i1 false, true
  %148 = and i1 %145, false
  %149 = and i1 %144, %147
  %150 = and i1 %146, false
  %151 = and i1 %143, %147
  %152 = or i1 %148, %149
  %153 = or i1 %150, %151
  %154 = xor i1 %152, %153
  %155 = or i1 %145, %146
  %156 = xor i1 %155, true
  %157 = or i1 false, %147
  %158 = and i1 %156, %157
  %159 = or i1 %154, %158
  %160 = or i1 %144, %143
  %161 = select i1 %159, i32 -1488364523, i32 -1080325332
  br label %loopEntry.backedge

originalBBpart2119:                               ; preds = %loopEntry
  %dec.reg2mem.0.dec.reload = load volatile i32, i32* %dec.reg2mem, align 4
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i32 %from.addr.1.reg2mem.0, i32* %from.addr.1.reload.reg2mem, align 4
  store i32 %j.0.reg2mem.0, i32* %j.0.reload.reg2mem, align 4
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %162 = load i32, i32* @x.30, align 4
  %163 = load i32, i32* @y.31, align 4
  %164 = add i32 %162, -1646955053
  %165 = add i32 %164, -1
  %166 = sub i32 %165, -1646955053
  %167 = add i32 %162, -1
  %168 = mul i32 %166, %162
  %169 = xor i32 %168, -1
  %170 = xor i32 1, -1
  %171 = xor i32 409021894, -1
  %172 = or i32 %169, %170
  %173 = or i32 409021894, %171
  %174 = xor i32 %172, -1
  %175 = and i32 %174, %173
  %176 = and i32 %168, 1
  %177 = icmp eq i32 %175, 0
  %178 = icmp slt i32 %163, 10
  %179 = and i1 %178, %177
  %180 = xor i1 %178, %177
  %181 = or i1 %179, %180
  %182 = or i1 %178, %177
  %183 = select i1 %181, i32 1806574910, i32 -1135372378
  br label %loopEntry.backedge

originalBB121:                                    ; preds = %loopEntry
  %add.reg2mem.0.add.reload137 = load volatile i32, i32* %add.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp5 = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %add.reg2mem.0.add.reload137
  store i1 %cmp5, i1* %cmp5.reg2mem, align 1
  %184 = load i32, i32* @x.30, align 4
  %185 = load i32, i32* @y.31, align 4
  %186 = sub i32 0, %184
  %187 = sub i32 0, -1
  %188 = add i32 %186, %187
  %189 = sub i32 0, %188
  %190 = add i32 %184, -1
  %191 = mul i32 %189, %184
  %192 = xor i32 %191, -1
  %193 = xor i32 1, -1
  %194 = xor i32 904112626, -1
  %195 = or i32 %192, %193
  %196 = or i32 904112626, %194
  %197 = xor i32 %195, -1
  %198 = and i32 %197, %196
  %199 = and i32 %191, 1
  %200 = icmp eq i32 %198, 0
  %201 = icmp slt i32 %185, 10
  %202 = xor i1 %201, true
  %203 = xor i1 %200, true
  %204 = xor i1 false, true
  %205 = and i1 %202, false
  %206 = and i1 %201, %204
  %207 = and i1 %203, false
  %208 = and i1 %200, %204
  %209 = or i1 %205, %206
  %210 = or i1 %207, %208
  %211 = xor i1 %209, %210
  %212 = or i1 %202, %203
  %213 = xor i1 %212, true
  %214 = or i1 false, %204
  %215 = and i1 %213, %214
  %216 = or i1 %211, %215
  %217 = or i1 %201, %200
  %218 = select i1 %216, i32 1198956379, i32 -1135372378
  br label %loopEntry.backedge

originalBBpart2123:                               ; preds = %loopEntry
  %cmp5.reg2mem.0.cmp5.reload = load volatile i1, i1* %cmp5.reg2mem, align 1
  %219 = select i1 %cmp5.reg2mem.0.cmp5.reload, i32 1884453318, i32 -1376127403
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload178 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %220 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload178, 1289720540
  %221 = add i32 %220, 1
  %222 = add i32 %221, 1289720540
  %add7 = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload178, 1
  %idxprom = sext i32 %222 to i64
  %.reg2mem140.0..reload150 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %arrayidx = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload150, i64 %idxprom
  %i.0.reload.reg2mem.0.i.0.reload.reload179 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom8 = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload179 to i64
  %.reg2mem140.0..reload151 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload151, i64 %idxprom8, i32 1
  store %struct.DLL* %arrayidx, %struct.DLL** %next, align 8, !tbaa !7
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %223 = add i32 %j.0.reload.reg2mem.0.j.0.reload.reload, 185693710
  %224 = add i32 %223, -1
  %225 = sub i32 %224, 185693710
  %sub10 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload, -1
  %idxprom11 = sext i32 %225 to i64
  %.reg2mem140.0..reload152 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %arrayidx12 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload152, i64 %idxprom11
  %j.0.reload.reg2mem.0.j.0.reload.reload176 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom13 = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload176 to i64
  %.reg2mem140.0..reload153 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload153, i64 %idxprom13, i32 2
  store %struct.DLL* %arrayidx12, %struct.DLL** %prev, align 8, !tbaa !1
  %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload = load volatile i32, i32* %from.addr.1.reload.reg2mem, align 4
  %226 = sub i32 %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload, 438248373
  %227 = add i32 %226, 1
  %228 = add i32 %227, 438248373
  %inc = add nsw i32 %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload, 1
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload151, i64 %idxprom8, i32 0
  %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload173 = load volatile i32, i32* %from.addr.1.reload.reg2mem, align 4
  store i32 %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload173, i32* %val, align 8, !tbaa !8
  %j.0.reload.reg2mem.0.j.0.reload.reload177 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %229 = add i32 %j.0.reload.reg2mem.0.j.0.reload.reload177, 181668433
  %230 = add i32 %229, 1
  %231 = sub i32 %230, 181668433
  %inc18 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload177, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %232 = load i32, i32* @x.30, align 4
  %233 = load i32, i32* @y.31, align 4
  %234 = add i32 %232, -853509668
  %235 = add i32 %234, -1
  %236 = sub i32 %235, -853509668
  %237 = add i32 %232, -1
  %238 = mul i32 %236, %232
  %239 = xor i32 %238, -1
  %240 = xor i32 1, -1
  %241 = xor i32 -132356494, -1
  %242 = or i32 %239, %240
  %243 = or i32 -132356494, %241
  %244 = xor i32 %242, -1
  %245 = and i32 %244, %243
  %246 = and i32 %238, 1
  %247 = icmp eq i32 %245, 0
  %248 = icmp slt i32 %233, 10
  %249 = xor i1 %248, true
  %250 = xor i1 %247, true
  %251 = xor i1 true, true
  %252 = and i1 %249, true
  %253 = and i1 %248, %251
  %254 = and i1 %250, true
  %255 = and i1 %247, %251
  %256 = or i1 %252, %253
  %257 = or i1 %254, %255
  %258 = xor i1 %256, %257
  %259 = or i1 %249, %250
  %260 = xor i1 %259, true
  %261 = or i1 true, %251
  %262 = and i1 %260, %261
  %263 = or i1 %258, %262
  %264 = or i1 %248, %247
  %265 = select i1 %263, i32 1240062418, i32 1503685812
  br label %loopEntry.backedge

originalBB125:                                    ; preds = %loopEntry
  %add.reg2mem.0.add.reload138 = load volatile i32, i32* %add.reg2mem, align 4
  %idxprom19 = sext i32 %add.reg2mem.0.add.reload138 to i64
  %.reg2mem140.0..reload149 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %arrayidx20 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload149, i64 %idxprom19
  %.reg2mem140.0..reload148 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %prev22 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload148, i64 0, i32 2
  store %struct.DLL* %arrayidx20, %struct.DLL** %prev22, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload149, i64 %idxprom19, i32 1
  %.reg2mem140.0..reload147 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  store %struct.DLL* %.reg2mem140.0..reload147, %struct.DLL** %next26, align 8, !tbaa !7
  %sub.reg2mem.0.sub.reload132 = load volatile i32, i32* %sub.reg2mem, align 4
  %idxprom28 = sext i32 %sub.reg2mem.0.sub.reload132 to i64
  %.reg2mem140.0..reload154 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %arrayidx29 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload154, i64 %idxprom28
  %prev32 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload149, i64 %idxprom19, i32 2
  store %struct.DLL* %arrayidx29, %struct.DLL** %prev32, align 8, !tbaa !1
  %val35 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx20, i64 0, i32 0
  %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload174 = load volatile i32, i32* %from.addr.1.reload.reg2mem, align 4
  store i32 %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload174, i32* %val35, align 8, !tbaa !8
  %.reg2mem140.0..reload146 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %val37 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload146, i64 0, i32 0
  %add.reg2mem.0.add.reload139 = load volatile i32, i32* %add.reg2mem, align 4
  store i32 %add.reg2mem.0.add.reload139, i32* %val37, align 8, !tbaa !8
  %266 = load i32, i32* @x.30, align 4
  %267 = load i32, i32* @y.31, align 4
  %268 = sub i32 0, %266
  %269 = sub i32 0, -1
  %270 = add i32 %268, %269
  %271 = sub i32 0, %270
  %272 = add i32 %266, -1
  %273 = mul i32 %271, %266
  %274 = xor i32 %273, -1
  %275 = xor i32 1, -1
  %276 = xor i32 -873037307, -1
  %277 = or i32 %274, %275
  %278 = or i32 -873037307, %276
  %279 = xor i32 %277, -1
  %280 = and i32 %279, %278
  %281 = and i32 %273, 1
  %282 = icmp eq i32 %280, 0
  %283 = icmp slt i32 %267, 10
  %284 = xor i1 %283, true
  %285 = xor i1 %282, true
  %286 = xor i1 true, true
  %287 = and i1 %284, true
  %288 = and i1 %283, %286
  %289 = and i1 %285, true
  %290 = and i1 %282, %286
  %291 = or i1 %287, %288
  %292 = or i1 %289, %290
  %293 = xor i1 %291, %292
  %294 = or i1 %284, %285
  %295 = xor i1 %294, true
  %296 = or i1 true, %286
  %297 = and i1 %295, %296
  %298 = or i1 %293, %297
  %299 = or i1 %283, %282
  %300 = select i1 %298, i32 1918781793, i32 1503685812
  br label %loopEntry.backedge

originalBBpart2127:                               ; preds = %loopEntry
  %.reg2mem140.0..reload155 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  ret %struct.DLL* %.reg2mem140.0..reload155

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB75alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB79alteredBB:                            ; preds = %loopEntry
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload159 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload168 = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload160 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload169 = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload161 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload162 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload170 = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload171 = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload163 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload172 = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload164 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload157 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %to.addr.0.reload.reg2mem.0.to.addr.0.reload.reload167 = load volatile i32, i32* %to.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload165 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload166 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  %from.addr.0.reload.reg2mem.0.from.addr.0.reload.reload158 = load volatile i32, i32* %from.addr.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB121alteredBB:                           ; preds = %loopEntry
  %add.reg2mem.0.add.reload135 = load volatile i32, i32* %add.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload180 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB125alteredBB:                           ; preds = %loopEntry
  %add.reg2mem.0.add.reload134 = load volatile i32, i32* %add.reg2mem, align 4
  %idxprom19alteredBB = sext i32 %add.reg2mem.0.add.reload134 to i64
  %.reg2mem140.0..reload145 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %arrayidx20alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload145, i64 %idxprom19alteredBB
  %.reg2mem140.0..reload144 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %prev22alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload144, i64 0, i32 2
  store %struct.DLL* %arrayidx20alteredBB, %struct.DLL** %prev22alteredBB, align 8, !tbaa !1
  %next26alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload145, i64 %idxprom19alteredBB, i32 1
  %.reg2mem140.0..reload143 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  store %struct.DLL* %.reg2mem140.0..reload143, %struct.DLL** %next26alteredBB, align 8, !tbaa !7
  %sub.reg2mem.0.sub.reload = load volatile i32, i32* %sub.reg2mem, align 4
  %idxprom28alteredBB = sext i32 %sub.reg2mem.0.sub.reload to i64
  %.reg2mem140.0..reload142 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %arrayidx29alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload142, i64 %idxprom28alteredBB
  %prev32alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload145, i64 %idxprom19alteredBB, i32 2
  store %struct.DLL* %arrayidx29alteredBB, %struct.DLL** %prev32alteredBB, align 8, !tbaa !1
  %val35alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx20alteredBB, i64 0, i32 0
  %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload175 = load volatile i32, i32* %from.addr.1.reload.reg2mem, align 4
  store i32 %from.addr.1.reload.reg2mem.0.from.addr.1.reload.reload175, i32* %val35alteredBB, align 8, !tbaa !8
  %.reg2mem140.0..reload141 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem140, align 8
  %val37alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem140.0..reload141, i64 0, i32 0
  %add.reg2mem.0.add.reload = load volatile i32, i32* %add.reg2mem, align 4
  store i32 %add.reg2mem.0.add.reload, i32* %val37alteredBB, align 8, !tbaa !8
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define %struct.DLL* @list_copy(%struct.DLL* %x) local_unnamed_addr #1 {
entry:
  %j.0.reload.reg2mem = alloca i32, align 4
  %xp.0.reload.reg2mem = alloca %struct.DLL*, align 8
  %i.0.reload.reg2mem = alloca i32, align 4
  %.reg2mem = alloca %struct.DLL*, align 8
  %call.reg2mem = alloca i32, align 4
  %x.idx = getelementptr %struct.DLL, %struct.DLL* %x, i64 0, i32 0
  %x.idx.val = load i32, i32* %x.idx, align 8, !tbaa !8
  store i32 %x.idx.val, i32* %call.reg2mem, align 4
  %call.reg2mem.0.call.reload55 = load volatile i32, i32* %call.reg2mem, align 4
  %0 = sub i32 0, %call.reg2mem.0.call.reload55
  %1 = sub i32 0, 1
  %2 = add i32 %0, %1
  %3 = sub i32 0, %2
  %add = add nsw i32 %call.reg2mem.0.call.reload55, 1
  %conv = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, 24
  %call1 = tail call noalias i8* @malloc(i64 %mul) #5
  %4 = bitcast %struct.DLL** %.reg2mem to i8**
  store i8* %call1, i8** %4, align 8
  %x.idx71 = getelementptr %struct.DLL, %struct.DLL* %x, i64 0, i32 2
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %for.body.split, %entry
  %i.0.reg2mem.0.ph = phi i32 [ %10, %for.body.split ], [ 0, %entry ]
  %xp.0.reg2mem.0.ph = phi %struct.DLL* [ %14, %for.body.split ], [ %x, %entry ]
  %j.0.reg2mem.0.ph = phi i32 [ %13, %for.body.split ], [ 1, %entry ]
  br label %loopEntry.outer72

loopEntry.outer72:                                ; preds = %loopEntry.outer72.backedge, %loopEntry.outer
  %switchVar.0.ph = phi i32 [ -1157112617, %loopEntry.outer ], [ %switchVar.0.ph.be, %loopEntry.outer72.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 -1157112617, label %for.cond.split
    i32 -339835782, label %for.body.split
    i32 -744945369, label %for.end.split
    i32 1234088915, label %originalBB.split
    i32 -1977653645, label %originalBBpart2.split
    i32 -13623304, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer72
  br label %infloop

for.cond.split:                                   ; preds = %loopEntry.outer72
  store i32 %i.0.reg2mem.0.ph, i32* %i.0.reload.reg2mem, align 4
  store %struct.DLL* %xp.0.reg2mem.0.ph, %struct.DLL** %xp.0.reload.reg2mem, align 8
  store i32 %j.0.reg2mem.0.ph, i32* %j.0.reload.reg2mem, align 4
  %call.reg2mem.0.call.reload56 = load volatile i32, i32* %call.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %call.reg2mem.0.call.reload56
  %5 = select i1 %cmp, i32 -339835782, i32 -744945369
  br label %loopEntry.outer72.backedge

for.body.split:                                   ; preds = %loopEntry.outer72
  %j.0.reload.reg2mem.0.j.0.reload.reload = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %idxprom = sext i32 %j.0.reload.reg2mem.0.j.0.reload.reload to i64
  %.reg2mem.0..reload63 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  %arrayidx = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload63, i64 %idxprom
  %i.0.reload.reg2mem.0.i.0.reload.reload66 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom3 = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload66 to i64
  %.reg2mem.0..reload64 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  %arrayidx4 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload64, i64 %idxprom3
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload64, i64 %idxprom3, i32 1
  store %struct.DLL* %arrayidx, %struct.DLL** %next, align 8, !tbaa !7
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload63, i64 %idxprom, i32 2
  store %struct.DLL* %arrayidx4, %struct.DLL** %prev, align 8, !tbaa !1
  %xp.0.reload.reg2mem.0.xp.0.reload.reload = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload, i64 0, i32 0
  %6 = load i32, i32* %val, align 8, !tbaa !8
  %val11 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx4, i64 0, i32 0
  store i32 %6, i32* %val11, align 8, !tbaa !8
  %i.0.reload.reg2mem.0.i.0.reload.reload67 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %7 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload67
  %8 = sub i32 0, 1
  %9 = add i32 %7, %8
  %10 = sub i32 0, %9
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload67, 1
  %j.0.reload.reg2mem.0.j.0.reload.reload69 = load volatile i32, i32* %j.0.reload.reg2mem, align 4
  %11 = sub i32 %j.0.reload.reg2mem.0.j.0.reload.reload69, 623311079
  %12 = add i32 %11, 1
  %13 = add i32 %12, 623311079
  %inc12 = add nsw i32 %j.0.reload.reg2mem.0.j.0.reload.reload69, 1
  %xp.0.reload.reg2mem.0.xp.0.reload.reload68 = load volatile %struct.DLL*, %struct.DLL** %xp.0.reload.reg2mem, align 8
  %next13 = getelementptr inbounds %struct.DLL, %struct.DLL* %xp.0.reload.reg2mem.0.xp.0.reload.reload68, i64 0, i32 1
  %14 = load %struct.DLL*, %struct.DLL** %next13, align 8, !tbaa !7
  br label %loopEntry.outer

for.end.split:                                    ; preds = %loopEntry.outer72
  %15 = load i32, i32* @x.32, align 4
  %16 = load i32, i32* @y.33, align 4
  %17 = sub i32 %15, -1778485497
  %18 = add i32 %17, -1
  %19 = add i32 %18, -1778485497
  %20 = add i32 %15, -1
  %21 = mul i32 %19, %15
  %22 = xor i32 %21, -1
  %23 = xor i32 1, -1
  %24 = xor i32 -906019895, -1
  %25 = or i32 %22, %23
  %26 = or i32 -906019895, %24
  %27 = xor i32 %25, -1
  %28 = and i32 %27, %26
  %29 = and i32 %21, 1
  %30 = icmp eq i32 %28, 0
  %31 = icmp slt i32 %16, 10
  %32 = xor i1 %31, true
  %33 = xor i1 %30, true
  %34 = xor i1 false, true
  %35 = and i1 %32, false
  %36 = and i1 %31, %34
  %37 = and i1 %33, false
  %38 = and i1 %30, %34
  %39 = or i1 %35, %36
  %40 = or i1 %37, %38
  %41 = xor i1 %39, %40
  %42 = or i1 %32, %33
  %43 = xor i1 %42, true
  %44 = or i1 false, %34
  %45 = and i1 %43, %44
  %46 = or i1 %41, %45
  %47 = or i1 %31, %30
  %48 = select i1 %46, i32 1234088915, i32 -13623304
  br label %loopEntry.outer72.backedge

originalBB.split:                                 ; preds = %loopEntry.outer72
  %call.reg2mem.0.call.reload57 = load volatile i32, i32* %call.reg2mem, align 4
  %idxprom14 = sext i32 %call.reg2mem.0.call.reload57 to i64
  %.reg2mem.0..reload62 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  %arrayidx15 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload62, i64 %idxprom14
  %.reg2mem.0..reload61 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  %prev17 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload61, i64 0, i32 2
  store %struct.DLL* %arrayidx15, %struct.DLL** %prev17, align 8, !tbaa !1
  %next21 = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload62, i64 %idxprom14, i32 1
  %.reg2mem.0..reload60 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  store %struct.DLL* %.reg2mem.0..reload60, %struct.DLL** %next21, align 8, !tbaa !7
  %x.idx71.val = load %struct.DLL*, %struct.DLL** %x.idx71, align 8, !tbaa !1
  %val23 = getelementptr inbounds %struct.DLL, %struct.DLL* %x.idx71.val, i64 0, i32 0
  %49 = load i32, i32* %val23, align 8, !tbaa !8
  %val26 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx15, i64 0, i32 0
  store i32 %49, i32* %val26, align 8, !tbaa !8
  %50 = load i32, i32* @x.32, align 4
  %51 = load i32, i32* @y.33, align 4
  %52 = sub i32 0, -1
  %53 = sub i32 %50, %52
  %54 = add i32 %50, -1
  %55 = mul i32 %53, %50
  %56 = xor i32 %55, -1
  %57 = xor i32 1, -1
  %58 = xor i32 -313220604, -1
  %59 = or i32 %56, %57
  %60 = or i32 -313220604, %58
  %61 = xor i32 %59, -1
  %62 = and i32 %61, %60
  %63 = and i32 %55, 1
  %64 = icmp eq i32 %62, 0
  %65 = icmp slt i32 %51, 10
  %66 = and i1 %65, %64
  %67 = xor i1 %65, %64
  %68 = or i1 %66, %67
  %69 = or i1 %65, %64
  %70 = select i1 %68, i32 -1977653645, i32 -13623304
  br label %loopEntry.outer72.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer72
  %.reg2mem.0..reload65 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  ret %struct.DLL* %.reg2mem.0..reload65

originalBBalteredBB.split:                        ; preds = %loopEntry.outer72
  %call.reg2mem.0.call.reload = load volatile i32, i32* %call.reg2mem, align 4
  %idxprom14alteredBB = sext i32 %call.reg2mem.0.call.reload to i64
  %.reg2mem.0..reload59 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  %arrayidx15alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload59, i64 %idxprom14alteredBB
  %.reg2mem.0..reload58 = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  %prev17alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload58, i64 0, i32 2
  store %struct.DLL* %arrayidx15alteredBB, %struct.DLL** %prev17alteredBB, align 8, !tbaa !1
  %next21alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %.reg2mem.0..reload59, i64 %idxprom14alteredBB, i32 1
  %.reg2mem.0..reload = load volatile %struct.DLL*, %struct.DLL** %.reg2mem, align 8
  store %struct.DLL* %.reg2mem.0..reload, %struct.DLL** %next21alteredBB, align 8, !tbaa !7
  %x.idx70.val = load %struct.DLL*, %struct.DLL** %x.idx71, align 8, !tbaa !1
  %val23alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %x.idx70.val, i64 0, i32 0
  %71 = load i32, i32* %val23alteredBB, align 8, !tbaa !8
  %val26alteredBB = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx15alteredBB, i64 0, i32 0
  store i32 %71, i32* %val26alteredBB, align 8, !tbaa !8
  br label %loopEntry.outer72.backedge

loopEntry.outer72.backedge:                       ; preds = %originalBBalteredBB.split, %originalBB.split, %for.end.split, %for.cond.split
  %switchVar.0.ph.be = phi i32 [ %5, %for.cond.split ], [ %48, %for.end.split ], [ %70, %originalBB.split ], [ 1234088915, %originalBBalteredBB.split ]
  br label %loopEntry.outer72

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: norecurse nounwind uwtable
define void @list_reverse(%struct.DLL* %head) local_unnamed_addr #0 {
entry:
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %do.body.split, %entry
  %p.0.reg2mem.0.ph = phi %struct.DLL* [ %0, %do.body.split ], [ %head, %entry ]
  %switchVar.0.ph = phi i32 [ %4, %do.body.split ], [ 1469553320, %entry ]
  %trunc17 = trunc i32 %switchVar.0.ph to i26
  switch i26 %trunc17, label %infloop.preheader [
    i26 -6841688, label %do.body.split
    i26 16954173, label %do.end.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

do.body.split:                                    ; preds = %loopEntry.outer
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %p.0.reg2mem.0.ph, i64 0, i32 1
  %0 = load %struct.DLL*, %struct.DLL** %next, align 8, !tbaa !7
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %p.0.reg2mem.0.ph, i64 0, i32 2
  %1 = bitcast %struct.DLL** %prev to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !1
  %3 = bitcast %struct.DLL** %next to i64*
  store i64 %2, i64* %3, align 8, !tbaa !7
  store %struct.DLL* %0, %struct.DLL** %prev, align 8, !tbaa !1
  %cmp = icmp ne %struct.DLL* %0, %head
  %4 = select i1 %cmp, i32 1469553320, i32 1426240317
  br label %loopEntry.outer

do.end.split:                                     ; preds = %loopEntry.outer
  ret void

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind uwtable
define i32 @test_lists() local_unnamed_addr #1 {
entry:
  %call.reg2mem.i165 = alloca i32, align 4
  %call.reg2mem.i = alloca i32, align 4
  %tobool62.reg2mem = alloca i1, align 1
  %cmp41.reg2mem = alloca i1, align 1
  %cmp.reg2mem = alloca i1, align 1
  %lnot16.reg2mem = alloca i1, align 1
  %tobool.reg2mem = alloca i1, align 1
  %call2.reg2mem = alloca %struct.DLL*, align 8
  %call1.reg2mem = alloca %struct.DLL*, align 8
  %call.reg2mem = alloca %struct.DLL*, align 8
  %.reg2mem110 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.38, align 4
  %1 = load i32, i32* @y.39, align 4
  %2 = add i32 %0, 1192260438
  %3 = add i32 %2, -1
  %4 = sub i32 %3, 1192260438
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 1, -1
  %8 = xor i32 %6, %7
  %9 = and i32 %8, %6
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %9, 0
  store i1 %11, i1* %.reg2mem, align 1
  %12 = icmp slt i32 %1, 10
  store i1 %12, i1* %.reg2mem110, align 1
  %13 = bitcast %struct.DLL** %call2.reg2mem to i8**
  %call.reg2mem.i.0..sroa_cast = bitcast i32* %call.reg2mem.i to i8*
  %call.reg2mem.i165.0..sroa_cast = bitcast i32* %call.reg2mem.i165 to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %switchVar.0 = phi i32 [ 623299229, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 623299229, label %first
    i32 -2040181695, label %originalBB
    i32 184662104, label %originalBBpart2
    i32 886106555, label %if.then
    i32 1817329904, label %while.cond
    i32 -1667780725, label %while.body
    i32 -2084759519, label %while.end
    i32 758459428, label %if.then10
    i32 1927194538, label %while.cond13
    i32 -1561257111, label %originalBB93
    i32 504989698, label %originalBBpart295
    i32 2010572567, label %while.body17
    i32 -1553493033, label %while.end19
    i32 103754126, label %if.then22
    i32 1996050304, label %if.end24
    i32 1271070215, label %originalBB97
    i32 -1900268042, label %originalBBpart299
    i32 239168192, label %if.then26
    i32 -1788455499, label %if.end30
    i32 1183509624, label %if.then34
    i32 1944085905, label %if.end38
    i32 323854062, label %originalBB101
    i32 -901205018, label %originalBBpart2103
    i32 -2054102549, label %if.then42
    i32 1329000066, label %if.end46
    i32 -940696839, label %if.then50
    i32 -814727727, label %if.end54
    i32 2014428180, label %if.then57
    i32 1543301679, label %if.end60
    i32 -2135456872, label %originalBB105
    i32 828463183, label %originalBBpart2107
    i32 1827894427, label %if.then63
    i32 2122660175, label %if.end65
    i32 1775705820, label %originalBBalteredBB
    i32 1059360408, label %originalBB93alteredBB
    i32 -1888826212, label %originalBB97alteredBB
    i32 -1002446964, label %originalBB101alteredBB
    i32 -2015028948, label %originalBB105alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB105alteredBB, %originalBB101alteredBB, %list_reverse.exit, %originalBB93alteredBB, %originalBBalteredBB, %originalBBpart2107, %originalBB105, %if.end60, %if.end54, %if.end46, %originalBBpart2103, %originalBB101, %if.end38, %if.end30, %originalBBpart299, %list_reverse.exit199, %if.end24, %while.end19, %list_pop_tail.exit, %originalBBpart295, %originalBB93, %while.cond13, %while.end, %list_pop_head.exit, %while.cond, %originalBBpart2, %originalBB, %first
  %switchVar.0.be = phi i32 [ -2135456872, %originalBB105alteredBB ], [ 323854062, %originalBB101alteredBB ], [ 1271070215, %list_reverse.exit ], [ -1561257111, %originalBB93alteredBB ], [ -2040181695, %originalBBalteredBB ], [ %330, %originalBBpart2107 ], [ %329, %originalBB105 ], [ %310, %if.end60 ], [ %281, %if.end54 ], [ %279, %if.end46 ], [ %276, %originalBBpart2103 ], [ %275, %originalBB101 ], [ %252, %if.end38 ], [ %221, %if.end30 ], [ %218, %originalBBpart299 ], [ %217, %list_reverse.exit199 ], [ %190, %if.end24 ], [ %160, %while.end19 ], [ 1927194538, %list_pop_tail.exit ], [ %131, %originalBBpart295 ], [ %130, %originalBB93 ], [ %97, %while.cond13 ], [ %79, %while.end ], [ 1817329904, %list_pop_head.exit ], [ %64, %while.cond ], [ %63, %originalBBpart2 ], [ %62, %originalBB ], [ %30, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem110.0..reload111 = load volatile i1, i1* %.reg2mem110, align 1
  %14 = xor i1 %.reg2mem.0..reload, true
  %15 = xor i1 %.reg2mem110.0..reload111, true
  %16 = xor i1 true, true
  %17 = and i1 %14, true
  %18 = and i1 %.reg2mem.0..reload, %16
  %19 = and i1 %15, true
  %20 = and i1 %.reg2mem110.0..reload111, %16
  %21 = or i1 %17, %18
  %22 = or i1 %19, %20
  %23 = xor i1 %21, %22
  %24 = or i1 %14, %15
  %25 = xor i1 %24, true
  %26 = or i1 true, %16
  %27 = and i1 %25, %26
  %28 = or i1 %23, %27
  %29 = or i1 %.reg2mem.0..reload, %.reg2mem110.0..reload111
  %30 = select i1 %28, i32 -2040181695, i32 1775705820
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %call = tail call %struct.DLL* @list_sequence(i32 1, i32 100)
  store %struct.DLL* %call, %struct.DLL** %call.reg2mem, align 8
  %call.reg2mem.0.call.reload114 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call1 = tail call %struct.DLL* @list_copy(%struct.DLL* %call.reg2mem.0.call.reload114)
  store %struct.DLL* %call1, %struct.DLL** %call1.reg2mem, align 8
  %call.i = tail call noalias i8* @malloc(i64 24) #5
  %next.i = getelementptr inbounds i8, i8* %call.i, i64 8
  %31 = bitcast i8* %next.i to i8**
  store i8* %call.i, i8** %31, align 8, !tbaa !7
  %prev.i = getelementptr inbounds i8, i8* %call.i, i64 16
  %32 = bitcast i8* %prev.i to i8**
  store i8* %call.i, i8** %32, align 8, !tbaa !1
  %val.i = bitcast i8* %call.i to i32*
  store i32 0, i32* %val.i, align 8, !tbaa !8
  store i8* %call.i, i8** %13, align 8
  %call.reg2mem.0.call.reload115 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call1.reg2mem.0.call1.reload127 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call3 = tail call i32 @list_equal(%struct.DLL* %call1.reg2mem.0.call1.reload127, %struct.DLL* %call.reg2mem.0.call.reload115)
  %tobool = icmp ne i32 %call3, 0
  store i1 %tobool, i1* %tobool.reg2mem, align 1
  %33 = load i32, i32* @x.38, align 4
  %34 = load i32, i32* @y.39, align 4
  %35 = sub i32 %33, -22650374
  %36 = add i32 %35, -1
  %37 = add i32 %36, -22650374
  %38 = add i32 %33, -1
  %39 = mul i32 %37, %33
  %40 = xor i32 1, -1
  %41 = xor i32 %39, %40
  %42 = and i32 %41, %39
  %43 = and i32 %39, 1
  %44 = icmp eq i32 %42, 0
  %45 = icmp slt i32 %34, 10
  %46 = xor i1 %45, true
  %47 = xor i1 %44, true
  %48 = xor i1 true, true
  %49 = and i1 %46, true
  %50 = and i1 %45, %48
  %51 = and i1 %47, true
  %52 = and i1 %44, %48
  %53 = or i1 %49, %50
  %54 = or i1 %51, %52
  %55 = xor i1 %53, %54
  %56 = or i1 %46, %47
  %57 = xor i1 %56, true
  %58 = or i1 true, %48
  %59 = and i1 %57, %58
  %60 = or i1 %55, %59
  %61 = or i1 %45, %44
  %62 = select i1 %60, i32 184662104, i32 1775705820
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %tobool.reg2mem.0.tobool.reload = load volatile i1, i1* %tobool.reg2mem, align 1
  %63 = select i1 %tobool.reg2mem.0.tobool.reload, i32 1817329904, i32 886106555
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %puts145 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.48, i64 0, i64 0))
  tail call void @exit(i32 1) #6
  unreachable

while.cond:                                       ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload128 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call1.reload128.idx = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload128, i64 0, i32 0
  %call1.reload128.idx.val = load i32, i32* %call1.reload128.idx, align 8, !tbaa !8
  %cmp.i = icmp eq i32 %call1.reload128.idx.val, 0
  %64 = select i1 %cmp.i, i32 -2084759519, i32 -1667780725
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload129 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  call void @llvm.lifetime.start(i64 4, i8* nonnull %call.reg2mem.i.0..sroa_cast)
  %head.idx.i = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload129, i64 0, i32 0
  %head.idx.val.i = load i32, i32* %head.idx.i, align 8, !tbaa !8
  %cmp.i.i = icmp eq i32 %head.idx.val.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  store i32 %conv.i.i, i32* %call.reg2mem.i, align 4
  %next1.i = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload129, i64 0, i32 1
  %65 = bitcast %struct.DLL** %next1.i to i64*
  br label %loopEntry.outer.outer.i

loopEntry.outer.outer.i:                          ; preds = %if.end.split.i, %while.body
  %.ph.i = phi i32 [ %73, %if.end.split.i ], [ %head.idx.val.i, %while.body ]
  %retval.0.reg2mem.0.ph.ph.i = phi %struct.DLL* [ %67, %if.end.split.i ], [ undef, %while.body ]
  %switchVar.0.ph.ph.i = phi i32 [ 527903123, %if.end.split.i ], [ -1644700431, %while.body ]
  br label %loopEntry.outer.i

loopEntry.outer.i.loopexit:                       ; preds = %loopEntry.outer13.i
  br label %loopEntry.outer.i

loopEntry.outer.i:                                ; preds = %loopEntry.outer.i.loopexit, %loopEntry.outer.outer.i
  %retval.0.reg2mem.0.ph.i = phi %struct.DLL* [ %retval.0.reg2mem.0.ph.ph.i, %loopEntry.outer.outer.i ], [ null, %loopEntry.outer.i.loopexit ]
  %switchVar.0.ph.i = phi i32 [ %switchVar.0.ph.ph.i, %loopEntry.outer.outer.i ], [ 527903123, %loopEntry.outer.i.loopexit ]
  br label %loopEntry.outer13.i

loopEntry.outer13.i:                              ; preds = %first.split.i, %loopEntry.outer.i
  %switchVar.0.ph14.i = phi i32 [ %switchVar.0.ph.i, %loopEntry.outer.i ], [ %66, %first.split.i ]
  switch i32 %switchVar.0.ph14.i, label %infloop.i.preheader [
    i32 -1644700431, label %first.split.i
    i32 1309318401, label %loopEntry.outer.i.loopexit
    i32 1083787673, label %if.end.split.i
    i32 527903123, label %list_pop_head.exit
  ]

infloop.i.preheader:                              ; preds = %loopEntry.outer13.i
  br label %infloop.i

first.split.i:                                    ; preds = %loopEntry.outer13.i
  %call.reg2mem.i.0.call.reg2mem.0.call.reload.i = load volatile i32, i32* %call.reg2mem.i, align 4
  %tobool.i = icmp ne i32 %call.reg2mem.i.0.call.reg2mem.0.call.reload.i, 0
  %66 = select i1 %tobool.i, i32 1309318401, i32 1083787673
  br label %loopEntry.outer13.i

if.end.split.i:                                   ; preds = %loopEntry.outer13.i
  %67 = load %struct.DLL*, %struct.DLL** %next1.i, align 8, !tbaa !7
  %next2.i = getelementptr inbounds %struct.DLL, %struct.DLL* %67, i64 0, i32 1
  %68 = bitcast %struct.DLL** %next2.i to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !7
  store i64 %69, i64* %65, align 8, !tbaa !7
  %70 = load %struct.DLL*, %struct.DLL** %next2.i, align 8, !tbaa !7
  %prev.i146 = getelementptr inbounds %struct.DLL, %struct.DLL* %70, i64 0, i32 2
  store %struct.DLL* %call1.reg2mem.0.call1.reload129, %struct.DLL** %prev.i146, align 8, !tbaa !1
  %71 = sub i32 %.ph.i, -1353323848
  %72 = add i32 %71, -1
  %73 = add i32 %72, -1353323848
  %dec.i = add nsw i32 %.ph.i, -1
  store i32 %73, i32* %head.idx.i, align 8, !tbaa !8
  br label %loopEntry.outer.outer.i

infloop.i:                                        ; preds = %infloop.i.preheader, %infloop.i
  br label %infloop.i

list_pop_head.exit:                               ; preds = %loopEntry.outer13.i
  call void @llvm.lifetime.end(i64 4, i8* nonnull %call.reg2mem.i.0..sroa_cast)
  %call2.reg2mem.0.call2.reload138 = load volatile %struct.DLL*, %struct.DLL** %call2.reg2mem, align 8
  %prev.i153 = getelementptr inbounds %struct.DLL, %struct.DLL* %call2.reg2mem.0.call2.reload138, i64 0, i32 2
  %74 = load %struct.DLL*, %struct.DLL** %prev.i153, align 8, !tbaa !1
  %next.i154 = getelementptr inbounds %struct.DLL, %struct.DLL* %74, i64 0, i32 1
  store %struct.DLL* %retval.0.reg2mem.0.ph.i, %struct.DLL** %next.i154, align 8, !tbaa !7
  %next1.i155 = getelementptr inbounds %struct.DLL, %struct.DLL* %retval.0.reg2mem.0.ph.i, i64 0, i32 1
  store %struct.DLL* %call2.reg2mem.0.call2.reload138, %struct.DLL** %next1.i155, align 8, !tbaa !7
  store %struct.DLL* %retval.0.reg2mem.0.ph.i, %struct.DLL** %prev.i153, align 8, !tbaa !1
  %prev3.i = getelementptr inbounds %struct.DLL, %struct.DLL* %retval.0.reg2mem.0.ph.i, i64 0, i32 2
  store %struct.DLL* %74, %struct.DLL** %prev3.i, align 8, !tbaa !1
  %val.i156 = getelementptr inbounds %struct.DLL, %struct.DLL* %call2.reg2mem.0.call2.reload138, i64 0, i32 0
  %75 = load i32, i32* %val.i156, align 8, !tbaa !8
  %76 = add i32 %75, 1723700997
  %77 = add i32 %76, 1
  %78 = sub i32 %77, 1723700997
  %inc.i = add nsw i32 %75, 1
  store i32 %78, i32* %val.i156, align 8, !tbaa !8
  br label %loopEntry.backedge

while.end:                                        ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload130 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call1.reload130.idx = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload130, i64 0, i32 0
  %call1.reload130.idx.val = load i32, i32* %call1.reload130.idx, align 8, !tbaa !8
  %cmp.i161 = icmp eq i32 %call1.reload130.idx.val, 0
  %79 = select i1 %cmp.i161, i32 1927194538, i32 758459428
  br label %loopEntry.backedge

if.then10:                                        ; preds = %loopEntry
  %puts144 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.47, i64 0, i64 0))
  tail call void @exit(i32 1) #6
  unreachable

while.cond13:                                     ; preds = %loopEntry
  %80 = load i32, i32* @x.38, align 4
  %81 = load i32, i32* @y.39, align 4
  %82 = sub i32 %80, -190711429
  %83 = add i32 %82, -1
  %84 = add i32 %83, -190711429
  %85 = add i32 %80, -1
  %86 = mul i32 %84, %80
  %87 = xor i32 1, -1
  %88 = xor i32 %86, %87
  %89 = and i32 %88, %86
  %90 = and i32 %86, 1
  %91 = icmp eq i32 %89, 0
  %92 = icmp slt i32 %81, 10
  %93 = and i1 %92, %91
  %94 = xor i1 %92, %91
  %95 = or i1 %93, %94
  %96 = or i1 %92, %91
  %97 = select i1 %95, i32 -1561257111, i32 1059360408
  br label %loopEntry.backedge

originalBB93:                                     ; preds = %loopEntry
  %call2.reg2mem.0.call2.reload139 = load volatile %struct.DLL*, %struct.DLL** %call2.reg2mem, align 8
  %call2.reload139.idx = getelementptr %struct.DLL, %struct.DLL* %call2.reg2mem.0.call2.reload139, i64 0, i32 0
  %call2.reload139.idx.val = load i32, i32* %call2.reload139.idx, align 8, !tbaa !8
  %lnot16 = icmp ne i32 %call2.reload139.idx.val, 0
  store i1 %lnot16, i1* %lnot16.reg2mem, align 1
  %98 = load i32, i32* @x.38, align 4
  %99 = load i32, i32* @y.39, align 4
  %100 = sub i32 0, -1
  %101 = sub i32 %98, %100
  %102 = add i32 %98, -1
  %103 = mul i32 %101, %98
  %104 = xor i32 %103, -1
  %105 = xor i32 1, -1
  %106 = xor i32 -1671874148, -1
  %107 = or i32 %104, %105
  %108 = or i32 -1671874148, %106
  %109 = xor i32 %107, -1
  %110 = and i32 %109, %108
  %111 = and i32 %103, 1
  %112 = icmp eq i32 %110, 0
  %113 = icmp slt i32 %99, 10
  %114 = xor i1 %113, true
  %115 = xor i1 %112, true
  %116 = xor i1 false, true
  %117 = and i1 %114, false
  %118 = and i1 %113, %116
  %119 = and i1 %115, false
  %120 = and i1 %112, %116
  %121 = or i1 %117, %118
  %122 = or i1 %119, %120
  %123 = xor i1 %121, %122
  %124 = or i1 %114, %115
  %125 = xor i1 %124, true
  %126 = or i1 false, %116
  %127 = and i1 %125, %126
  %128 = or i1 %123, %127
  %129 = or i1 %113, %112
  %130 = select i1 %128, i32 504989698, i32 1059360408
  br label %loopEntry.backedge

originalBBpart295:                                ; preds = %loopEntry
  %lnot16.reg2mem.0.lnot16.reload = load volatile i1, i1* %lnot16.reg2mem, align 1
  %131 = select i1 %lnot16.reg2mem.0.lnot16.reload, i32 2010572567, i32 -1553493033
  br label %loopEntry.backedge

while.body17:                                     ; preds = %loopEntry
  %call2.reg2mem.0.call2.reload140 = load volatile %struct.DLL*, %struct.DLL** %call2.reg2mem, align 8
  call void @llvm.lifetime.start(i64 4, i8* nonnull %call.reg2mem.i165.0..sroa_cast)
  %head.idx.i166 = getelementptr %struct.DLL, %struct.DLL* %call2.reg2mem.0.call2.reload140, i64 0, i32 0
  %head.idx.val.i167 = load i32, i32* %head.idx.i166, align 8, !tbaa !8
  %cmp.i.i168 = icmp eq i32 %head.idx.val.i167, 0
  %conv.i.i169 = zext i1 %cmp.i.i168 to i32
  store i32 %conv.i.i169, i32* %call.reg2mem.i165, align 4
  %prev1.i = getelementptr inbounds %struct.DLL, %struct.DLL* %call2.reg2mem.0.call2.reload140, i64 0, i32 2
  br label %loopEntry.outer.outer.i173

loopEntry.outer.outer.i173:                       ; preds = %if.end.split.i182, %while.body17
  %.ph.i170 = phi i32 [ %154, %if.end.split.i182 ], [ %head.idx.val.i167, %while.body17 ]
  %retval.0.reg2mem.0.ph.ph.i171 = phi %struct.DLL* [ %151, %if.end.split.i182 ], [ undef, %while.body17 ]
  %switchVar.0.ph.ph.i172 = phi i32 [ 970493121, %if.end.split.i182 ], [ -436574882, %while.body17 ]
  %132 = load i32, i32* @x.14, align 4
  %133 = load i32, i32* @y.15, align 4
  %134 = sub i32 0, -1
  %135 = sub i32 %132, %134
  %136 = add i32 %132, -1
  %137 = mul i32 %135, %132
  %138 = xor i32 1, -1
  %139 = xor i32 %137, %138
  %140 = and i32 %139, %137
  %141 = and i32 %137, 1
  %142 = icmp eq i32 %140, 0
  %143 = icmp slt i32 %133, 10
  %144 = and i1 %143, %142
  %145 = xor i1 %143, %142
  %146 = or i1 %144, %145
  %147 = or i1 %143, %142
  %148 = select i1 %146, i32 16181237, i32 -2042769353
  %149 = select i1 %146, i32 -1934033342, i32 -2042769353
  br label %loopEntry.outer.i176

loopEntry.outer.i176.loopexit:                    ; preds = %loopEntry.outer14.i
  br label %loopEntry.outer.i176

loopEntry.outer.i176:                             ; preds = %loopEntry.outer.i176.loopexit, %loopEntry.outer.outer.i173
  %retval.0.reg2mem.0.ph.i174 = phi %struct.DLL* [ %retval.0.reg2mem.0.ph.ph.i171, %loopEntry.outer.outer.i173 ], [ null, %loopEntry.outer.i176.loopexit ]
  %switchVar.0.ph.i175 = phi i32 [ %switchVar.0.ph.ph.i172, %loopEntry.outer.outer.i173 ], [ 970493121, %loopEntry.outer.i176.loopexit ]
  br label %loopEntry.outer14.i

loopEntry.outer14.i:                              ; preds = %loopEntry.outer14.i.backedge, %loopEntry.outer.i176
  %switchVar.0.ph15.i = phi i32 [ %switchVar.0.ph.i175, %loopEntry.outer.i176 ], [ %switchVar.0.ph15.i.be, %loopEntry.outer14.i.backedge ]
  switch i32 %switchVar.0.ph15.i, label %infloop.i183.preheader [
    i32 -436574882, label %first.split.i179
    i32 1560280838, label %loopEntry.outer14.i.backedge
    i32 16181237, label %originalBB.split.i
    i32 -1934033342, label %loopEntry.outer.i176.loopexit
    i32 -899647976, label %if.end.split.i182
    i32 970493121, label %list_pop_tail.exit
    i32 -2042769353, label %originalBBalteredBB.i
  ]

loopEntry.outer14.i.backedge:                     ; preds = %loopEntry.outer14.i, %first.split.i179, %originalBB.split.i, %originalBBalteredBB.i
  %switchVar.0.ph15.i.be = phi i32 [ %150, %first.split.i179 ], [ %149, %originalBB.split.i ], [ 16181237, %originalBBalteredBB.i ], [ %148, %loopEntry.outer14.i ]
  br label %loopEntry.outer14.i

infloop.i183.preheader:                           ; preds = %loopEntry.outer14.i
  br label %infloop.i183

first.split.i179:                                 ; preds = %loopEntry.outer14.i
  %call.reg2mem.i165.0.call.reg2mem.0.call.reload.i177 = load volatile i32, i32* %call.reg2mem.i165, align 4
  %tobool.i178 = icmp ne i32 %call.reg2mem.i165.0.call.reg2mem.0.call.reload.i177, 0
  %150 = select i1 %tobool.i178, i32 1560280838, i32 -899647976
  br label %loopEntry.outer14.i.backedge

originalBB.split.i:                               ; preds = %loopEntry.outer14.i
  br label %loopEntry.outer14.i.backedge

if.end.split.i182:                                ; preds = %loopEntry.outer14.i
  %151 = load %struct.DLL*, %struct.DLL** %prev1.i, align 8, !tbaa !1
  %prev2.i = getelementptr inbounds %struct.DLL, %struct.DLL* %151, i64 0, i32 2
  %152 = load %struct.DLL*, %struct.DLL** %prev2.i, align 8, !tbaa !1
  %next.i180 = getelementptr inbounds %struct.DLL, %struct.DLL* %152, i64 0, i32 1
  store %struct.DLL* %call2.reg2mem.0.call2.reload140, %struct.DLL** %next.i180, align 8, !tbaa !7
  store %struct.DLL* %152, %struct.DLL** %prev1.i, align 8, !tbaa !1
  %153 = sub i32 0, -1
  %154 = sub i32 %.ph.i170, %153
  %dec.i181 = add nsw i32 %.ph.i170, -1
  store i32 %154, i32* %head.idx.i166, align 8, !tbaa !8
  br label %loopEntry.outer.outer.i173

originalBBalteredBB.i:                            ; preds = %loopEntry.outer14.i
  br label %loopEntry.outer14.i.backedge

infloop.i183:                                     ; preds = %infloop.i183.preheader, %infloop.i183
  br label %infloop.i183

list_pop_tail.exit:                               ; preds = %loopEntry.outer14.i
  call void @llvm.lifetime.end(i64 4, i8* nonnull %call.reg2mem.i165.0..sroa_cast)
  %call1.reg2mem.0.call1.reload131 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %prev.i184 = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload131, i64 0, i32 2
  %155 = load %struct.DLL*, %struct.DLL** %prev.i184, align 8, !tbaa !1
  %next.i185 = getelementptr inbounds %struct.DLL, %struct.DLL* %155, i64 0, i32 1
  store %struct.DLL* %retval.0.reg2mem.0.ph.i174, %struct.DLL** %next.i185, align 8, !tbaa !7
  %next1.i186 = getelementptr inbounds %struct.DLL, %struct.DLL* %retval.0.reg2mem.0.ph.i174, i64 0, i32 1
  store %struct.DLL* %call1.reg2mem.0.call1.reload131, %struct.DLL** %next1.i186, align 8, !tbaa !7
  store %struct.DLL* %retval.0.reg2mem.0.ph.i174, %struct.DLL** %prev.i184, align 8, !tbaa !1
  %prev3.i187 = getelementptr inbounds %struct.DLL, %struct.DLL* %retval.0.reg2mem.0.ph.i174, i64 0, i32 2
  store %struct.DLL* %155, %struct.DLL** %prev3.i187, align 8, !tbaa !1
  %val.i188 = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload131, i64 0, i32 0
  %156 = load i32, i32* %val.i188, align 8, !tbaa !8
  %157 = sub i32 %156, -2042040142
  %158 = add i32 %157, 1
  %159 = add i32 %158, -2042040142
  %inc.i189 = add nsw i32 %156, 1
  store i32 %159, i32* %val.i188, align 8, !tbaa !8
  br label %loopEntry.backedge

while.end19:                                      ; preds = %loopEntry
  %call2.reg2mem.0.call2.reload141 = load volatile %struct.DLL*, %struct.DLL** %call2.reg2mem, align 8
  %call2.reload141.idx = getelementptr %struct.DLL, %struct.DLL* %call2.reg2mem.0.call2.reload141, i64 0, i32 0
  %call2.reload141.idx.val = load i32, i32* %call2.reload141.idx, align 8, !tbaa !8
  %cmp.i200 = icmp eq i32 %call2.reload141.idx.val, 0
  %160 = select i1 %cmp.i200, i32 1996050304, i32 103754126
  br label %loopEntry.backedge

if.then22:                                        ; preds = %loopEntry
  %puts143 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @str.46, i64 0, i64 0))
  tail call void @exit(i32 1) #6
  unreachable

if.end24:                                         ; preds = %loopEntry
  %161 = load i32, i32* @x.38, align 4
  %162 = load i32, i32* @y.39, align 4
  %163 = add i32 %161, 1573413112
  %164 = add i32 %163, -1
  %165 = sub i32 %164, 1573413112
  %166 = add i32 %161, -1
  %167 = mul i32 %165, %161
  %168 = xor i32 1, -1
  %169 = xor i32 %167, %168
  %170 = and i32 %169, %167
  %171 = and i32 %167, 1
  %172 = icmp eq i32 %170, 0
  %173 = icmp slt i32 %162, 10
  %174 = xor i1 %173, true
  %175 = xor i1 %172, true
  %176 = xor i1 true, true
  %177 = and i1 %174, true
  %178 = and i1 %173, %176
  %179 = and i1 %175, true
  %180 = and i1 %172, %176
  %181 = or i1 %177, %178
  %182 = or i1 %179, %180
  %183 = xor i1 %181, %182
  %184 = or i1 %174, %175
  %185 = xor i1 %184, true
  %186 = or i1 true, %176
  %187 = and i1 %185, %186
  %188 = or i1 %183, %187
  %189 = or i1 %173, %172
  %190 = select i1 %188, i32 1271070215, i32 -1888826212
  br label %loopEntry.backedge

originalBB97:                                     ; preds = %loopEntry
  %call.reg2mem.0.call.reload116 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  br label %loopEntry.outer.i193

loopEntry.outer.i193:                             ; preds = %do.body.split.i197, %originalBB97
  %p.0.reg2mem.0.ph.i190 = phi %struct.DLL* [ %191, %do.body.split.i197 ], [ %call.reg2mem.0.call.reload116, %originalBB97 ]
  %switchVar.0.ph.i191 = phi i32 [ %195, %do.body.split.i197 ], [ 1469553320, %originalBB97 ]
  %trunc17.i192 = trunc i32 %switchVar.0.ph.i191 to i26
  switch i26 %trunc17.i192, label %infloop.i198.preheader [
    i26 -6841688, label %do.body.split.i197
    i26 16954173, label %list_reverse.exit199
  ]

infloop.i198.preheader:                           ; preds = %loopEntry.outer.i193
  br label %infloop.i198

do.body.split.i197:                               ; preds = %loopEntry.outer.i193
  %next.i194 = getelementptr inbounds %struct.DLL, %struct.DLL* %p.0.reg2mem.0.ph.i190, i64 0, i32 1
  %191 = load %struct.DLL*, %struct.DLL** %next.i194, align 8, !tbaa !7
  %prev.i195 = getelementptr inbounds %struct.DLL, %struct.DLL* %p.0.reg2mem.0.ph.i190, i64 0, i32 2
  %192 = bitcast %struct.DLL** %prev.i195 to i64*
  %193 = load i64, i64* %192, align 8, !tbaa !1
  %194 = bitcast %struct.DLL** %next.i194 to i64*
  store i64 %193, i64* %194, align 8, !tbaa !7
  store %struct.DLL* %191, %struct.DLL** %prev.i195, align 8, !tbaa !1
  %cmp.i196 = icmp ne %struct.DLL* %191, %call.reg2mem.0.call.reload116
  %195 = select i1 %cmp.i196, i32 1469553320, i32 1426240317
  br label %loopEntry.outer.i193

infloop.i198:                                     ; preds = %infloop.i198.preheader, %infloop.i198
  br label %infloop.i198

list_reverse.exit199:                             ; preds = %loopEntry.outer.i193
  %call.reg2mem.0.call.reload117 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload117.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload117, i64 0, i32 1
  %call.reload117.idx.val = load %struct.DLL*, %struct.DLL** %call.reload117.idx, align 8, !tbaa !7
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %call.reload117.idx.val, i64 0, i32 0
  %196 = load i32, i32* %val, align 8, !tbaa !8
  %cmp = icmp ne i32 %196, 100
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %197 = load i32, i32* @x.38, align 4
  %198 = load i32, i32* @y.39, align 4
  %199 = sub i32 0, -1
  %200 = sub i32 %197, %199
  %201 = add i32 %197, -1
  %202 = mul i32 %200, %197
  %203 = xor i32 %202, -1
  %204 = xor i32 1, -1
  %205 = xor i32 424478665, -1
  %206 = or i32 %203, %204
  %207 = or i32 424478665, %205
  %208 = xor i32 %206, -1
  %209 = and i32 %208, %207
  %210 = and i32 %202, 1
  %211 = icmp eq i32 %209, 0
  %212 = icmp slt i32 %198, 10
  %213 = and i1 %212, %211
  %214 = xor i1 %212, %211
  %215 = or i1 %213, %214
  %216 = or i1 %212, %211
  %217 = select i1 %215, i32 -1900268042, i32 -1888826212
  br label %loopEntry.backedge

originalBBpart299:                                ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %218 = select i1 %cmp.reg2mem.0.cmp.reload, i32 239168192, i32 -1788455499
  br label %loopEntry.backedge

if.then26:                                        ; preds = %loopEntry
  %call.reg2mem.0.call.reload119 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload119.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload119, i64 0, i32 1
  %call.reload119.idx.val = load %struct.DLL*, %struct.DLL** %call.reload119.idx, align 8, !tbaa !7
  %val28 = getelementptr inbounds %struct.DLL, %struct.DLL* %call.reload119.idx.val, i64 0, i32 0
  %219 = load i32, i32* %val28, align 8, !tbaa !8
  %call29 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 100, i32 %219)
  tail call void @exit(i32 1) #6
  unreachable

if.end30:                                         ; preds = %loopEntry
  %call.reg2mem.0.call.reload118 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload118.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload118, i64 0, i32 2
  %call.reload118.idx.val = load %struct.DLL*, %struct.DLL** %call.reload118.idx, align 8, !tbaa !1
  %val32 = getelementptr inbounds %struct.DLL, %struct.DLL* %call.reload118.idx.val, i64 0, i32 0
  %220 = load i32, i32* %val32, align 8, !tbaa !8
  %cmp33 = icmp ne i32 %220, 1
  %221 = select i1 %cmp33, i32 1183509624, i32 1944085905
  br label %loopEntry.backedge

if.then34:                                        ; preds = %loopEntry
  %call.reg2mem.0.call.reload120 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload120.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload120, i64 0, i32 2
  %call.reload120.idx.val = load %struct.DLL*, %struct.DLL** %call.reload120.idx, align 8, !tbaa !1
  %val36 = getelementptr inbounds %struct.DLL, %struct.DLL* %call.reload120.idx.val, i64 0, i32 0
  %222 = load i32, i32* %val36, align 8, !tbaa !8
  %call37 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 100, i32 %222)
  tail call void @exit(i32 1) #6
  unreachable

if.end38:                                         ; preds = %loopEntry
  %223 = load i32, i32* @x.38, align 4
  %224 = load i32, i32* @y.39, align 4
  %225 = sub i32 %223, 735787639
  %226 = add i32 %225, -1
  %227 = add i32 %226, 735787639
  %228 = add i32 %223, -1
  %229 = mul i32 %227, %223
  %230 = xor i32 1, -1
  %231 = xor i32 %229, %230
  %232 = and i32 %231, %229
  %233 = and i32 %229, 1
  %234 = icmp eq i32 %232, 0
  %235 = icmp slt i32 %224, 10
  %236 = xor i1 %235, true
  %237 = xor i1 %234, true
  %238 = xor i1 true, true
  %239 = and i1 %236, true
  %240 = and i1 %235, %238
  %241 = and i1 %237, true
  %242 = and i1 %234, %238
  %243 = or i1 %239, %240
  %244 = or i1 %241, %242
  %245 = xor i1 %243, %244
  %246 = or i1 %236, %237
  %247 = xor i1 %246, true
  %248 = or i1 true, %238
  %249 = and i1 %247, %248
  %250 = or i1 %245, %249
  %251 = or i1 %235, %234
  %252 = select i1 %250, i32 323854062, i32 -1002446964
  br label %loopEntry.backedge

originalBB101:                                    ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload132 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call1.reload132.idx = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload132, i64 0, i32 1
  %call1.reload132.idx.val = load %struct.DLL*, %struct.DLL** %call1.reload132.idx, align 8, !tbaa !7
  %val40 = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reload132.idx.val, i64 0, i32 0
  %253 = load i32, i32* %val40, align 8, !tbaa !8
  %cmp41 = icmp ne i32 %253, 100
  store i1 %cmp41, i1* %cmp41.reg2mem, align 1
  %254 = load i32, i32* @x.38, align 4
  %255 = load i32, i32* @y.39, align 4
  %256 = add i32 %254, 1874284057
  %257 = add i32 %256, -1
  %258 = sub i32 %257, 1874284057
  %259 = add i32 %254, -1
  %260 = mul i32 %258, %254
  %261 = xor i32 %260, -1
  %262 = xor i32 1, -1
  %263 = xor i32 -1323256231, -1
  %264 = or i32 %261, %262
  %265 = or i32 -1323256231, %263
  %266 = xor i32 %264, -1
  %267 = and i32 %266, %265
  %268 = and i32 %260, 1
  %269 = icmp eq i32 %267, 0
  %270 = icmp slt i32 %255, 10
  %271 = and i1 %270, %269
  %272 = xor i1 %270, %269
  %273 = or i1 %271, %272
  %274 = or i1 %270, %269
  %275 = select i1 %273, i32 -901205018, i32 -1002446964
  br label %loopEntry.backedge

originalBBpart2103:                               ; preds = %loopEntry
  %cmp41.reg2mem.0.cmp41.reload = load volatile i1, i1* %cmp41.reg2mem, align 1
  %276 = select i1 %cmp41.reg2mem.0.cmp41.reload, i32 -2054102549, i32 1329000066
  br label %loopEntry.backedge

if.then42:                                        ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload134 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call1.reload134.idx = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload134, i64 0, i32 1
  %call1.reload134.idx.val = load %struct.DLL*, %struct.DLL** %call1.reload134.idx, align 8, !tbaa !7
  %val44 = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reload134.idx.val, i64 0, i32 0
  %277 = load i32, i32* %val44, align 8, !tbaa !8
  %call45 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 100, i32 %277)
  tail call void @exit(i32 1) #6
  unreachable

if.end46:                                         ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload133 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call1.reload133.idx = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload133, i64 0, i32 2
  %call1.reload133.idx.val = load %struct.DLL*, %struct.DLL** %call1.reload133.idx, align 8, !tbaa !1
  %val48 = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reload133.idx.val, i64 0, i32 0
  %278 = load i32, i32* %val48, align 8, !tbaa !8
  %cmp49 = icmp ne i32 %278, 1
  %279 = select i1 %cmp49, i32 -940696839, i32 -814727727
  br label %loopEntry.backedge

if.then50:                                        ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload135 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call1.reload135.idx = getelementptr %struct.DLL, %struct.DLL* %call1.reg2mem.0.call1.reload135, i64 0, i32 2
  %call1.reload135.idx.val = load %struct.DLL*, %struct.DLL** %call1.reload135.idx, align 8, !tbaa !1
  %val52 = getelementptr inbounds %struct.DLL, %struct.DLL* %call1.reload135.idx.val, i64 0, i32 0
  %280 = load i32, i32* %val52, align 8, !tbaa !8
  %call53 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 100, i32 %280)
  tail call void @exit(i32 1) #6
  unreachable

if.end54:                                         ; preds = %loopEntry
  %call.reg2mem.0.call.reload121 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload121.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload121, i64 0, i32 0
  %call.reload121.idx.val = load i32, i32* %call.reload121.idx, align 8, !tbaa !8
  %cmp56 = icmp ne i32 %call.reload121.idx.val, 100
  %281 = select i1 %cmp56, i32 2014428180, i32 1543301679
  br label %loopEntry.backedge

if.then57:                                        ; preds = %loopEntry
  %call.reg2mem.0.call.reload123 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload123.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload123, i64 0, i32 0
  %call.reload123.idx.val = load i32, i32* %call.reload123.idx, align 8, !tbaa !8
  %call59 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 100, i32 %call.reload123.idx.val)
  tail call void @exit(i32 1) #6
  unreachable

if.end60:                                         ; preds = %loopEntry
  %282 = load i32, i32* @x.38, align 4
  %283 = load i32, i32* @y.39, align 4
  %284 = sub i32 0, -1
  %285 = sub i32 %282, %284
  %286 = add i32 %282, -1
  %287 = mul i32 %285, %282
  %288 = xor i32 1, -1
  %289 = xor i32 %287, %288
  %290 = and i32 %289, %287
  %291 = and i32 %287, 1
  %292 = icmp eq i32 %290, 0
  %293 = icmp slt i32 %283, 10
  %294 = xor i1 %293, true
  %295 = xor i1 %292, true
  %296 = xor i1 true, true
  %297 = and i1 %294, true
  %298 = and i1 %293, %296
  %299 = and i1 %295, true
  %300 = and i1 %292, %296
  %301 = or i1 %297, %298
  %302 = or i1 %299, %300
  %303 = xor i1 %301, %302
  %304 = or i1 %294, %295
  %305 = xor i1 %304, true
  %306 = or i1 true, %296
  %307 = and i1 %305, %306
  %308 = or i1 %303, %307
  %309 = or i1 %293, %292
  %310 = select i1 %308, i32 -2135456872, i32 -2015028948
  br label %loopEntry.backedge

originalBB105:                                    ; preds = %loopEntry
  %call.reg2mem.0.call.reload122 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call1.reg2mem.0.call1.reload136 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call61 = tail call i32 @list_equal(%struct.DLL* %call.reg2mem.0.call.reload122, %struct.DLL* %call1.reg2mem.0.call1.reload136)
  %tobool62 = icmp ne i32 %call61, 0
  store i1 %tobool62, i1* %tobool62.reg2mem, align 1
  %311 = load i32, i32* @x.38, align 4
  %312 = load i32, i32* @y.39, align 4
  %313 = sub i32 0, %311
  %314 = sub i32 0, -1
  %315 = add i32 %313, %314
  %316 = sub i32 0, %315
  %317 = add i32 %311, -1
  %318 = mul i32 %316, %311
  %319 = xor i32 1, -1
  %320 = xor i32 %318, %319
  %321 = and i32 %320, %318
  %322 = and i32 %318, 1
  %323 = icmp eq i32 %321, 0
  %324 = icmp slt i32 %312, 10
  %325 = and i1 %324, %323
  %326 = xor i1 %324, %323
  %327 = or i1 %325, %326
  %328 = or i1 %324, %323
  %329 = select i1 %327, i32 828463183, i32 -2015028948
  br label %loopEntry.backedge

originalBBpart2107:                               ; preds = %loopEntry
  %tobool62.reg2mem.0.tobool62.reload = load volatile i1, i1* %tobool62.reg2mem, align 1
  %330 = select i1 %tobool62.reg2mem.0.tobool62.reload, i32 2122660175, i32 1827894427
  br label %loopEntry.backedge

if.then63:                                        ; preds = %loopEntry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.45, i64 0, i64 0))
  tail call void @exit(i32 1) #6
  unreachable

if.end65:                                         ; preds = %loopEntry
  %call.reg2mem.0.call.reload124 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call.reload124.idx = getelementptr %struct.DLL, %struct.DLL* %call.reg2mem.0.call.reload124, i64 0, i32 0
  %call.reload124.idx.val = load i32, i32* %call.reload124.idx, align 8, !tbaa !8
  %call.reg2mem.0.call.reload125 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %331 = bitcast %struct.DLL* %call.reg2mem.0.call.reload125 to i8*
  tail call void @free(i8* %331) #5
  %call1.reg2mem.0.call1.reload137 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %332 = bitcast %struct.DLL* %call1.reg2mem.0.call1.reload137 to i8*
  tail call void @free(i8* %332) #5
  %call2.reg2mem.0.call2.reload142 = load volatile %struct.DLL*, %struct.DLL** %call2.reg2mem, align 8
  %333 = bitcast %struct.DLL* %call2.reg2mem.0.call2.reload142 to i8*
  tail call void @free(i8* %333) #5
  ret i32 %call.reload124.idx.val

originalBBalteredBB:                              ; preds = %loopEntry
  %callalteredBB = tail call %struct.DLL* @list_sequence(i32 1, i32 100)
  %call1alteredBB = tail call %struct.DLL* @list_copy(%struct.DLL* %callalteredBB)
  %call.i157 = tail call noalias i8* @malloc(i64 24) #5
  %next.i158 = getelementptr inbounds i8, i8* %call.i157, i64 8
  %334 = bitcast i8* %next.i158 to i8**
  store i8* %call.i157, i8** %334, align 8, !tbaa !7
  %prev.i159 = getelementptr inbounds i8, i8* %call.i157, i64 16
  %335 = bitcast i8* %prev.i159 to i8**
  store i8* %call.i157, i8** %335, align 8, !tbaa !1
  %val.i160 = bitcast i8* %call.i157 to i32*
  store i32 0, i32* %val.i160, align 8, !tbaa !8
  %call3alteredBB = tail call i32 @list_equal(%struct.DLL* %call1alteredBB, %struct.DLL* %callalteredBB)
  br label %loopEntry.backedge

originalBB93alteredBB:                            ; preds = %loopEntry
  %call2.reg2mem.0.call2.reload = load volatile %struct.DLL*, %struct.DLL** %call2.reg2mem, align 8
  br label %loopEntry.backedge

originalBB97alteredBB:                            ; preds = %loopEntry
  %call.reg2mem.0.call.reload113 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  br label %loopEntry.outer.i148

loopEntry.outer.i148:                             ; preds = %do.body.split.i, %originalBB97alteredBB
  %p.0.reg2mem.0.ph.i = phi %struct.DLL* [ %336, %do.body.split.i ], [ %call.reg2mem.0.call.reload113, %originalBB97alteredBB ]
  %switchVar.0.ph.i147 = phi i32 [ %340, %do.body.split.i ], [ 1469553320, %originalBB97alteredBB ]
  %trunc17.i = trunc i32 %switchVar.0.ph.i147 to i26
  switch i26 %trunc17.i, label %infloop.i152.preheader [
    i26 -6841688, label %do.body.split.i
    i26 16954173, label %list_reverse.exit
  ]

infloop.i152.preheader:                           ; preds = %loopEntry.outer.i148
  br label %infloop.i152

do.body.split.i:                                  ; preds = %loopEntry.outer.i148
  %next.i149 = getelementptr inbounds %struct.DLL, %struct.DLL* %p.0.reg2mem.0.ph.i, i64 0, i32 1
  %336 = load %struct.DLL*, %struct.DLL** %next.i149, align 8, !tbaa !7
  %prev.i150 = getelementptr inbounds %struct.DLL, %struct.DLL* %p.0.reg2mem.0.ph.i, i64 0, i32 2
  %337 = bitcast %struct.DLL** %prev.i150 to i64*
  %338 = load i64, i64* %337, align 8, !tbaa !1
  %339 = bitcast %struct.DLL** %next.i149 to i64*
  store i64 %338, i64* %339, align 8, !tbaa !7
  store %struct.DLL* %336, %struct.DLL** %prev.i150, align 8, !tbaa !1
  %cmp.i151 = icmp ne %struct.DLL* %336, %call.reg2mem.0.call.reload113
  %340 = select i1 %cmp.i151, i32 1469553320, i32 1426240317
  br label %loopEntry.outer.i148

infloop.i152:                                     ; preds = %infloop.i152.preheader, %infloop.i152
  br label %infloop.i152

list_reverse.exit:                                ; preds = %loopEntry.outer.i148
  %call.reg2mem.0.call.reload112 = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  br label %loopEntry.backedge

originalBB101alteredBB:                           ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload126 = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  br label %loopEntry.backedge

originalBB105alteredBB:                           ; preds = %loopEntry
  %call.reg2mem.0.call.reload = load volatile %struct.DLL*, %struct.DLL** %call.reg2mem, align 8
  %call1.reg2mem.0.call1.reload = load volatile %struct.DLL*, %struct.DLL** %call1.reg2mem, align 8
  %call61alteredBB = tail call i32 @list_equal(%struct.DLL* %call.reg2mem.0.call.reload, %struct.DLL* %call1.reg2mem.0.call1.reload)
  br label %loopEntry.backedge
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 {
entry:
  %n.0.reload.reg2mem = alloca i32, align 4
  %result.0.reload.reg2mem = alloca i32, align 4
  %call1.reg2mem = alloca i32, align 4
  %tobool.reg2mem = alloca i1, align 1
  %dec.reg2mem = alloca i32, align 4
  %call.reg2mem = alloca i64, align 8
  %call = tail call i64 @clock() #5
  store i64 %call, i64* %call.reg2mem, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %result.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %result.0.reg2mem.0.be, %loopEntry.backedge ]
  %n.0.reg2mem.0 = phi i32 [ 3000000, %entry ], [ %n.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -1203576839, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -1203576839, label %while.cond
    i32 -1386249823, label %originalBB
    i32 -1328148754, label %originalBBpart2
    i32 1292251171, label %while.body
    i32 -810609859, label %originalBB10
    i32 -684590756, label %originalBBpart212
    i32 1144306399, label %while.end
    i32 -596138137, label %originalBBalteredBB
    i32 -417999835, label %originalBB10alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB10alteredBB, %originalBBalteredBB, %originalBBpart212, %originalBB10, %while.body, %originalBBpart2, %originalBB, %while.cond
  %result.0.reg2mem.0.be = phi i32 [ %result.0.reg2mem.0, %originalBB10alteredBB ], [ %result.0.reg2mem.0, %originalBBalteredBB ], [ %call1.reg2mem.0.call1.reload, %originalBBpart212 ], [ %result.0.reg2mem.0, %originalBB10 ], [ %result.0.reg2mem.0, %while.body ], [ %result.0.reg2mem.0, %originalBBpart2 ], [ %result.0.reg2mem.0, %originalBB ], [ %result.0.reg2mem.0, %while.cond ], [ %result.0.reg2mem.0, %loopEntry ]
  %n.0.reg2mem.0.be = phi i32 [ %n.0.reg2mem.0, %originalBB10alteredBB ], [ %n.0.reg2mem.0, %originalBBalteredBB ], [ %dec.reg2mem.0.dec.reload, %originalBBpart212 ], [ %n.0.reg2mem.0, %originalBB10 ], [ %n.0.reg2mem.0, %while.body ], [ %n.0.reg2mem.0, %originalBBpart2 ], [ %n.0.reg2mem.0, %originalBB ], [ %n.0.reg2mem.0, %while.cond ], [ %n.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -810609859, %originalBB10alteredBB ], [ -1386249823, %originalBBalteredBB ], [ -1203576839, %originalBBpart212 ], [ %123, %originalBB10 ], [ %102, %while.body ], [ %68, %originalBBpart2 ], [ %67, %originalBB ], [ %30, %while.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

while.cond:                                       ; preds = %loopEntry
  store i32 %result.0.reg2mem.0, i32* %result.0.reload.reg2mem, align 4
  store i32 %n.0.reg2mem.0, i32* %n.0.reload.reg2mem, align 4
  %0 = load i32, i32* @x.42, align 4
  %1 = load i32, i32* @y.43, align 4
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
  %13 = icmp slt i32 %1, 10
  %14 = xor i1 %13, true
  %15 = xor i1 %12, true
  %16 = xor i1 true, true
  %17 = and i1 %14, true
  %18 = and i1 %13, %16
  %19 = and i1 %15, true
  %20 = and i1 %12, %16
  %21 = or i1 %17, %18
  %22 = or i1 %19, %20
  %23 = xor i1 %21, %22
  %24 = or i1 %14, %15
  %25 = xor i1 %24, true
  %26 = or i1 true, %16
  %27 = and i1 %25, %26
  %28 = or i1 %23, %27
  %29 = or i1 %13, %12
  %30 = select i1 %28, i32 -1386249823, i32 -596138137
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %n.0.reload.reg2mem.0.n.0.reload.reload = load volatile i32, i32* %n.0.reload.reg2mem, align 4
  %31 = add i32 %n.0.reload.reg2mem.0.n.0.reload.reload, 936142591
  %32 = add i32 %31, -1
  %33 = sub i32 %32, 936142591
  %dec = add nsw i32 %n.0.reload.reg2mem.0.n.0.reload.reload, -1
  store i32 %33, i32* %dec.reg2mem, align 4
  %n.0.reload.reg2mem.0.n.0.reload.reload15 = load volatile i32, i32* %n.0.reload.reg2mem, align 4
  %tobool = icmp ne i32 %n.0.reload.reg2mem.0.n.0.reload.reload15, 0
  store i1 %tobool, i1* %tobool.reg2mem, align 1
  %34 = load i32, i32* @x.42, align 4
  %35 = load i32, i32* @y.43, align 4
  %36 = add i32 %34, -1646668861
  %37 = add i32 %36, -1
  %38 = sub i32 %37, -1646668861
  %39 = add i32 %34, -1
  %40 = mul i32 %38, %34
  %41 = xor i32 %40, -1
  %42 = xor i32 1, -1
  %43 = xor i32 178420543, -1
  %44 = or i32 %41, %42
  %45 = or i32 178420543, %43
  %46 = xor i32 %44, -1
  %47 = and i32 %46, %45
  %48 = and i32 %40, 1
  %49 = icmp eq i32 %47, 0
  %50 = icmp slt i32 %35, 10
  %51 = xor i1 %50, true
  %52 = xor i1 %49, true
  %53 = xor i1 false, true
  %54 = and i1 %51, false
  %55 = and i1 %50, %53
  %56 = and i1 %52, false
  %57 = and i1 %49, %53
  %58 = or i1 %54, %55
  %59 = or i1 %56, %57
  %60 = xor i1 %58, %59
  %61 = or i1 %51, %52
  %62 = xor i1 %61, true
  %63 = or i1 false, %53
  %64 = and i1 %62, %63
  %65 = or i1 %60, %64
  %66 = or i1 %50, %49
  %67 = select i1 %65, i32 -1328148754, i32 -596138137
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %tobool.reg2mem.0.tobool.reload = load volatile i1, i1* %tobool.reg2mem, align 1
  %68 = select i1 %tobool.reg2mem.0.tobool.reload, i32 1292251171, i32 1144306399
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  %69 = load i32, i32* @x.42, align 4
  %70 = load i32, i32* @y.43, align 4
  %71 = sub i32 %69, -1883784057
  %72 = add i32 %71, -1
  %73 = add i32 %72, -1883784057
  %74 = add i32 %69, -1
  %75 = mul i32 %73, %69
  %76 = xor i32 %75, -1
  %77 = xor i32 1, -1
  %78 = xor i32 -818853451, -1
  %79 = or i32 %76, %77
  %80 = or i32 -818853451, %78
  %81 = xor i32 %79, -1
  %82 = and i32 %81, %80
  %83 = and i32 %75, 1
  %84 = icmp eq i32 %82, 0
  %85 = icmp slt i32 %70, 10
  %86 = xor i1 %85, true
  %87 = xor i1 %84, true
  %88 = xor i1 true, true
  %89 = and i1 %86, true
  %90 = and i1 %85, %88
  %91 = and i1 %87, true
  %92 = and i1 %84, %88
  %93 = or i1 %89, %90
  %94 = or i1 %91, %92
  %95 = xor i1 %93, %94
  %96 = or i1 %86, %87
  %97 = xor i1 %96, true
  %98 = or i1 true, %88
  %99 = and i1 %97, %98
  %100 = or i1 %95, %99
  %101 = or i1 %85, %84
  %102 = select i1 %100, i32 -810609859, i32 -417999835
  br label %loopEntry.backedge

originalBB10:                                     ; preds = %loopEntry
  %call1 = tail call i32 @test_lists()
  store i32 %call1, i32* %call1.reg2mem, align 4
  %103 = load i32, i32* @x.42, align 4
  %104 = load i32, i32* @y.43, align 4
  %105 = sub i32 0, -1
  %106 = sub i32 %103, %105
  %107 = add i32 %103, -1
  %108 = mul i32 %106, %103
  %109 = xor i32 %108, -1
  %110 = xor i32 1, -1
  %111 = xor i32 1565304723, -1
  %112 = or i32 %109, %110
  %113 = or i32 1565304723, %111
  %114 = xor i32 %112, -1
  %115 = and i32 %114, %113
  %116 = and i32 %108, 1
  %117 = icmp eq i32 %115, 0
  %118 = icmp slt i32 %104, 10
  %119 = and i1 %118, %117
  %120 = xor i1 %118, %117
  %121 = or i1 %119, %120
  %122 = or i1 %118, %117
  %123 = select i1 %121, i32 -684590756, i32 -417999835
  br label %loopEntry.backedge

originalBBpart212:                                ; preds = %loopEntry
  %dec.reg2mem.0.dec.reload = load volatile i32, i32* %dec.reg2mem, align 4
  %call1.reg2mem.0.call1.reload = load volatile i32, i32* %call1.reg2mem, align 4
  br label %loopEntry.backedge

while.end:                                        ; preds = %loopEntry
  %result.0.reload.reg2mem.0.result.0.reload.reload = load volatile i32, i32* %result.0.reload.reg2mem, align 4
  %call2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %result.0.reload.reg2mem.0.result.0.reload.reload)
  %call3 = tail call i64 @clock() #5
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %124 = sub i64 %call3, 2377209122903671174
  %125 = sub i64 %124, %call.reg2mem.0.call.reload
  %126 = add i64 %125, 2377209122903671174
  %sub = sub nsw i64 %call3, %call.reg2mem.0.call.reload
  %conv = sitofp i64 %126 to double
  %div = fdiv double %conv, 1.000000e+06
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), double %div)
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %n.0.reload.reg2mem.0.n.0.reload.reload18 = load volatile i32, i32* %n.0.reload.reg2mem, align 4
  %n.0.reload.reg2mem.0.n.0.reload.reload19 = load volatile i32, i32* %n.0.reload.reg2mem, align 4
  %n.0.reload.reg2mem.0.n.0.reload.reload16 = load volatile i32, i32* %n.0.reload.reg2mem, align 4
  %n.0.reload.reg2mem.0.n.0.reload.reload17 = load volatile i32, i32* %n.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB10alteredBB:                            ; preds = %loopEntry
  %call1alteredBB = tail call i32 @test_lists()
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !6, i64 16}
!2 = !{!"DLL", !3, i64 0, !6, i64 8, !6, i64 16}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"any pointer", !4, i64 0}
!7 = !{!2, !6, i64 8}
!8 = !{!2, !3, i64 0}
