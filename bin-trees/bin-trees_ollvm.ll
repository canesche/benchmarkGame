; ModuleID = 'bin-trees/bin-trees.c'
source_filename = "bin-trees/bin-trees.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tn = type { %struct.tn*, %struct.tn* }

@.str = private unnamed_addr constant [38 x i8] c"stretch tree of depth %u\09 check: %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%li\09 trees of depth %u\09 check: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"long lived tree of depth %u\09 check: %li\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.4 = common local_unnamed_addr global i32 0
@y.5 = common local_unnamed_addr global i32 0
@x.6 = common local_unnamed_addr global i32 0
@y.7 = common local_unnamed_addr global i32 0
@x.8 = common local_unnamed_addr global i32 0
@y.9 = common local_unnamed_addr global i32 0
@x.10 = common local_unnamed_addr global i32 0
@y.11 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define noalias %struct.tn* @NewTreeNode(%struct.tn* %left, %struct.tn* %right) local_unnamed_addr #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.tn*
  %left1 = bitcast i8* %call to %struct.tn**
  store %struct.tn* %left, %struct.tn** %left1, align 8, !tbaa !1
  %right2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %right2 to %struct.tn**
  store %struct.tn* %right, %struct.tn** %1, align 8, !tbaa !6
  ret %struct.tn* %0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @ItemCheck(%struct.tn* nocapture readonly %tree) local_unnamed_addr #0 {
entry:
  %cmp.reg2mem = alloca i1, align 1
  %.reg2mem9.sroa.0 = alloca i64, align 8
  %.reg2mem7 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.4, align 4
  %1 = load i32, i32* @y.5, align 4
  %2 = sub i32 %0, -685066959
  %3 = add i32 %2, -1
  %4 = add i32 %3, -685066959
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
  %13 = bitcast %struct.tn* %tree to i64*
  %right = getelementptr inbounds %struct.tn, %struct.tn* %tree, i64 0, i32 1
  br label %loopEntry.outer.outer

loopEntry.outer.outer:                            ; preds = %if.else.split, %entry
  %.ph = phi i32 [ %.pre27.pre, %if.else.split ], [ %1, %entry ]
  %.ph30 = phi i32 [ %.pre.pre, %if.else.split ], [ %0, %entry ]
  %retval.0.reg2mem.0.ph.ph = phi i64 [ %59, %if.else.split ], [ undef, %entry ]
  %switchVar.0.ph.ph = phi i32 [ 865135019, %if.else.split ], [ -1427909017, %entry ]
  %14 = add i32 %.ph30, -938170814
  %15 = add i32 %14, -1
  %16 = sub i32 %15, -938170814
  %17 = add i32 %.ph30, -1
  %18 = mul i32 %16, %.ph30
  %19 = xor i32 %18, -1
  %20 = xor i32 1, -1
  %21 = xor i32 1258180459, -1
  %22 = or i32 %19, %20
  %23 = or i32 1258180459, %21
  %24 = xor i32 %22, -1
  %25 = and i32 %24, %23
  %26 = and i32 %18, 1
  %27 = icmp eq i32 %25, 0
  %28 = icmp slt i32 %.ph, 10
  %29 = xor i1 %28, true
  %30 = xor i1 %27, true
  %31 = xor i1 true, true
  %32 = and i1 %29, true
  %33 = and i1 %28, %31
  %34 = and i1 %30, true
  %35 = and i1 %27, %31
  %36 = or i1 %32, %33
  %37 = or i1 %34, %35
  %38 = xor i1 %36, %37
  %39 = or i1 %29, %30
  %40 = xor i1 %39, true
  %41 = or i1 true, %31
  %42 = and i1 %40, %41
  %43 = or i1 %38, %42
  %44 = or i1 %28, %27
  %45 = select i1 %43, i32 1205790712, i32 539737801
  br label %loopEntry.outer

loopEntry.outer.loopexit:                         ; preds = %loopEntry.outer12
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.loopexit, %loopEntry.outer.outer
  %retval.0.reg2mem.0.ph = phi i64 [ %retval.0.reg2mem.0.ph.ph, %loopEntry.outer.outer ], [ 1, %loopEntry.outer.loopexit ]
  %switchVar.0.ph = phi i32 [ %switchVar.0.ph.ph, %loopEntry.outer.outer ], [ 865135019, %loopEntry.outer.loopexit ]
  br label %loopEntry.outer12

loopEntry.outer12:                                ; preds = %loopEntry.outer12.backedge, %loopEntry.outer
  %switchVar.0.ph13 = phi i32 [ %switchVar.0.ph, %loopEntry.outer ], [ %switchVar.0.ph13.be, %loopEntry.outer12.backedge ]
  switch i32 %switchVar.0.ph13, label %infloop.preheader [
    i32 -1427909017, label %first.split
    i32 -755028020, label %originalBB.split
    i32 1205790712, label %originalBBpart2.split
    i32 1230376774, label %loopEntry.outer.loopexit
    i32 1389489324, label %if.else.split
    i32 865135019, label %return
    i32 539737801, label %loopEntry.outer12.backedge
  ]

loopEntry.outer12.backedge:                       ; preds = %loopEntry.outer12, %originalBBpart2.split, %originalBB.split, %first.split
  %switchVar.0.ph13.be = phi i32 [ %50, %first.split ], [ %45, %originalBB.split ], [ %52, %originalBBpart2.split ], [ -755028020, %loopEntry.outer12 ]
  br label %loopEntry.outer12

infloop.preheader:                                ; preds = %loopEntry.outer12
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer12
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem7.0..reload8 = load volatile i1, i1* %.reg2mem7, align 1
  %46 = and i1 %.reg2mem.0..reload, %.reg2mem7.0..reload8
  %47 = xor i1 %.reg2mem.0..reload, %.reg2mem7.0..reload8
  %48 = or i1 %46, %47
  %49 = or i1 %.reg2mem.0..reload, %.reg2mem7.0..reload8
  %50 = select i1 %48, i32 -755028020, i32 539737801
  br label %loopEntry.outer12.backedge

originalBB.split:                                 ; preds = %loopEntry.outer12
  %51 = load i64, i64* %13, align 8, !tbaa !1
  store i64 %51, i64* %.reg2mem9.sroa.0, align 8
  %.reg2mem9.sroa.0.0..reg2mem9.sroa.0.0..reload11 = load volatile i64, i64* %.reg2mem9.sroa.0, align 8
  %cmp = icmp eq i64 %.reg2mem9.sroa.0.0..reg2mem9.sroa.0.0..reload11, 0
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  br label %loopEntry.outer12.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer12
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %52 = select i1 %cmp.reg2mem.0.cmp.reload, i32 1230376774, i32 1389489324
  br label %loopEntry.outer12.backedge

if.else.split:                                    ; preds = %loopEntry.outer12
  %.reg2mem9.sroa.0.0..reg2mem9.sroa.0.0..reload10 = load volatile i64, i64* %.reg2mem9.sroa.0, align 8
  %53 = inttoptr i64 %.reg2mem9.sroa.0.0..reg2mem9.sroa.0.0..reload10 to %struct.tn*
  %call = tail call i64 @ItemCheck(%struct.tn* %53)
  %54 = sub i64 0, 1
  %55 = sub i64 %call, %54
  %add = add nsw i64 %call, 1
  %56 = load %struct.tn*, %struct.tn** %right, align 8, !tbaa !6
  %call2 = tail call i64 @ItemCheck(%struct.tn* %56)
  %57 = sub i64 %55, -5248300764674996382
  %58 = add i64 %57, %call2
  %59 = add i64 %58, -5248300764674996382
  %add3 = add nsw i64 %55, %call2
  %.pre.pre = load i32, i32* @x.4, align 4
  %.pre27.pre = load i32, i32* @y.5, align 4
  br label %loopEntry.outer.outer

return:                                           ; preds = %loopEntry.outer12
  ret i64 %retval.0.reg2mem.0.ph

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind uwtable
define %struct.tn* @BottomUpTree(i32 %depth) local_unnamed_addr #0 {
entry:
  %call3.reg2mem = alloca %struct.tn*, align 8
  %cmp = icmp ne i32 %depth, 0
  %0 = select i1 %cmp, i32 -676350640, i32 1395784119
  %1 = sub i32 0, %depth
  %2 = sub i32 0, -1
  %3 = add i32 %1, %2
  %4 = sub i32 0, %3
  %sub = add i32 %depth, -1
  %5 = bitcast %struct.tn** %call3.reg2mem to i8**
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %retval.0.reg2mem.0.ph = phi %struct.tn* [ undef, %entry ], [ %retval.0.reg2mem.0.ph.be, %loopEntry.outer.backedge ]
  %switchVar.0.ph = phi i32 [ -691775474, %entry ], [ -1908118445, %loopEntry.outer.backedge ]
  br label %loopEntry.outer22

loopEntry.outer22:                                ; preds = %loopEntry.outer22.backedge, %loopEntry.outer
  %switchVar.0.ph23 = phi i32 [ %switchVar.0.ph, %loopEntry.outer ], [ %switchVar.0.ph23.be, %loopEntry.outer22.backedge ]
  switch i32 %switchVar.0.ph23, label %infloop.preheader [
    i32 -691775474, label %loopEntry.outer22.backedge
    i32 -676350640, label %if.then.split
    i32 -740647149, label %originalBB.split
    i32 663916168, label %originalBBpart2.split
    i32 1395784119, label %if.else.split
    i32 -1908118445, label %return
    i32 647916219, label %originalBBalteredBB
  ]

loopEntry.outer22.backedge:                       ; preds = %loopEntry.outer22, %originalBBalteredBB, %originalBB.split, %if.then.split
  %switchVar.0.ph23.be = phi i32 [ %35, %if.then.split ], [ %59, %originalBB.split ], [ -740647149, %originalBBalteredBB ], [ %0, %loopEntry.outer22 ]
  br label %loopEntry.outer22

infloop.preheader:                                ; preds = %loopEntry.outer22
  br label %infloop

if.then.split:                                    ; preds = %loopEntry.outer22
  %6 = load i32, i32* @x.6, align 4
  %7 = load i32, i32* @y.7, align 4
  %8 = sub i32 %6, -709824149
  %9 = add i32 %8, -1
  %10 = add i32 %9, -709824149
  %11 = add i32 %6, -1
  %12 = mul i32 %10, %6
  %13 = xor i32 1, -1
  %14 = xor i32 %12, %13
  %15 = and i32 %14, %12
  %16 = and i32 %12, 1
  %17 = icmp eq i32 %15, 0
  %18 = icmp slt i32 %7, 10
  %19 = xor i1 %18, true
  %20 = xor i1 %17, true
  %21 = xor i1 true, true
  %22 = and i1 %19, true
  %23 = and i1 %18, %21
  %24 = and i1 %20, true
  %25 = and i1 %17, %21
  %26 = or i1 %22, %23
  %27 = or i1 %24, %25
  %28 = xor i1 %26, %27
  %29 = or i1 %19, %20
  %30 = xor i1 %29, true
  %31 = or i1 true, %21
  %32 = and i1 %30, %31
  %33 = or i1 %28, %32
  %34 = or i1 %18, %17
  %35 = select i1 %33, i32 -740647149, i32 647916219
  br label %loopEntry.outer22.backedge

originalBB.split:                                 ; preds = %loopEntry.outer22
  %call = tail call %struct.tn* @BottomUpTree(i32 %4)
  %call2 = tail call %struct.tn* @BottomUpTree(i32 %4)
  %call.i19 = tail call noalias i8* @malloc(i64 16) #4
  %left1.i20 = bitcast i8* %call.i19 to %struct.tn**
  store %struct.tn* %call, %struct.tn** %left1.i20, align 8, !tbaa !1
  %right2.i21 = getelementptr inbounds i8, i8* %call.i19, i64 8
  %36 = bitcast i8* %right2.i21 to %struct.tn**
  store %struct.tn* %call2, %struct.tn** %36, align 8, !tbaa !6
  store i8* %call.i19, i8** %5, align 8
  %37 = load i32, i32* @x.6, align 4
  %38 = load i32, i32* @y.7, align 4
  %39 = sub i32 0, %37
  %40 = sub i32 0, -1
  %41 = add i32 %39, %40
  %42 = sub i32 0, %41
  %43 = add i32 %37, -1
  %44 = mul i32 %42, %37
  %45 = xor i32 %44, -1
  %46 = xor i32 1, -1
  %47 = xor i32 785738360, -1
  %48 = or i32 %45, %46
  %49 = or i32 785738360, %47
  %50 = xor i32 %48, -1
  %51 = and i32 %50, %49
  %52 = and i32 %44, 1
  %53 = icmp eq i32 %51, 0
  %54 = icmp slt i32 %38, 10
  %55 = and i1 %54, %53
  %56 = xor i1 %54, %53
  %57 = or i1 %55, %56
  %58 = or i1 %54, %53
  %59 = select i1 %57, i32 663916168, i32 647916219
  br label %loopEntry.outer22.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer22
  %call3.reg2mem.0.call3.reload = load volatile %struct.tn*, %struct.tn** %call3.reg2mem, align 8
  br label %loopEntry.outer.backedge

if.else.split:                                    ; preds = %loopEntry.outer22
  %call.i16 = tail call noalias i8* @malloc(i64 16) #4
  %60 = bitcast i8* %call.i16 to %struct.tn*
  call void @llvm.memset.p0i8.i64(i8* %call.i16, i8 0, i64 16, i32 8, i1 false)
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %if.else.split, %originalBBpart2.split
  %retval.0.reg2mem.0.ph.be = phi %struct.tn* [ %call3.reg2mem.0.call3.reload, %originalBBpart2.split ], [ %60, %if.else.split ]
  br label %loopEntry.outer

return:                                           ; preds = %loopEntry.outer22
  ret %struct.tn* %retval.0.reg2mem.0.ph

originalBBalteredBB:                              ; preds = %loopEntry.outer22
  %callalteredBB = tail call %struct.tn* @BottomUpTree(i32 %4)
  %call2alteredBB = tail call %struct.tn* @BottomUpTree(i32 %4)
  br label %loopEntry.outer22.backedge

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind uwtable
define void @DeleteTree(%struct.tn* nocapture %tree) local_unnamed_addr #0 {
entry:
  %.reg2mem.sroa.0 = alloca i64, align 8
  %0 = bitcast %struct.tn* %tree to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !1
  store i64 %1, i64* %.reg2mem.sroa.0, align 8
  %right = getelementptr inbounds %struct.tn, %struct.tn* %tree, i64 0, i32 1
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ 1975163244, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 1975163244, label %first.split
    i32 -1348527619, label %if.then.split
    i32 -1141206445, label %originalBB.split
    i32 1810138953, label %loopEntry.outer.backedge
    i32 42964439, label %if.end.split
    i32 -1376553581, label %originalBBalteredBB.split
  ]

loopEntry.outer.backedge:                         ; preds = %loopEntry.outer, %originalBBalteredBB.split, %originalBB.split, %if.then.split, %first.split
  %switchVar.0.ph.be = phi i32 [ %2, %first.split ], [ %21, %if.then.split ], [ %45, %originalBB.split ], [ -1141206445, %originalBBalteredBB.split ], [ 42964439, %loopEntry.outer ]
  br label %loopEntry.outer

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload7 = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %cmp = icmp ne i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload7, 0
  %2 = select i1 %cmp, i32 -1348527619, i32 42964439
  br label %loopEntry.outer.backedge

if.then.split:                                    ; preds = %loopEntry.outer
  %3 = load i32, i32* @x.8, align 4
  %4 = load i32, i32* @y.9, align 4
  %5 = sub i32 0, %3
  %6 = sub i32 0, -1
  %7 = add i32 %5, %6
  %8 = sub i32 0, %7
  %9 = add i32 %3, -1
  %10 = mul i32 %8, %3
  %11 = xor i32 1, -1
  %12 = xor i32 %10, %11
  %13 = and i32 %12, %10
  %14 = and i32 %10, 1
  %15 = icmp eq i32 %13, 0
  %16 = icmp slt i32 %4, 10
  %17 = and i1 %16, %15
  %18 = xor i1 %16, %15
  %19 = or i1 %17, %18
  %20 = or i1 %16, %15
  %21 = select i1 %19, i32 -1141206445, i32 -1376553581
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload6 = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %22 = inttoptr i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload6 to %struct.tn*
  tail call void @DeleteTree(%struct.tn* %22)
  %23 = load %struct.tn*, %struct.tn** %right, align 8, !tbaa !6
  tail call void @DeleteTree(%struct.tn* %23)
  %24 = load i32, i32* @x.8, align 4
  %25 = load i32, i32* @y.9, align 4
  %26 = sub i32 %24, 270505323
  %27 = add i32 %26, -1
  %28 = add i32 %27, 270505323
  %29 = add i32 %24, -1
  %30 = mul i32 %28, %24
  %31 = xor i32 %30, -1
  %32 = xor i32 1, -1
  %33 = xor i32 1724128624, -1
  %34 = or i32 %31, %32
  %35 = or i32 1724128624, %33
  %36 = xor i32 %34, -1
  %37 = and i32 %36, %35
  %38 = and i32 %30, 1
  %39 = icmp eq i32 %37, 0
  %40 = icmp slt i32 %25, 10
  %41 = and i1 %40, %39
  %42 = xor i1 %40, %39
  %43 = or i1 %41, %42
  %44 = or i1 %40, %39
  %45 = select i1 %43, i32 1810138953, i32 -1376553581
  br label %loopEntry.outer.backedge

if.end.split:                                     ; preds = %loopEntry.outer
  %46 = bitcast %struct.tn* %tree to i8*
  tail call void @free(i8* %46) #4
  ret void

originalBBalteredBB.split:                        ; preds = %loopEntry.outer
  %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload = load volatile i64, i64* %.reg2mem.sroa.0, align 8
  %47 = inttoptr i64 %.reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload to %struct.tn*
  tail call void @DeleteTree(%struct.tn* %47)
  %48 = load %struct.tn*, %struct.tn** %right, align 8, !tbaa !6
  tail call void @DeleteTree(%struct.tn* %48)
  br label %loopEntry.outer.backedge

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %i.0.reload.reg2mem = alloca i64, align 8
  %check.0.reload.reg2mem = alloca i64, align 8
  %depth.0.reload.reg2mem = alloca i32, align 4
  %maxDepth.0.reload.reg2mem = alloca i32, align 4
  %conv10.reg2mem = alloca i64, align 8
  %call6.reg2mem = alloca %struct.tn*, align 8
  %call.reg2mem = alloca i64, align 8
  %.reg2mem77 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.10, align 4
  %1 = load i32, i32* @y.11, align 4
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
  store i1 %13, i1* %.reg2mem77, align 1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %check.0.reg2mem.0 = phi i64 [ undef, %entry ], [ %check.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i64 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %depth.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %depth.0.reg2mem.0.be, %loopEntry.backedge ]
  %maxDepth.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %maxDepth.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 1162314463, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 1162314463, label %first
    i32 1110705117, label %originalBB
    i32 874219449, label %originalBBpart2
    i32 -579146885, label %if.then
    i32 152141526, label %if.else
    i32 1226795170, label %originalBB59
    i32 1117564960, label %originalBBpart261
    i32 -783585662, label %if.end
    i32 499089406, label %for.cond
    i32 2018872273, label %for.body
    i32 1391945022, label %originalBB63
    i32 -1739667807, label %originalBBpart274
    i32 1988417194, label %for.cond11
    i32 1229309658, label %for.body14
    i32 1357847214, label %for.end
    i32 -1323328591, label %for.end21
    i32 1782716208, label %originalBBalteredBB
    i32 -1943875199, label %originalBB59alteredBB
    i32 -854831570, label %originalBB63alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB63alteredBB, %originalBB59alteredBB, %originalBBalteredBB, %for.end, %for.body14, %for.cond11, %originalBBpart274, %originalBB63, %for.body, %for.cond, %if.end, %originalBBpart261, %originalBB59, %if.else, %if.then, %originalBBpart2, %originalBB, %first
  %check.0.reg2mem.0.be = phi i64 [ %check.0.reg2mem.0, %originalBB63alteredBB ], [ %check.0.reg2mem.0, %originalBB59alteredBB ], [ %check.0.reg2mem.0, %originalBBalteredBB ], [ %check.0.reg2mem.0, %for.end ], [ %180, %for.body14 ], [ %check.0.reg2mem.0, %for.cond11 ], [ 0, %originalBBpart274 ], [ %check.0.reg2mem.0, %originalBB63 ], [ %check.0.reg2mem.0, %for.body ], [ %check.0.reg2mem.0, %for.cond ], [ %check.0.reg2mem.0, %if.end ], [ %check.0.reg2mem.0, %originalBBpart261 ], [ %check.0.reg2mem.0, %originalBB59 ], [ %check.0.reg2mem.0, %if.else ], [ %check.0.reg2mem.0, %if.then ], [ %check.0.reg2mem.0, %originalBBpart2 ], [ %check.0.reg2mem.0, %originalBB ], [ %check.0.reg2mem.0, %first ], [ %check.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i64 [ %i.0.reg2mem.0, %originalBB63alteredBB ], [ %i.0.reg2mem.0, %originalBB59alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %for.end ], [ %182, %for.body14 ], [ %i.0.reg2mem.0, %for.cond11 ], [ 1, %originalBBpart274 ], [ %i.0.reg2mem.0, %originalBB63 ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %if.end ], [ %i.0.reg2mem.0, %originalBBpart261 ], [ %i.0.reg2mem.0, %originalBB59 ], [ %i.0.reg2mem.0, %if.else ], [ %i.0.reg2mem.0, %if.then ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %first ], [ %i.0.reg2mem.0, %loopEntry ]
  %depth.0.reg2mem.0.be = phi i32 [ %depth.0.reg2mem.0, %originalBB63alteredBB ], [ %depth.0.reg2mem.0, %originalBB59alteredBB ], [ %depth.0.reg2mem.0, %originalBBalteredBB ], [ %185, %for.end ], [ %depth.0.reg2mem.0, %for.body14 ], [ %depth.0.reg2mem.0, %for.cond11 ], [ %depth.0.reg2mem.0, %originalBBpart274 ], [ %depth.0.reg2mem.0, %originalBB63 ], [ %depth.0.reg2mem.0, %for.body ], [ %depth.0.reg2mem.0, %for.cond ], [ 4, %if.end ], [ %depth.0.reg2mem.0, %originalBBpart261 ], [ %depth.0.reg2mem.0, %originalBB59 ], [ %depth.0.reg2mem.0, %if.else ], [ %depth.0.reg2mem.0, %if.then ], [ %depth.0.reg2mem.0, %originalBBpart2 ], [ %depth.0.reg2mem.0, %originalBB ], [ %depth.0.reg2mem.0, %first ], [ %depth.0.reg2mem.0, %loopEntry ]
  %maxDepth.0.reg2mem.0.be = phi i32 [ %maxDepth.0.reg2mem.0, %originalBB63alteredBB ], [ %maxDepth.0.reg2mem.0, %originalBB59alteredBB ], [ %maxDepth.0.reg2mem.0, %originalBBalteredBB ], [ %maxDepth.0.reg2mem.0, %for.end ], [ %maxDepth.0.reg2mem.0, %for.body14 ], [ %maxDepth.0.reg2mem.0, %for.cond11 ], [ %maxDepth.0.reg2mem.0, %originalBBpart274 ], [ %maxDepth.0.reg2mem.0, %originalBB63 ], [ %maxDepth.0.reg2mem.0, %for.body ], [ %maxDepth.0.reg2mem.0, %for.cond ], [ %maxDepth.0.reg2mem.0, %if.end ], [ 20, %originalBBpart261 ], [ %maxDepth.0.reg2mem.0, %originalBB59 ], [ %maxDepth.0.reg2mem.0, %if.else ], [ 6, %if.then ], [ %maxDepth.0.reg2mem.0, %originalBBpart2 ], [ %maxDepth.0.reg2mem.0, %originalBB ], [ %maxDepth.0.reg2mem.0, %first ], [ %maxDepth.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1391945022, %originalBB63alteredBB ], [ 1226795170, %originalBB59alteredBB ], [ 1110705117, %originalBBalteredBB ], [ 499089406, %for.end ], [ 1988417194, %for.body14 ], [ %177, %for.cond11 ], [ 1988417194, %originalBBpart274 ], [ %176, %originalBB63 ], [ %138, %for.body ], [ %103, %for.cond ], [ 499089406, %if.end ], [ -783585662, %originalBBpart261 ], [ %99, %originalBB59 ], [ %69, %if.else ], [ -783585662, %if.then ], [ 152141526, %originalBBpart2 ], [ %51, %originalBB ], [ %18, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem77.0..reload78 = load volatile i1, i1* %.reg2mem77, align 1
  %14 = and i1 %.reg2mem.0..reload, %.reg2mem77.0..reload78
  %15 = xor i1 %.reg2mem.0..reload, %.reg2mem77.0..reload78
  %16 = or i1 %14, %15
  %17 = or i1 %.reg2mem.0..reload, %.reg2mem77.0..reload78
  %18 = select i1 %16, i32 1110705117, i32 1782716208
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %call = tail call i64 @clock() #4
  store i64 %call, i64* %call.reg2mem, align 8
  %19 = load i32, i32* @x.10, align 4
  %20 = load i32, i32* @y.11, align 4
  %21 = sub i32 0, -1
  %22 = sub i32 %19, %21
  %23 = add i32 %19, -1
  %24 = mul i32 %22, %19
  %25 = xor i32 %24, -1
  %26 = xor i32 1, -1
  %27 = xor i32 -2112711728, -1
  %28 = or i32 %25, %26
  %29 = or i32 -2112711728, %27
  %30 = xor i32 %28, -1
  %31 = and i32 %30, %29
  %32 = and i32 %24, 1
  %33 = icmp eq i32 %31, 0
  %34 = icmp slt i32 %20, 10
  %35 = xor i1 %34, true
  %36 = xor i1 %33, true
  %37 = xor i1 true, true
  %38 = and i1 %35, true
  %39 = and i1 %34, %37
  %40 = and i1 %36, true
  %41 = and i1 %33, %37
  %42 = or i1 %38, %39
  %43 = or i1 %40, %41
  %44 = xor i1 %42, %43
  %45 = or i1 %35, %36
  %46 = xor i1 %45, true
  %47 = or i1 true, %37
  %48 = and i1 %46, %47
  %49 = or i1 %44, %48
  %50 = or i1 %34, %33
  %51 = select i1 %49, i32 874219449, i32 1782716208
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  br label %loopEntry.backedge

if.else:                                          ; preds = %loopEntry
  %52 = load i32, i32* @x.10, align 4
  %53 = load i32, i32* @y.11, align 4
  %54 = sub i32 %52, -793917025
  %55 = add i32 %54, -1
  %56 = add i32 %55, -793917025
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
  %69 = select i1 %67, i32 1226795170, i32 -1943875199
  br label %loopEntry.backedge

originalBB59:                                     ; preds = %loopEntry
  %70 = load i32, i32* @x.10, align 4
  %71 = load i32, i32* @y.11, align 4
  %72 = add i32 %70, 1807477557
  %73 = add i32 %72, -1
  %74 = sub i32 %73, 1807477557
  %75 = add i32 %70, -1
  %76 = mul i32 %74, %70
  %77 = xor i32 1, -1
  %78 = xor i32 %76, %77
  %79 = and i32 %78, %76
  %80 = and i32 %76, 1
  %81 = icmp eq i32 %79, 0
  %82 = icmp slt i32 %71, 10
  %83 = xor i1 %82, true
  %84 = xor i1 %81, true
  %85 = xor i1 true, true
  %86 = and i1 %83, true
  %87 = and i1 %82, %85
  %88 = and i1 %84, true
  %89 = and i1 %81, %85
  %90 = or i1 %86, %87
  %91 = or i1 %88, %89
  %92 = xor i1 %90, %91
  %93 = or i1 %83, %84
  %94 = xor i1 %93, true
  %95 = or i1 true, %85
  %96 = and i1 %94, %95
  %97 = or i1 %92, %96
  %98 = or i1 %82, %81
  %99 = select i1 %97, i32 1117564960, i32 -1943875199
  br label %loopEntry.backedge

originalBBpart261:                                ; preds = %loopEntry
  br label %loopEntry.backedge

if.end:                                           ; preds = %loopEntry
  store i32 %maxDepth.0.reg2mem.0, i32* %maxDepth.0.reload.reg2mem, align 4
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %100 = sub i32 %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload, -1389153467
  %101 = add i32 %100, 1
  %102 = add i32 %101, -1389153467
  %add2 = add i32 %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload, 1
  %call3 = tail call %struct.tn* @BottomUpTree(i32 %102)
  %call4 = tail call i64 @ItemCheck(%struct.tn* %call3)
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %102, i64 %call4)
  tail call void @DeleteTree(%struct.tn* %call3)
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload80 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %call6 = tail call %struct.tn* @BottomUpTree(i32 %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload80)
  store %struct.tn* %call6, %struct.tn** %call6.reg2mem, align 8
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i32 %depth.0.reg2mem.0, i32* %depth.0.reload.reg2mem, align 4
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload81 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %depth.0.reload.reg2mem.0.depth.0.reload.reload = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %cmp7 = icmp ule i32 %depth.0.reload.reg2mem.0.depth.0.reload.reload, %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload81
  %103 = select i1 %cmp7, i32 2018872273, i32 -1323328591
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %104 = load i32, i32* @x.10, align 4
  %105 = load i32, i32* @y.11, align 4
  %106 = sub i32 0, %104
  %107 = sub i32 0, -1
  %108 = add i32 %106, %107
  %109 = sub i32 0, %108
  %110 = add i32 %104, -1
  %111 = mul i32 %109, %104
  %112 = xor i32 %111, -1
  %113 = xor i32 1, -1
  %114 = xor i32 1893820928, -1
  %115 = or i32 %112, %113
  %116 = or i32 1893820928, %114
  %117 = xor i32 %115, -1
  %118 = and i32 %117, %116
  %119 = and i32 %111, 1
  %120 = icmp eq i32 %118, 0
  %121 = icmp slt i32 %105, 10
  %122 = xor i1 %121, true
  %123 = xor i1 %120, true
  %124 = xor i1 false, true
  %125 = and i1 %122, false
  %126 = and i1 %121, %124
  %127 = and i1 %123, false
  %128 = and i1 %120, %124
  %129 = or i1 %125, %126
  %130 = or i1 %127, %128
  %131 = xor i1 %129, %130
  %132 = or i1 %122, %123
  %133 = xor i1 %132, true
  %134 = or i1 false, %124
  %135 = and i1 %133, %134
  %136 = or i1 %131, %135
  %137 = or i1 %121, %120
  %138 = select i1 %136, i32 1391945022, i32 -854831570
  br label %loopEntry.backedge

originalBB63:                                     ; preds = %loopEntry
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload82 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %depth.0.reload.reg2mem.0.depth.0.reload.reload87 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %139 = sub i32 0, 4
  %140 = sub i32 %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload82, %139
  %sub = add i32 %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload82, 4
  %141 = sub i32 0, %depth.0.reload.reg2mem.0.depth.0.reload.reload87
  %142 = add i32 %140, %141
  %add8 = sub i32 %140, %depth.0.reload.reg2mem.0.depth.0.reload.reload87
  %conv = uitofp i32 %142 to double
  %exp296 = tail call double @llvm.exp2.f64(double %conv)
  %conv10 = fptosi double %exp296 to i64
  store i64 %conv10, i64* %conv10.reg2mem, align 8
  %143 = load i32, i32* @x.10, align 4
  %144 = load i32, i32* @y.11, align 4
  %145 = sub i32 %143, -602234244
  %146 = add i32 %145, -1
  %147 = add i32 %146, -602234244
  %148 = add i32 %143, -1
  %149 = mul i32 %147, %143
  %150 = xor i32 %149, -1
  %151 = xor i32 1, -1
  %152 = xor i32 -290419661, -1
  %153 = or i32 %150, %151
  %154 = or i32 -290419661, %152
  %155 = xor i32 %153, -1
  %156 = and i32 %155, %154
  %157 = and i32 %149, 1
  %158 = icmp eq i32 %156, 0
  %159 = icmp slt i32 %144, 10
  %160 = xor i1 %159, true
  %161 = xor i1 %158, true
  %162 = xor i1 false, true
  %163 = and i1 %160, false
  %164 = and i1 %159, %162
  %165 = and i1 %161, false
  %166 = and i1 %158, %162
  %167 = or i1 %163, %164
  %168 = or i1 %165, %166
  %169 = xor i1 %167, %168
  %170 = or i1 %160, %161
  %171 = xor i1 %170, true
  %172 = or i1 false, %162
  %173 = and i1 %171, %172
  %174 = or i1 %169, %173
  %175 = or i1 %159, %158
  %176 = select i1 %174, i32 -1739667807, i32 -854831570
  br label %loopEntry.backedge

originalBBpart274:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond11:                                       ; preds = %loopEntry
  store i64 %check.0.reg2mem.0, i64* %check.0.reload.reg2mem, align 8
  store i64 %i.0.reg2mem.0, i64* %i.0.reload.reg2mem, align 8
  %conv10.reg2mem.0.conv10.reload = load volatile i64, i64* %conv10.reg2mem, align 8
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i64, i64* %i.0.reload.reg2mem, align 8
  %cmp12 = icmp sle i64 %i.0.reload.reg2mem.0.i.0.reload.reload, %conv10.reg2mem.0.conv10.reload
  %177 = select i1 %cmp12, i32 1229309658, i32 1357847214
  br label %loopEntry.backedge

for.body14:                                       ; preds = %loopEntry
  %depth.0.reload.reg2mem.0.depth.0.reload.reload88 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %call15 = tail call %struct.tn* @BottomUpTree(i32 %depth.0.reload.reg2mem.0.depth.0.reload.reload88)
  %call16 = tail call i64 @ItemCheck(%struct.tn* %call15)
  %check.0.reload.reg2mem.0.check.0.reload.reload = load volatile i64, i64* %check.0.reload.reg2mem, align 8
  %178 = sub i64 %check.0.reload.reg2mem.0.check.0.reload.reload, 3960825278347809250
  %179 = add i64 %178, %call16
  %180 = add i64 %179, 3960825278347809250
  %add17 = add nsw i64 %check.0.reload.reg2mem.0.check.0.reload.reload, %call16
  tail call void @DeleteTree(%struct.tn* %call15)
  %i.0.reload.reg2mem.0.i.0.reload.reload95 = load volatile i64, i64* %i.0.reload.reg2mem, align 8
  %181 = sub i64 0, 1
  %182 = sub i64 %i.0.reload.reg2mem.0.i.0.reload.reload95, %181
  %inc = add nsw i64 %i.0.reload.reg2mem.0.i.0.reload.reload95, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %conv10.reg2mem.0.conv10.reload79 = load volatile i64, i64* %conv10.reg2mem, align 8
  %depth.0.reload.reg2mem.0.depth.0.reload.reload89 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %check.0.reload.reg2mem.0.check.0.reload.reload94 = load volatile i64, i64* %check.0.reload.reg2mem, align 8
  %call18 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %conv10.reg2mem.0.conv10.reload79, i32 %depth.0.reload.reg2mem.0.depth.0.reload.reload89, i64 %check.0.reload.reg2mem.0.check.0.reload.reload94)
  %depth.0.reload.reg2mem.0.depth.0.reload.reload90 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %183 = sub i32 %depth.0.reload.reg2mem.0.depth.0.reload.reload90, -581411584
  %184 = add i32 %183, 2
  %185 = add i32 %184, -581411584
  %add20 = add i32 %depth.0.reload.reg2mem.0.depth.0.reload.reload90, 2
  br label %loopEntry.backedge

for.end21:                                        ; preds = %loopEntry
  %call6.reg2mem.0.call6.reload = load volatile %struct.tn*, %struct.tn** %call6.reg2mem, align 8
  %call22 = tail call i64 @ItemCheck(%struct.tn* %call6.reg2mem.0.call6.reload)
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload83 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %call23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload83, i64 %call22)
  %call24 = tail call i64 @clock() #4
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %186 = sub i64 %call24, -1501706351303941372
  %187 = sub i64 %186, %call.reg2mem.0.call.reload
  %188 = add i64 %187, -1501706351303941372
  %sub25 = sub nsw i64 %call24, %call.reg2mem.0.call.reload
  %conv26 = sitofp i64 %188 to double
  %div = fdiv double %conv26, 1.000000e+06
  %call27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %div)
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %callalteredBB = tail call i64 @clock() #4
  br label %loopEntry.backedge

originalBB59alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB63alteredBB:                            ; preds = %loopEntry
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload85 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %depth.0.reload.reg2mem.0.depth.0.reload.reload92 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload86 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %depth.0.reload.reg2mem.0.depth.0.reload.reload93 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  %maxDepth.0.reload.reg2mem.0.maxDepth.0.reload.reload84 = load volatile i32, i32* %maxDepth.0.reload.reg2mem, align 4
  %depth.0.reload.reg2mem.0.depth.0.reload.reload91 = load volatile i32, i32* %depth.0.reload.reg2mem, align 4
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @llvm.exp2.f64(double) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"tn", !3, i64 0, !3, i64 8}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!2, !3, i64 8}
