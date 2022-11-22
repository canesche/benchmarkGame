; ModuleID = 'hash/hash.c'
source_filename = "hash/hash.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_node = type { i8*, i32, %struct.ht_node* }
%struct.ht_ht = type { i32, %struct.ht_node**, i32, %struct.ht_node*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal unnamed_addr constant [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.6 = common local_unnamed_addr global i32 0
@y.7 = common local_unnamed_addr global i32 0
@x.8 = common local_unnamed_addr global i32 0
@y.9 = common local_unnamed_addr global i32 0
@x.10 = common local_unnamed_addr global i32 0
@y.11 = common local_unnamed_addr global i32 0
@x.12 = common local_unnamed_addr global i32 0
@y.13 = common local_unnamed_addr global i32 0
@x.14 = common local_unnamed_addr global i32 0
@y.15 = common local_unnamed_addr global i32 0
@x.16 = common local_unnamed_addr global i32 0
@y.17 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define %struct.ht_node* @ht_node_create(i8* nocapture readonly %key) local_unnamed_addr #0 {
entry:
  %cmp2.reg2mem = alloca i1, align 1
  %call1.reg2mem = alloca i8*, align 8
  %.reg2mem = alloca %struct.ht_node*, align 8
  %call = tail call noalias i8* @malloc(i64 24) #6
  %0 = bitcast %struct.ht_node** %.reg2mem to i8**
  store i8* %call, i8** %0, align 8
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %switchVar.0.ph = phi i32 [ 1580329005, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 1580329005, label %first.split
    i32 -1519426893, label %if.then.split
    i32 -1537723116, label %if.end.split
    i32 1073779704, label %originalBB.split
    i32 -638680018, label %originalBBpart2.split
    i32 -727608061, label %if.then3.split
    i32 1426566463, label %if.end4.split
    i32 1111059678, label %loopEntry.outer.backedge
  ]

loopEntry.outer.backedge:                         ; preds = %loopEntry.outer, %originalBBpart2.split, %originalBB.split, %if.end.split, %first.split
  %switchVar.0.ph.be = phi i32 [ %1, %first.split ], [ %23, %if.end.split ], [ %46, %originalBB.split ], [ %47, %originalBBpart2.split ], [ 1073779704, %loopEntry.outer ]
  br label %loopEntry.outer

infloop.preheader:                                ; preds = %loopEntry.outer
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer
  %.reg2mem.0..reload15 = load volatile %struct.ht_node*, %struct.ht_node** %.reg2mem, align 8
  %cmp = icmp eq %struct.ht_node* %.reg2mem.0..reload15, null
  %1 = select i1 %cmp, i32 -1519426893, i32 -1537723116
  br label %loopEntry.outer.backedge

if.then.split:                                    ; preds = %loopEntry.outer
  tail call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #8
  unreachable

if.end.split:                                     ; preds = %loopEntry.outer
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = add i32 %2, -32411255
  %5 = add i32 %4, -1
  %6 = sub i32 %5, -32411255
  %7 = add i32 %2, -1
  %8 = mul i32 %6, %2
  %9 = xor i32 %8, -1
  %10 = xor i32 1, -1
  %11 = xor i32 1277168589, -1
  %12 = or i32 %9, %10
  %13 = or i32 1277168589, %11
  %14 = xor i32 %12, -1
  %15 = and i32 %14, %13
  %16 = and i32 %8, 1
  %17 = icmp eq i32 %15, 0
  %18 = icmp slt i32 %3, 10
  %19 = and i1 %18, %17
  %20 = xor i1 %18, %17
  %21 = or i1 %19, %20
  %22 = or i1 %18, %17
  %23 = select i1 %21, i32 1073779704, i32 1111059678
  br label %loopEntry.outer.backedge

originalBB.split:                                 ; preds = %loopEntry.outer
  %call1 = tail call noalias i8* @strdup(i8* %key) #6
  store i8* %call1, i8** %call1.reg2mem, align 8
  %call1.reg2mem.0.call1.reload16 = load volatile i8*, i8** %call1.reg2mem, align 8
  %cmp2 = icmp eq i8* %call1.reg2mem.0.call1.reload16, null
  store i1 %cmp2, i1* %cmp2.reg2mem, align 1
  %24 = load i32, i32* @x, align 4
  %25 = load i32, i32* @y, align 4
  %26 = sub i32 0, %24
  %27 = sub i32 0, -1
  %28 = add i32 %26, %27
  %29 = sub i32 0, %28
  %30 = add i32 %24, -1
  %31 = mul i32 %29, %24
  %32 = xor i32 %31, -1
  %33 = xor i32 1, -1
  %34 = xor i32 -374329695, -1
  %35 = or i32 %32, %33
  %36 = or i32 -374329695, %34
  %37 = xor i32 %35, -1
  %38 = and i32 %37, %36
  %39 = and i32 %31, 1
  %40 = icmp eq i32 %38, 0
  %41 = icmp slt i32 %25, 10
  %42 = and i1 %41, %40
  %43 = xor i1 %41, %40
  %44 = or i1 %42, %43
  %45 = or i1 %41, %40
  %46 = select i1 %44, i32 -638680018, i32 1111059678
  br label %loopEntry.outer.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer
  %cmp2.reg2mem.0.cmp2.reload = load volatile i1, i1* %cmp2.reg2mem, align 1
  %47 = select i1 %cmp2.reg2mem.0.cmp2.reload, i32 -727608061, i32 1426566463
  br label %loopEntry.outer.backedge

if.then3.split:                                   ; preds = %loopEntry.outer
  tail call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #8
  unreachable

if.end4.split:                                    ; preds = %loopEntry.outer
  %.reg2mem.0..reload = load volatile %struct.ht_node*, %struct.ht_node** %.reg2mem, align 8
  %key5 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.reg2mem.0..reload, i64 0, i32 0
  %call1.reg2mem.0.call1.reload = load volatile i8*, i8** %call1.reg2mem, align 8
  store i8* %call1.reg2mem.0.call1.reload, i8** %key5, align 8, !tbaa !1
  %.reg2mem.0..reload12 = load volatile %struct.ht_node*, %struct.ht_node** %.reg2mem, align 8
  %val = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.reg2mem.0..reload12, i64 0, i32 1
  store i32 0, i32* %val, align 8, !tbaa !7
  %.reg2mem.0..reload13 = load volatile %struct.ht_node*, %struct.ht_node** %.reg2mem, align 8
  %next = getelementptr inbounds %struct.ht_node, %struct.ht_node* %.reg2mem.0..reload13, i64 0, i32 2
  store %struct.ht_node* null, %struct.ht_node** %next, align 8, !tbaa !8
  %.reg2mem.0..reload14 = load volatile %struct.ht_node*, %struct.ht_node** %.reg2mem, align 8
  ret %struct.ht_node* %.reg2mem.0..reload14

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.ht_ht* @ht_create(i32 %size) local_unnamed_addr #0 {
entry:
  %i.0.reload.reg2mem = alloca i32, align 4
  %.reg2mem29 = alloca i64, align 8
  %.reg2mem = alloca %struct.ht_ht*, align 8
  %call = tail call noalias i8* @malloc(i64 40) #6
  %0 = bitcast %struct.ht_ht** %.reg2mem to i8**
  store i8* %call, i8** %0, align 8
  %conv = sext i32 %size to i64
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %while.body.split, %entry
  %i.0.reg2mem.0.ph = phi i32 [ %6, %while.body.split ], [ 0, %entry ]
  br label %loopEntry.outer35

loopEntry.outer35:                                ; preds = %loopEntry.outer35.backedge, %loopEntry.outer
  %switchVar.0.ph = phi i32 [ -181240353, %loopEntry.outer ], [ %switchVar.0.ph.be, %loopEntry.outer35.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 -181240353, label %while.cond.split
    i32 694620420, label %while.body.split
    i32 -807433028, label %while.end.split
    i32 -267717035, label %originalBB.split
    i32 -41705149, label %originalBBpart2.split
    i32 653814680, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer35
  br label %infloop

while.cond.split:                                 ; preds = %loopEntry.outer35
  store i32 %i.0.reg2mem.0.ph, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload to i64
  %arrayidx = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !9
  store i64 %1, i64* %.reg2mem29, align 8
  %.reg2mem29.0..reload32 = load volatile i64, i64* %.reg2mem29, align 8
  %cmp = icmp ult i64 %.reg2mem29.0..reload32, %conv
  %2 = select i1 %cmp, i32 694620420, i32 -807433028
  br label %loopEntry.outer35.backedge

while.body.split:                                 ; preds = %loopEntry.outer35
  %i.0.reload.reg2mem.0.i.0.reload.reload33 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %3 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload33
  %4 = sub i32 0, 1
  %5 = add i32 %3, %4
  %6 = sub i32 0, %5
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload33, 1
  br label %loopEntry.outer

while.end.split:                                  ; preds = %loopEntry.outer35
  %7 = load i32, i32* @x.6, align 4
  %8 = load i32, i32* @y.7, align 4
  %9 = sub i32 0, %7
  %10 = sub i32 0, -1
  %11 = add i32 %9, %10
  %12 = sub i32 0, %11
  %13 = add i32 %7, -1
  %14 = mul i32 %12, %7
  %15 = xor i32 %14, -1
  %16 = xor i32 1, -1
  %17 = xor i32 299638497, -1
  %18 = or i32 %15, %16
  %19 = or i32 299638497, %17
  %20 = xor i32 %18, -1
  %21 = and i32 %20, %19
  %22 = and i32 %14, 1
  %23 = icmp eq i32 %21, 0
  %24 = icmp slt i32 %8, 10
  %25 = and i1 %24, %23
  %26 = xor i1 %24, %23
  %27 = or i1 %25, %26
  %28 = or i1 %24, %23
  %29 = select i1 %27, i32 -267717035, i32 653814680
  br label %loopEntry.outer35.backedge

originalBB.split:                                 ; preds = %loopEntry.outer35
  %.reg2mem29.0..reload31 = load volatile i64, i64* %.reg2mem29, align 8
  %conv4 = trunc i64 %.reg2mem29.0..reload31 to i32
  %.reg2mem.0..reload23 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %size5 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload23, i64 0, i32 0
  store i32 %conv4, i32* %size5, align 8, !tbaa !11
  %sext34 = shl i64 %.reg2mem29.0..reload31, 32
  %conv7 = ashr exact i64 %sext34, 32
  %call8 = tail call noalias i8* @calloc(i64 %conv7, i64 8) #6
  %.reg2mem.0..reload24 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %tbl = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload24, i64 0, i32 1
  %30 = bitcast %struct.ht_node*** %tbl to i8**
  store i8* %call8, i8** %30, align 8, !tbaa !13
  %.reg2mem.0..reload25 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %iter_index = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload25, i64 0, i32 2
  store i32 0, i32* %iter_index, align 8, !tbaa !14
  %.reg2mem.0..reload26 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %iter_next = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload26, i64 0, i32 3
  store %struct.ht_node* null, %struct.ht_node** %iter_next, align 8, !tbaa !15
  %.reg2mem.0..reload27 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %items = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload27, i64 0, i32 4
  store i32 0, i32* %items, align 8, !tbaa !16
  %31 = load i32, i32* @x.6, align 4
  %32 = load i32, i32* @y.7, align 4
  %33 = add i32 %31, 1534476547
  %34 = add i32 %33, -1
  %35 = sub i32 %34, 1534476547
  %36 = add i32 %31, -1
  %37 = mul i32 %35, %31
  %38 = xor i32 1, -1
  %39 = xor i32 %37, %38
  %40 = and i32 %39, %37
  %41 = and i32 %37, 1
  %42 = icmp eq i32 %40, 0
  %43 = icmp slt i32 %32, 10
  %44 = and i1 %43, %42
  %45 = xor i1 %43, %42
  %46 = or i1 %44, %45
  %47 = or i1 %43, %42
  %48 = select i1 %46, i32 -41705149, i32 653814680
  br label %loopEntry.outer35.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer35
  %.reg2mem.0..reload28 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  ret %struct.ht_ht* %.reg2mem.0..reload28

originalBBalteredBB.split:                        ; preds = %loopEntry.outer35
  %.reg2mem29.0..reload30 = load volatile i64, i64* %.reg2mem29, align 8
  %conv4alteredBB = trunc i64 %.reg2mem29.0..reload30 to i32
  %.reg2mem.0..reload22 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %size5alteredBB = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload22, i64 0, i32 0
  store i32 %conv4alteredBB, i32* %size5alteredBB, align 8, !tbaa !11
  %sext = shl i64 %.reg2mem29.0..reload30, 32
  %conv7alteredBB = ashr exact i64 %sext, 32
  %call8alteredBB = tail call noalias i8* @calloc(i64 %conv7alteredBB, i64 8) #6
  %.reg2mem.0..reload21 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %tblalteredBB = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload21, i64 0, i32 1
  %49 = bitcast %struct.ht_node*** %tblalteredBB to i8**
  store i8* %call8alteredBB, i8** %49, align 8, !tbaa !13
  %.reg2mem.0..reload20 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %iter_indexalteredBB = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload20, i64 0, i32 2
  store i32 0, i32* %iter_indexalteredBB, align 8, !tbaa !14
  %.reg2mem.0..reload19 = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %iter_nextalteredBB = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload19, i64 0, i32 3
  store %struct.ht_node* null, %struct.ht_node** %iter_nextalteredBB, align 8, !tbaa !15
  %.reg2mem.0..reload = load volatile %struct.ht_ht*, %struct.ht_ht** %.reg2mem, align 8
  %itemsalteredBB = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %.reg2mem.0..reload, i64 0, i32 4
  store i32 0, i32* %itemsalteredBB, align 8, !tbaa !16
  br label %loopEntry.outer35.backedge

loopEntry.outer35.backedge:                       ; preds = %originalBBalteredBB.split, %originalBB.split, %while.end.split, %while.cond.split
  %switchVar.0.ph.be = phi i32 [ %2, %while.cond.split ], [ %29, %while.end.split ], [ %48, %originalBB.split ], [ -267717035, %originalBBalteredBB.split ]
  br label %loopEntry.outer35

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ht_destroy(%struct.ht_ht* nocapture %ht) local_unnamed_addr #0 {
entry:
  %next.0.reload.reg2mem = alloca %struct.ht_node*, align 8
  %i.0.reload.reg2mem = alloca i32, align 4
  %inc.reg2mem = alloca i32, align 4
  %.reg2mem24.sroa.0 = alloca i64, align 8
  %.reg2mem22 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x.8, align 4
  %1 = load i32, i32* @y.9, align 4
  %2 = add i32 %0, -342362247
  %3 = add i32 %2, -1
  %4 = sub i32 %3, -342362247
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 1, -1
  %8 = xor i32 %6, %7
  %9 = and i32 %8, %6
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %9, 0
  store i1 %11, i1* %.reg2mem, align 1
  %12 = icmp slt i32 %1, 10
  store i1 %12, i1* %.reg2mem22, align 1
  %size = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %ht, i64 0, i32 0
  %tbl = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %ht, i64 0, i32 1
  %13 = bitcast %struct.ht_node*** %tbl to i64*
  %14 = bitcast %struct.ht_ht* %ht to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %next.0.reg2mem.0 = phi %struct.ht_node* [ undef, %entry ], [ %next.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 1267395324, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 1267395324, label %first
    i32 1696912491, label %originalBB
    i32 -649796059, label %originalBBpart2
    i32 -434883124, label %for.cond
    i32 -348053033, label %for.body
    i32 637936842, label %while.cond
    i32 -1056248363, label %while.body
    i32 -927944738, label %for.inc
    i32 38513827, label %originalBB13
    i32 -35583620, label %originalBBpart215
    i32 769062519, label %for.end
    i32 497195182, label %originalBB17
    i32 -210699754, label %originalBBpart219
    i32 -1957805297, label %originalBBalteredBB
    i32 -796690088, label %originalBB13alteredBB
    i32 -1554375750, label %originalBB17alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB17alteredBB, %originalBB13alteredBB, %originalBBalteredBB, %originalBB17, %for.end, %originalBBpart215, %originalBB13, %for.inc, %while.body, %while.cond, %for.body, %for.cond, %originalBBpart2, %originalBB, %first
  %next.0.reg2mem.0.be = phi %struct.ht_node* [ %next.0.reg2mem.0, %originalBB17alteredBB ], [ %next.0.reg2mem.0, %originalBB13alteredBB ], [ %next.0.reg2mem.0, %originalBBalteredBB ], [ %next.0.reg2mem.0, %originalBB17 ], [ %next.0.reg2mem.0, %for.end ], [ %next.0.reg2mem.0, %originalBBpart215 ], [ %next.0.reg2mem.0, %originalBB13 ], [ %next.0.reg2mem.0, %for.inc ], [ %48, %while.body ], [ %next.0.reg2mem.0, %while.cond ], [ %46, %for.body ], [ %next.0.reg2mem.0, %for.cond ], [ %next.0.reg2mem.0, %originalBBpart2 ], [ %next.0.reg2mem.0, %originalBB ], [ %next.0.reg2mem.0, %first ], [ %next.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB17alteredBB ], [ %i.0.reg2mem.0, %originalBB13alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB17 ], [ %i.0.reg2mem.0, %for.end ], [ %inc.reg2mem.0.inc.reload, %originalBBpart215 ], [ %i.0.reg2mem.0, %originalBB13 ], [ %i.0.reg2mem.0, %for.inc ], [ %i.0.reg2mem.0, %while.body ], [ %i.0.reg2mem.0, %while.cond ], [ %i.0.reg2mem.0, %for.body ], [ %i.0.reg2mem.0, %for.cond ], [ 0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %first ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 497195182, %originalBB17alteredBB ], [ 38513827, %originalBB13alteredBB ], [ 1696912491, %originalBBalteredBB ], [ %158, %originalBB17 ], [ %140, %for.end ], [ -434883124, %originalBBpart215 ], [ %117, %originalBB13 ], [ %80, %for.inc ], [ 637936842, %while.body ], [ %47, %while.cond ], [ 637936842, %for.body ], [ %44, %for.cond ], [ -434883124, %originalBBpart2 ], [ %41, %originalBB ], [ %19, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem22.0..reload23 = load volatile i1, i1* %.reg2mem22, align 1
  %15 = and i1 %.reg2mem.0..reload, %.reg2mem22.0..reload23
  %16 = xor i1 %.reg2mem.0..reload, %.reg2mem22.0..reload23
  %17 = or i1 %15, %16
  %18 = or i1 %.reg2mem.0..reload, %.reg2mem22.0..reload23
  %19 = select i1 %17, i32 1696912491, i32 -1957805297
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %20 = load i32, i32* @x.8, align 4
  %21 = load i32, i32* @y.9, align 4
  %22 = add i32 %20, -1249870369
  %23 = add i32 %22, -1
  %24 = sub i32 %23, -1249870369
  %25 = add i32 %20, -1
  %26 = mul i32 %24, %20
  %27 = xor i32 %26, -1
  %28 = xor i32 1, -1
  %29 = xor i32 -123432558, -1
  %30 = or i32 %27, %28
  %31 = or i32 -123432558, %29
  %32 = xor i32 %30, -1
  %33 = and i32 %32, %31
  %34 = and i32 %26, 1
  %35 = icmp eq i32 %33, 0
  %36 = icmp slt i32 %21, 10
  %37 = and i1 %36, %35
  %38 = xor i1 %36, %35
  %39 = or i1 %37, %38
  %40 = or i1 %36, %35
  %41 = select i1 %39, i32 -649796059, i32 -1957805297
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %42 = load i32, i32* %size, align 8, !tbaa !11
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, %42
  %43 = load i64, i64* %13, align 8, !tbaa !13
  store i64 %43, i64* %.reg2mem24.sroa.0, align 8
  %44 = select i1 %cmp, i32 -348053033, i32 769062519
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload28 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload28 to i64
  %.reg2mem24.sroa.0.0..reg2mem24.sroa.0.0..reload27 = load volatile i64, i64* %.reg2mem24.sroa.0, align 8
  %45 = inttoptr i64 %.reg2mem24.sroa.0.0..reg2mem24.sroa.0.0..reload27 to %struct.ht_node**
  %arrayidx = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %45, i64 %idxprom
  %46 = load %struct.ht_node*, %struct.ht_node** %arrayidx, align 8, !tbaa !17
  br label %loopEntry.backedge

while.cond:                                       ; preds = %loopEntry
  store %struct.ht_node* %next.0.reg2mem.0, %struct.ht_node** %next.0.reload.reg2mem, align 8
  %next.0.reload.reg2mem.0.next.0.reload.reload = load volatile %struct.ht_node*, %struct.ht_node** %next.0.reload.reg2mem, align 8
  %tobool = icmp ne %struct.ht_node* %next.0.reload.reg2mem.0.next.0.reload.reload, null
  %47 = select i1 %tobool, i32 -1056248363, i32 -927944738
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  %next.0.reload.reg2mem.0.next.0.reload.reload34 = load volatile %struct.ht_node*, %struct.ht_node** %next.0.reload.reg2mem, align 8
  %next1 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %next.0.reload.reg2mem.0.next.0.reload.reload34, i64 0, i32 2
  %48 = load %struct.ht_node*, %struct.ht_node** %next1, align 8, !tbaa !8
  %next.0.reload.reg2mem.0.next.0.reload.reload32 = load volatile %struct.ht_node*, %struct.ht_node** %next.0.reload.reg2mem, align 8
  %key = getelementptr inbounds %struct.ht_node, %struct.ht_node* %next.0.reload.reg2mem.0.next.0.reload.reload32, i64 0, i32 0
  %49 = load i8*, i8** %key, align 8, !tbaa !1
  tail call void @free(i8* %49) #6
  %next.0.reload.reg2mem.0.next.0.reload.reload33 = load volatile %struct.ht_node*, %struct.ht_node** %next.0.reload.reg2mem, align 8
  %50 = bitcast %struct.ht_node* %next.0.reload.reg2mem.0.next.0.reload.reload33 to i8*
  tail call void @free(i8* %50) #6
  br label %loopEntry.backedge

for.inc:                                          ; preds = %loopEntry
  %51 = load i32, i32* @x.8, align 4
  %52 = load i32, i32* @y.9, align 4
  %53 = add i32 %51, 1087122849
  %54 = add i32 %53, -1
  %55 = sub i32 %54, 1087122849
  %56 = add i32 %51, -1
  %57 = mul i32 %55, %51
  %58 = xor i32 1, -1
  %59 = xor i32 %57, %58
  %60 = and i32 %59, %57
  %61 = and i32 %57, 1
  %62 = icmp eq i32 %60, 0
  %63 = icmp slt i32 %52, 10
  %64 = xor i1 %63, true
  %65 = xor i1 %62, true
  %66 = xor i1 true, true
  %67 = and i1 %64, true
  %68 = and i1 %63, %66
  %69 = and i1 %65, true
  %70 = and i1 %62, %66
  %71 = or i1 %67, %68
  %72 = or i1 %69, %70
  %73 = xor i1 %71, %72
  %74 = or i1 %64, %65
  %75 = xor i1 %74, true
  %76 = or i1 true, %66
  %77 = and i1 %75, %76
  %78 = or i1 %73, %77
  %79 = or i1 %63, %62
  %80 = select i1 %78, i32 38513827, i32 -796690088
  br label %loopEntry.backedge

originalBB13:                                     ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload29 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %81 = sub i32 0, 1
  %82 = sub i32 %i.0.reload.reg2mem.0.i.0.reload.reload29, %81
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload29, 1
  store i32 %82, i32* %inc.reg2mem, align 4
  %83 = load i32, i32* @x.8, align 4
  %84 = load i32, i32* @y.9, align 4
  %85 = sub i32 0, %83
  %86 = sub i32 0, -1
  %87 = add i32 %85, %86
  %88 = sub i32 0, %87
  %89 = add i32 %83, -1
  %90 = mul i32 %88, %83
  %91 = xor i32 %90, -1
  %92 = xor i32 1, -1
  %93 = xor i32 -479981881, -1
  %94 = or i32 %91, %92
  %95 = or i32 -479981881, %93
  %96 = xor i32 %94, -1
  %97 = and i32 %96, %95
  %98 = and i32 %90, 1
  %99 = icmp eq i32 %97, 0
  %100 = icmp slt i32 %84, 10
  %101 = xor i1 %100, true
  %102 = xor i1 %99, true
  %103 = xor i1 false, true
  %104 = and i1 %101, false
  %105 = and i1 %100, %103
  %106 = and i1 %102, false
  %107 = and i1 %99, %103
  %108 = or i1 %104, %105
  %109 = or i1 %106, %107
  %110 = xor i1 %108, %109
  %111 = or i1 %101, %102
  %112 = xor i1 %111, true
  %113 = or i1 false, %103
  %114 = and i1 %112, %113
  %115 = or i1 %110, %114
  %116 = or i1 %100, %99
  %117 = select i1 %115, i32 -35583620, i32 -796690088
  br label %loopEntry.backedge

originalBBpart215:                                ; preds = %loopEntry
  %inc.reg2mem.0.inc.reload = load volatile i32, i32* %inc.reg2mem, align 4
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %118 = load i32, i32* @x.8, align 4
  %119 = load i32, i32* @y.9, align 4
  %120 = sub i32 0, %118
  %121 = sub i32 0, -1
  %122 = add i32 %120, %121
  %123 = sub i32 0, %122
  %124 = add i32 %118, -1
  %125 = mul i32 %123, %118
  %126 = xor i32 %125, -1
  %127 = xor i32 1, -1
  %128 = xor i32 1760368935, -1
  %129 = or i32 %126, %127
  %130 = or i32 1760368935, %128
  %131 = xor i32 %129, -1
  %132 = and i32 %131, %130
  %133 = and i32 %125, 1
  %134 = icmp eq i32 %132, 0
  %135 = icmp slt i32 %119, 10
  %136 = and i1 %135, %134
  %137 = xor i1 %135, %134
  %138 = or i1 %136, %137
  %139 = or i1 %135, %134
  %140 = select i1 %138, i32 497195182, i32 -1554375750
  br label %loopEntry.backedge

originalBB17:                                     ; preds = %loopEntry
  %.reg2mem24.sroa.0.0..reg2mem24.sroa.0.0..reload26 = load volatile i64, i64* %.reg2mem24.sroa.0, align 8
  %141 = inttoptr i64 %.reg2mem24.sroa.0.0..reg2mem24.sroa.0.0..reload26 to i8*
  tail call void @free(i8* %141) #6
  tail call void @free(i8* %14) #6
  %142 = load i32, i32* @x.8, align 4
  %143 = load i32, i32* @y.9, align 4
  %144 = sub i32 0, -1
  %145 = sub i32 %142, %144
  %146 = add i32 %142, -1
  %147 = mul i32 %145, %142
  %148 = xor i32 1, -1
  %149 = xor i32 %147, %148
  %150 = and i32 %149, %147
  %151 = and i32 %147, 1
  %152 = icmp eq i32 %150, 0
  %153 = icmp slt i32 %143, 10
  %154 = and i1 %153, %152
  %155 = xor i1 %153, %152
  %156 = or i1 %154, %155
  %157 = or i1 %153, %152
  %158 = select i1 %156, i32 -210699754, i32 -1554375750
  br label %loopEntry.backedge

originalBBpart219:                                ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB13alteredBB:                            ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload31 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload30 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB17alteredBB:                            ; preds = %loopEntry
  %.reg2mem24.sroa.0.0..reg2mem24.sroa.0.0..reload25 = load volatile i64, i64* %.reg2mem24.sroa.0, align 8
  %159 = inttoptr i64 %.reg2mem24.sroa.0.0..reg2mem24.sroa.0.0..reload25 to i8*
  tail call void @free(i8* %159) #6
  tail call void @free(i8* %14) #6
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %node.0.reload.reg2mem.i46 = alloca %struct.ht_node*, align 8
  %.reg2mem.sroa.0.i47 = alloca i64, align 8
  %prev.0.reload.reg2mem.i = alloca %struct.ht_node*, align 8
  %node.0.reload.reg2mem.i = alloca %struct.ht_node*, align 8
  %call5.reg2mem.i = alloca %struct.ht_node*, align 8
  %tobool3.reg2mem.i = alloca i1, align 1
  %.reg2mem.sroa.0.i = alloca i64, align 8
  %idxprom.reg2mem.i = alloca i64, align 8
  %tbl.reg2mem.i = alloca %struct.ht_node***, align 8
  %c.0.reload.reg2mem = alloca i32, align 4
  %i.1.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %call1.reg2mem = alloca %struct.ht_ht*, align 8
  %call.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i8*, align 8
  %buf = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  store i8* %0, i8** %.reg2mem, align 8
  %.reg2mem.0..reload36 = load volatile i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.start(i64 32, i8* %.reg2mem.0..reload36) #6
  %call = call i64 @clock() #6
  store i64 %call, i64* %call.reg2mem, align 8
  %call1 = call %struct.ht_ht* @ht_create(i32 3500000)
  store %struct.ht_ht* %call1, %struct.ht_ht** %call1.reg2mem, align 8
  %prev.0.reload.reg2mem.i.0..sroa_cast = bitcast %struct.ht_node** %prev.0.reload.reg2mem.i to i8*
  %node.0.reload.reg2mem.i.0..sroa_cast = bitcast %struct.ht_node** %node.0.reload.reg2mem.i to i8*
  %call5.reg2mem.i.0..sroa_cast = bitcast %struct.ht_node** %call5.reg2mem.i to i8*
  %tobool3.reg2mem.i.0..sroa_cast = bitcast i1* %tobool3.reg2mem.i to i8*
  %.reg2mem.sroa.0.i.0..sroa_cast = bitcast i64* %.reg2mem.sroa.0.i to i8*
  %idxprom.reg2mem.i.0..sroa_cast = bitcast i64* %idxprom.reg2mem.i to i8*
  %tbl.reg2mem.i.0..sroa_cast = bitcast %struct.ht_node**** %tbl.reg2mem.i to i8*
  %node.0.reload.reg2mem.i46.0..sroa_cast = bitcast %struct.ht_node** %node.0.reload.reg2mem.i46 to i8*
  %.reg2mem.sroa.0.i47.0..sroa_cast = bitcast i64* %.reg2mem.sroa.0.i47 to i8*
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %c.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %c.1.reg2mem.0.be, %loopEntry.backedge ]
  %i.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.1.reg2mem.0.be, %loopEntry.backedge ]
  %c.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %c.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 1, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 867297361, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 867297361, label %for.cond
    i32 1971687298, label %for.body
    i32 -1135143587, label %for.end
    i32 -1792241916, label %for.cond5
    i32 1453792949, label %for.body7
    i32 1381611564, label %if.then
    i32 1329921416, label %for.inc13
    i32 389283652, label %for.end14
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %for.inc13, %if.then, %ht_find.exit, %for.cond5, %for.end, %ht_find_new.exit, %for.cond
  %c.1.reg2mem.0.be = phi i32 [ %c.1.reg2mem.0, %for.inc13 ], [ %309, %if.then ], [ %c.0.reload.reg2mem.0.c.0.reload.reload, %ht_find.exit ], [ %c.1.reg2mem.0, %for.cond5 ], [ %c.1.reg2mem.0, %for.end ], [ %c.1.reg2mem.0, %ht_find_new.exit ], [ %c.1.reg2mem.0, %for.cond ], [ %c.1.reg2mem.0, %loopEntry ]
  %i.1.reg2mem.0.be = phi i32 [ %312, %for.inc13 ], [ %i.1.reg2mem.0, %if.then ], [ %i.1.reg2mem.0, %ht_find.exit ], [ %i.1.reg2mem.0, %for.cond5 ], [ 3500000, %for.end ], [ %i.1.reg2mem.0, %ht_find_new.exit ], [ %i.1.reg2mem.0, %for.cond ], [ %i.1.reg2mem.0, %loopEntry ]
  %c.0.reg2mem.0.be = phi i32 [ %c.1.reg2mem.0, %for.inc13 ], [ %c.0.reg2mem.0, %if.then ], [ %c.0.reg2mem.0, %ht_find.exit ], [ %c.0.reg2mem.0, %for.cond5 ], [ 0, %for.end ], [ %c.0.reg2mem.0, %ht_find_new.exit ], [ %c.0.reg2mem.0, %for.cond ], [ %c.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %for.inc13 ], [ %i.0.reg2mem.0, %if.then ], [ %i.0.reg2mem.0, %ht_find.exit ], [ %i.0.reg2mem.0, %for.cond5 ], [ %i.0.reg2mem.0, %for.end ], [ %200, %ht_find_new.exit ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -1792241916, %for.inc13 ], [ 1329921416, %if.then ], [ %306, %ht_find.exit ], [ %201, %for.cond5 ], [ -1792241916, %for.end ], [ 867297361, %ht_find_new.exit ], [ %1, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 3500001
  %1 = select i1 %cmp, i32 1971687298, i32 -1135143587
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload39 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %i.0.reload.reg2mem.0.i.0.reload.reload39) #6
  %call1.reg2mem.0.call1.reload = load volatile %struct.ht_ht*, %struct.ht_ht** %call1.reg2mem, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %prev.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %node.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %call5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 1, i8* nonnull %tobool3.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %.reg2mem.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %idxprom.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %tbl.reg2mem.i.0..sroa_cast)
  %call.i = call fastcc i32 @ht_hashcode(%struct.ht_ht* %call1.reg2mem.0.call1.reload, i8* nonnull %0) #6
  %tbl.i = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %call1.reg2mem.0.call1.reload, i64 0, i32 1
  store %struct.ht_node*** %tbl.i, %struct.ht_node**** %tbl.reg2mem.i, align 8
  %tbl.reg2mem.i.0.tbl.reg2mem.0.tbl.reload42.i = load volatile %struct.ht_node***, %struct.ht_node**** %tbl.reg2mem.i, align 8
  %2 = load %struct.ht_node**, %struct.ht_node*** %tbl.reg2mem.i.0.tbl.reg2mem.0.tbl.reload42.i, align 8, !tbaa !13
  %idxprom.i = sext i32 %call.i to i64
  store i64 %idxprom.i, i64* %idxprom.reg2mem.i, align 8
  %idxprom.reg2mem.i.0.idxprom.reg2mem.0.idxprom.reload44.i = load volatile i64, i64* %idxprom.reg2mem.i, align 8
  %arrayidx.i = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %2, i64 %idxprom.reg2mem.i.0.idxprom.reg2mem.0.idxprom.reload44.i
  %3 = load %struct.ht_node*, %struct.ht_node** %arrayidx.i, align 8, !tbaa !17
  %items.i = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %call1.reg2mem.0.call1.reload, i64 0, i32 4
  br label %loopEntry.i

loopEntry.i:                                      ; preds = %loopEntry.i.backedge, %for.body
  %retval.0.reg2mem.0.i = phi %struct.ht_node* [ undef, %for.body ], [ %retval.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %node.0.reg2mem.0.i = phi %struct.ht_node* [ %3, %for.body ], [ %node.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %prev.0.reg2mem.0.i = phi %struct.ht_node* [ null, %for.body ], [ %prev.0.reg2mem.0.i.be, %loopEntry.i.backedge ]
  %switchVar.0.i = phi i32 [ 172426840, %for.body ], [ %switchVar.0.i.be, %loopEntry.i.backedge ]
  switch i32 %switchVar.0.i, label %loopEntry.i.backedge [
    i32 172426840, label %while.cond.i
    i32 -924377705, label %while.body.i
    i32 952973508, label %if.then.i
    i32 1513994694, label %if.end.i
    i32 -1445690999, label %originalBB.i
    i32 -139187258, label %originalBBpart2.i
    i32 1237681998, label %while.end.i
    i32 2000248187, label %originalBB26.i
    i32 -1086759218, label %originalBBpart234.i
    i32 -179783893, label %if.then4.i
    i32 -1974536651, label %if.else.i
    i32 1761053099, label %originalBB36.i
    i32 -746934095, label %originalBBpart238.i
    i32 901533774, label %ht_find_new.exit
    i32 1357844485, label %originalBBalteredBB.i
    i32 501660958, label %originalBB26alteredBB.i
    i32 822415132, label %originalBB36alteredBB.i
  ]

loopEntry.i.backedge:                             ; preds = %loopEntry.i, %while.cond.i, %while.body.i, %if.then.i, %if.end.i, %originalBB.i, %originalBBpart2.i, %while.end.i, %originalBB26.i, %originalBBpart234.i, %if.then4.i, %if.else.i, %originalBB36.i, %originalBBpart238.i, %originalBBalteredBB.i, %originalBB26alteredBB.i, %originalBB36alteredBB.i
  %retval.0.reg2mem.0.i.be = phi %struct.ht_node* [ %retval.0.reg2mem.0.i, %originalBB36alteredBB.i ], [ %retval.0.reg2mem.0.i, %originalBB26alteredBB.i ], [ %retval.0.reg2mem.0.i, %originalBBalteredBB.i ], [ %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload46.i, %originalBBpart238.i ], [ %retval.0.reg2mem.0.i, %originalBB36.i ], [ %retval.0.reg2mem.0.i, %if.else.i ], [ %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload45.i, %if.then4.i ], [ %retval.0.reg2mem.0.i, %originalBBpart234.i ], [ %retval.0.reg2mem.0.i, %originalBB26.i ], [ %retval.0.reg2mem.0.i, %while.end.i ], [ %retval.0.reg2mem.0.i, %originalBBpart2.i ], [ %retval.0.reg2mem.0.i, %originalBB.i ], [ %retval.0.reg2mem.0.i, %if.end.i ], [ %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload.i, %if.then.i ], [ %retval.0.reg2mem.0.i, %while.body.i ], [ %retval.0.reg2mem.0.i, %while.cond.i ], [ %retval.0.reg2mem.0.i, %loopEntry.i ]
  %node.0.reg2mem.0.i.be = phi %struct.ht_node* [ %node.0.reg2mem.0.i, %originalBB36alteredBB.i ], [ %node.0.reg2mem.0.i, %originalBB26alteredBB.i ], [ %node.0.reg2mem.0.i, %originalBBalteredBB.i ], [ %node.0.reg2mem.0.i, %originalBBpart238.i ], [ %node.0.reg2mem.0.i, %originalBB36.i ], [ %node.0.reg2mem.0.i, %if.else.i ], [ %node.0.reg2mem.0.i, %if.then4.i ], [ %node.0.reg2mem.0.i, %originalBBpart234.i ], [ %node.0.reg2mem.0.i, %originalBB26.i ], [ %node.0.reg2mem.0.i, %while.end.i ], [ %62, %originalBBpart2.i ], [ %node.0.reg2mem.0.i, %originalBB.i ], [ %node.0.reg2mem.0.i, %if.end.i ], [ %node.0.reg2mem.0.i, %if.then.i ], [ %node.0.reg2mem.0.i, %while.body.i ], [ %node.0.reg2mem.0.i, %while.cond.i ], [ %node.0.reg2mem.0.i, %loopEntry.i ]
  %prev.0.reg2mem.0.i.be = phi %struct.ht_node* [ %prev.0.reg2mem.0.i, %originalBB36alteredBB.i ], [ %prev.0.reg2mem.0.i, %originalBB26alteredBB.i ], [ %prev.0.reg2mem.0.i, %originalBBalteredBB.i ], [ %prev.0.reg2mem.0.i, %originalBBpart238.i ], [ %prev.0.reg2mem.0.i, %originalBB36.i ], [ %prev.0.reg2mem.0.i, %if.else.i ], [ %prev.0.reg2mem.0.i, %if.then4.i ], [ %prev.0.reg2mem.0.i, %originalBBpart234.i ], [ %prev.0.reg2mem.0.i, %originalBB26.i ], [ %prev.0.reg2mem.0.i, %while.end.i ], [ %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload53.i, %originalBBpart2.i ], [ %prev.0.reg2mem.0.i, %originalBB.i ], [ %prev.0.reg2mem.0.i, %if.end.i ], [ %prev.0.reg2mem.0.i, %if.then.i ], [ %prev.0.reg2mem.0.i, %while.body.i ], [ %prev.0.reg2mem.0.i, %while.cond.i ], [ %prev.0.reg2mem.0.i, %loopEntry.i ]
  %switchVar.0.i.be = phi i32 [ 1761053099, %originalBB36alteredBB.i ], [ 2000248187, %originalBB26alteredBB.i ], [ -1445690999, %originalBBalteredBB.i ], [ 901533774, %originalBBpart238.i ], [ %193, %originalBB36.i ], [ %162, %if.else.i ], [ 901533774, %if.then4.i ], [ %127, %originalBBpart234.i ], [ %126, %originalBB26.i ], [ %92, %while.end.i ], [ 172426840, %originalBBpart2.i ], [ %61, %originalBB.i ], [ %24, %if.end.i ], [ 901533774, %if.then.i ], [ %6, %while.body.i ], [ %4, %while.cond.i ], [ %switchVar.0.i, %loopEntry.i ]
  br label %loopEntry.i

while.cond.i:                                     ; preds = %loopEntry.i
  store %struct.ht_node* %node.0.reg2mem.0.i, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  store %struct.ht_node* %prev.0.reg2mem.0.i, %struct.ht_node** %prev.0.reload.reg2mem.i, align 8
  %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload49.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  %tobool.i = icmp ne %struct.ht_node* %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload49.i, null
  %4 = select i1 %tobool.i, i32 -924377705, i32 1237681998
  br label %loopEntry.i.backedge

while.body.i:                                     ; preds = %loopEntry.i
  %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload50.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  %key1.i = getelementptr inbounds %struct.ht_node, %struct.ht_node* %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload50.i, i64 0, i32 0
  %5 = load i8*, i8** %key1.i, align 8, !tbaa !1
  %call2.i = call i32 @strcmp(i8* nonnull %0, i8* %5) #9
  %cmp.i = icmp eq i32 %call2.i, 0
  %6 = select i1 %cmp.i, i32 952973508, i32 1513994694
  br label %loopEntry.i.backedge

if.then.i:                                        ; preds = %loopEntry.i
  %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  br label %loopEntry.i.backedge

if.end.i:                                         ; preds = %loopEntry.i
  %7 = load i32, i32* @x.12, align 4
  %8 = load i32, i32* @y.13, align 4
  %9 = add i32 %7, -1404969039
  %10 = add i32 %9, -1
  %11 = sub i32 %10, -1404969039
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
  %24 = select i1 %22, i32 -1445690999, i32 1357844485
  br label %loopEntry.i.backedge

originalBB.i:                                     ; preds = %loopEntry.i
  %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload51.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  %next.i = getelementptr inbounds %struct.ht_node, %struct.ht_node* %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload51.i, i64 0, i32 2
  %25 = bitcast %struct.ht_node** %next.i to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !8
  store i64 %26, i64* %.reg2mem.sroa.0.i, align 8
  %27 = load i32, i32* @x.12, align 4
  %28 = load i32, i32* @y.13, align 4
  %29 = sub i32 0, %27
  %30 = sub i32 0, -1
  %31 = add i32 %29, %30
  %32 = sub i32 0, %31
  %33 = add i32 %27, -1
  %34 = mul i32 %32, %27
  %35 = xor i32 %34, -1
  %36 = xor i32 1, -1
  %37 = xor i32 -1320306009, -1
  %38 = or i32 %35, %36
  %39 = or i32 -1320306009, %37
  %40 = xor i32 %38, -1
  %41 = and i32 %40, %39
  %42 = and i32 %34, 1
  %43 = icmp eq i32 %41, 0
  %44 = icmp slt i32 %28, 10
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
  %61 = select i1 %59, i32 -139187258, i32 1357844485
  br label %loopEntry.i.backedge

originalBBpart2.i:                                ; preds = %loopEntry.i
  %.reg2mem.sroa.0.i.0..reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload.i = load volatile i64, i64* %.reg2mem.sroa.0.i, align 8
  %62 = inttoptr i64 %.reg2mem.sroa.0.i.0..reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload.i to %struct.ht_node*
  %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload53.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  br label %loopEntry.i.backedge

while.end.i:                                      ; preds = %loopEntry.i
  %63 = load i32, i32* @x.12, align 4
  %64 = load i32, i32* @y.13, align 4
  %65 = sub i32 %63, 1037908009
  %66 = add i32 %65, -1
  %67 = add i32 %66, 1037908009
  %68 = add i32 %63, -1
  %69 = mul i32 %67, %63
  %70 = xor i32 1, -1
  %71 = xor i32 %69, %70
  %72 = and i32 %71, %69
  %73 = and i32 %69, 1
  %74 = icmp eq i32 %72, 0
  %75 = icmp slt i32 %64, 10
  %76 = xor i1 %75, true
  %77 = xor i1 %74, true
  %78 = xor i1 true, true
  %79 = and i1 %76, true
  %80 = and i1 %75, %78
  %81 = and i1 %77, true
  %82 = and i1 %74, %78
  %83 = or i1 %79, %80
  %84 = or i1 %81, %82
  %85 = xor i1 %83, %84
  %86 = or i1 %76, %77
  %87 = xor i1 %86, true
  %88 = or i1 true, %78
  %89 = and i1 %87, %88
  %90 = or i1 %85, %89
  %91 = or i1 %75, %74
  %92 = select i1 %90, i32 2000248187, i32 501660958
  br label %loopEntry.i.backedge

originalBB26.i:                                   ; preds = %loopEntry.i
  %93 = load i32, i32* %items.i, align 8, !tbaa !16
  %94 = sub i32 0, 1
  %95 = sub i32 %93, %94
  %inc.i = add nsw i32 %93, 1
  store i32 %95, i32* %items.i, align 8, !tbaa !16
  %prev.0.reload.reg2mem.i.0.prev.0.reload.reg2mem.0.prev.0.reload.reload.i = load volatile %struct.ht_node*, %struct.ht_node** %prev.0.reload.reg2mem.i, align 8
  %tobool3.i = icmp ne %struct.ht_node* %prev.0.reload.reg2mem.i.0.prev.0.reload.reg2mem.0.prev.0.reload.reload.i, null
  store i1 %tobool3.i, i1* %tobool3.reg2mem.i, align 1
  %call5.i = call %struct.ht_node* @ht_node_create(i8* nonnull %0) #6
  store %struct.ht_node* %call5.i, %struct.ht_node** %call5.reg2mem.i, align 8
  %96 = load i32, i32* @x.12, align 4
  %97 = load i32, i32* @y.13, align 4
  %98 = sub i32 0, %96
  %99 = sub i32 0, -1
  %100 = add i32 %98, %99
  %101 = sub i32 0, %100
  %102 = add i32 %96, -1
  %103 = mul i32 %101, %96
  %104 = xor i32 1, -1
  %105 = xor i32 %103, %104
  %106 = and i32 %105, %103
  %107 = and i32 %103, 1
  %108 = icmp eq i32 %106, 0
  %109 = icmp slt i32 %97, 10
  %110 = xor i1 %109, true
  %111 = xor i1 %108, true
  %112 = xor i1 false, true
  %113 = and i1 %110, false
  %114 = and i1 %109, %112
  %115 = and i1 %111, false
  %116 = and i1 %108, %112
  %117 = or i1 %113, %114
  %118 = or i1 %115, %116
  %119 = xor i1 %117, %118
  %120 = or i1 %110, %111
  %121 = xor i1 %120, true
  %122 = or i1 false, %112
  %123 = and i1 %121, %122
  %124 = or i1 %119, %123
  %125 = or i1 %109, %108
  %126 = select i1 %124, i32 -1086759218, i32 501660958
  br label %loopEntry.i.backedge

originalBBpart234.i:                              ; preds = %loopEntry.i
  %tobool3.reg2mem.i.0.tobool3.reg2mem.0.tobool3.reload.i = load volatile i1, i1* %tobool3.reg2mem.i, align 1
  %127 = select i1 %tobool3.reg2mem.i.0.tobool3.reg2mem.0.tobool3.reload.i, i32 -179783893, i32 -1974536651
  br label %loopEntry.i.backedge

if.then4.i:                                       ; preds = %loopEntry.i
  %prev.0.reload.reg2mem.i.0.prev.0.reload.reg2mem.0.prev.0.reload.reload54.i = load volatile %struct.ht_node*, %struct.ht_node** %prev.0.reload.reg2mem.i, align 8
  %next6.i = getelementptr inbounds %struct.ht_node, %struct.ht_node* %prev.0.reload.reg2mem.i.0.prev.0.reload.reg2mem.0.prev.0.reload.reload54.i, i64 0, i32 2
  %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload48.i = load volatile %struct.ht_node*, %struct.ht_node** %call5.reg2mem.i, align 8
  store %struct.ht_node* %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload48.i, %struct.ht_node** %next6.i, align 8, !tbaa !8
  %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload45.i = load volatile %struct.ht_node*, %struct.ht_node** %call5.reg2mem.i, align 8
  br label %loopEntry.i.backedge

if.else.i:                                        ; preds = %loopEntry.i
  %128 = load i32, i32* @x.12, align 4
  %129 = load i32, i32* @y.13, align 4
  %130 = sub i32 0, %128
  %131 = sub i32 0, -1
  %132 = add i32 %130, %131
  %133 = sub i32 0, %132
  %134 = add i32 %128, -1
  %135 = mul i32 %133, %128
  %136 = xor i32 %135, -1
  %137 = xor i32 1, -1
  %138 = xor i32 152559359, -1
  %139 = or i32 %136, %137
  %140 = or i32 152559359, %138
  %141 = xor i32 %139, -1
  %142 = and i32 %141, %140
  %143 = and i32 %135, 1
  %144 = icmp eq i32 %142, 0
  %145 = icmp slt i32 %129, 10
  %146 = xor i1 %145, true
  %147 = xor i1 %144, true
  %148 = xor i1 true, true
  %149 = and i1 %146, true
  %150 = and i1 %145, %148
  %151 = and i1 %147, true
  %152 = and i1 %144, %148
  %153 = or i1 %149, %150
  %154 = or i1 %151, %152
  %155 = xor i1 %153, %154
  %156 = or i1 %146, %147
  %157 = xor i1 %156, true
  %158 = or i1 true, %148
  %159 = and i1 %157, %158
  %160 = or i1 %155, %159
  %161 = or i1 %145, %144
  %162 = select i1 %160, i32 1761053099, i32 822415132
  br label %loopEntry.i.backedge

originalBB36.i:                                   ; preds = %loopEntry.i
  %tbl.reg2mem.i.0.tbl.reg2mem.0.tbl.reload41.i = load volatile %struct.ht_node***, %struct.ht_node**** %tbl.reg2mem.i, align 8
  %163 = load %struct.ht_node**, %struct.ht_node*** %tbl.reg2mem.i.0.tbl.reg2mem.0.tbl.reload41.i, align 8, !tbaa !13
  %idxprom.reg2mem.i.0.idxprom.reg2mem.0.idxprom.reload43.i = load volatile i64, i64* %idxprom.reg2mem.i, align 8
  %arrayidx10.i = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %163, i64 %idxprom.reg2mem.i.0.idxprom.reg2mem.0.idxprom.reload43.i
  %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload47.i = load volatile %struct.ht_node*, %struct.ht_node** %call5.reg2mem.i, align 8
  store %struct.ht_node* %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload47.i, %struct.ht_node** %arrayidx10.i, align 8, !tbaa !17
  %164 = load i32, i32* @x.12, align 4
  %165 = load i32, i32* @y.13, align 4
  %166 = add i32 %164, -540121332
  %167 = add i32 %166, -1
  %168 = sub i32 %167, -540121332
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
  %193 = select i1 %191, i32 -746934095, i32 822415132
  br label %loopEntry.i.backedge

originalBBpart238.i:                              ; preds = %loopEntry.i
  %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload46.i = load volatile %struct.ht_node*, %struct.ht_node** %call5.reg2mem.i, align 8
  br label %loopEntry.i.backedge

originalBBalteredBB.i:                            ; preds = %loopEntry.i
  %node.0.reload.reg2mem.i.0.node.0.reload.reg2mem.0.node.0.reload.reload52.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i, align 8
  br label %loopEntry.i.backedge

originalBB26alteredBB.i:                          ; preds = %loopEntry.i
  %194 = load i32, i32* %items.i, align 8, !tbaa !16
  %195 = sub i32 0, 1
  %196 = sub i32 %194, %195
  %incalteredBB.i = add nsw i32 %194, 1
  store i32 %196, i32* %items.i, align 8, !tbaa !16
  %prev.0.reload.reg2mem.i.0.prev.0.reload.reg2mem.0.prev.0.reload.reload55.i = load volatile %struct.ht_node*, %struct.ht_node** %prev.0.reload.reg2mem.i, align 8
  %call5alteredBB.i = call %struct.ht_node* @ht_node_create(i8* nonnull %0) #6
  br label %loopEntry.i.backedge

originalBB36alteredBB.i:                          ; preds = %loopEntry.i
  %tbl.reg2mem.i.0.tbl.reg2mem.0.tbl.reload.i = load volatile %struct.ht_node***, %struct.ht_node**** %tbl.reg2mem.i, align 8
  %197 = load %struct.ht_node**, %struct.ht_node*** %tbl.reg2mem.i.0.tbl.reg2mem.0.tbl.reload.i, align 8, !tbaa !13
  %idxprom.reg2mem.i.0.idxprom.reg2mem.0.idxprom.reload.i = load volatile i64, i64* %idxprom.reg2mem.i, align 8
  %arrayidx10alteredBB.i = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %197, i64 %idxprom.reg2mem.i.0.idxprom.reg2mem.0.idxprom.reload.i
  %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload.i = load volatile %struct.ht_node*, %struct.ht_node** %call5.reg2mem.i, align 8
  store %struct.ht_node* %call5.reg2mem.i.0.call5.reg2mem.0.call5.reload.i, %struct.ht_node** %arrayidx10alteredBB.i, align 8, !tbaa !17
  br label %loopEntry.i.backedge

ht_find_new.exit:                                 ; preds = %loopEntry.i
  call void @llvm.lifetime.end(i64 8, i8* nonnull %prev.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %node.0.reload.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %call5.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %tobool3.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %.reg2mem.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %idxprom.reg2mem.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %tbl.reg2mem.i.0..sroa_cast)
  %val = getelementptr inbounds %struct.ht_node, %struct.ht_node* %retval.0.reg2mem.0.i, i64 0, i32 1
  %i.0.reload.reg2mem.0.i.0.reload.reload40 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  store i32 %i.0.reload.reg2mem.0.i.0.reload.reload40, i32* %val, align 8, !tbaa !7
  %i.0.reload.reg2mem.0.i.0.reload.reload41 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %198 = add i32 %i.0.reload.reg2mem.0.i.0.reload.reload41, -1461152431
  %199 = add i32 %198, 1
  %200 = sub i32 %199, -1461152431
  %inc = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload41, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond5:                                        ; preds = %loopEntry
  store i32 %i.1.reg2mem.0, i32* %i.1.reload.reg2mem, align 4
  store i32 %c.0.reg2mem.0, i32* %c.0.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %cmp6 = icmp sgt i32 %i.1.reload.reg2mem.0.i.1.reload.reload, 0
  %201 = select i1 %cmp6, i32 1453792949, i32 389283652
  br label %loopEntry.backedge

for.body7:                                        ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload42 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %i.1.reload.reg2mem.0.i.1.reload.reload42) #6
  %call1.reg2mem.0.call1.reload37 = load volatile %struct.ht_ht*, %struct.ht_ht** %call1.reg2mem, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %node.0.reload.reg2mem.i46.0..sroa_cast)
  call void @llvm.lifetime.start(i64 8, i8* nonnull %.reg2mem.sroa.0.i47.0..sroa_cast)
  %call.i48 = call fastcc i32 @ht_hashcode(%struct.ht_ht* %call1.reg2mem.0.call1.reload37, i8* nonnull %0) #6
  %tbl.i49 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %call1.reg2mem.0.call1.reload37, i64 0, i32 1
  %202 = load %struct.ht_node**, %struct.ht_node*** %tbl.i49, align 8, !tbaa !13
  %idxprom.i50 = sext i32 %call.i48 to i64
  %arrayidx.i51 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %202, i64 %idxprom.i50
  %203 = load %struct.ht_node*, %struct.ht_node** %arrayidx.i51, align 8, !tbaa !17
  br label %loopEntry.i55

loopEntry.i55:                                    ; preds = %loopEntry.i55.backedge, %for.body7
  %retval.0.reg2mem.0.i52 = phi %struct.ht_node* [ undef, %for.body7 ], [ %retval.0.reg2mem.0.i52.be, %loopEntry.i55.backedge ]
  %node.0.reg2mem.0.i53 = phi %struct.ht_node* [ %203, %for.body7 ], [ %node.0.reg2mem.0.i53.be, %loopEntry.i55.backedge ]
  %switchVar.0.i54 = phi i32 [ -705596689, %for.body7 ], [ %switchVar.0.i54.be, %loopEntry.i55.backedge ]
  switch i32 %switchVar.0.i54, label %loopEntry.i55.backedge [
    i32 -705596689, label %while.cond.i57
    i32 518379893, label %while.body.i61
    i32 1228397769, label %if.then.i63
    i32 620205762, label %if.end.i64
    i32 -2060384232, label %originalBB.i66
    i32 -1907558262, label %originalBBpart2.i68
    i32 -632307503, label %while.end.i69
    i32 -113035682, label %originalBB10.i
    i32 -1138284886, label %originalBBpart212.i
    i32 1581293749, label %ht_find.exit
    i32 -206884622, label %originalBBalteredBB.i70
    i32 -944331343, label %originalBB10alteredBB.i
  ]

loopEntry.i55.backedge:                           ; preds = %loopEntry.i55, %while.cond.i57, %while.body.i61, %if.then.i63, %if.end.i64, %originalBB.i66, %originalBBpart2.i68, %while.end.i69, %originalBB10.i, %originalBBpart212.i, %originalBBalteredBB.i70, %originalBB10alteredBB.i
  %retval.0.reg2mem.0.i52.be = phi %struct.ht_node* [ %retval.0.reg2mem.0.i52, %originalBB10alteredBB.i ], [ %retval.0.reg2mem.0.i52, %originalBBalteredBB.i70 ], [ null, %originalBBpart212.i ], [ %retval.0.reg2mem.0.i52, %originalBB10.i ], [ %retval.0.reg2mem.0.i52, %while.end.i69 ], [ %retval.0.reg2mem.0.i52, %originalBBpart2.i68 ], [ %retval.0.reg2mem.0.i52, %originalBB.i66 ], [ %retval.0.reg2mem.0.i52, %if.end.i64 ], [ %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload.i62, %if.then.i63 ], [ %retval.0.reg2mem.0.i52, %while.body.i61 ], [ %retval.0.reg2mem.0.i52, %while.cond.i57 ], [ %retval.0.reg2mem.0.i52, %loopEntry.i55 ]
  %node.0.reg2mem.0.i53.be = phi %struct.ht_node* [ %node.0.reg2mem.0.i53, %originalBB10alteredBB.i ], [ %node.0.reg2mem.0.i53, %originalBBalteredBB.i70 ], [ %node.0.reg2mem.0.i53, %originalBBpart212.i ], [ %node.0.reg2mem.0.i53, %originalBB10.i ], [ %node.0.reg2mem.0.i53, %while.end.i69 ], [ %261, %originalBBpart2.i68 ], [ %node.0.reg2mem.0.i53, %originalBB.i66 ], [ %node.0.reg2mem.0.i53, %if.end.i64 ], [ %node.0.reg2mem.0.i53, %if.then.i63 ], [ %node.0.reg2mem.0.i53, %while.body.i61 ], [ %node.0.reg2mem.0.i53, %while.cond.i57 ], [ %node.0.reg2mem.0.i53, %loopEntry.i55 ]
  %switchVar.0.i54.be = phi i32 [ -113035682, %originalBB10alteredBB.i ], [ -2060384232, %originalBBalteredBB.i70 ], [ 1581293749, %originalBBpart212.i ], [ %305, %originalBB10.i ], [ %284, %while.end.i69 ], [ -705596689, %originalBBpart2.i68 ], [ %260, %originalBB.i66 ], [ %224, %if.end.i64 ], [ 1581293749, %if.then.i63 ], [ %206, %while.body.i61 ], [ %204, %while.cond.i57 ], [ %switchVar.0.i54, %loopEntry.i55 ]
  br label %loopEntry.i55

while.cond.i57:                                   ; preds = %loopEntry.i55
  store %struct.ht_node* %node.0.reg2mem.0.i53, %struct.ht_node** %node.0.reload.reg2mem.i46, align 8
  %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload15.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i46, align 8
  %tobool.i56 = icmp ne %struct.ht_node* %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload15.i, null
  %204 = select i1 %tobool.i56, i32 518379893, i32 -632307503
  br label %loopEntry.i55.backedge

while.body.i61:                                   ; preds = %loopEntry.i55
  %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload16.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i46, align 8
  %key1.i58 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload16.i, i64 0, i32 0
  %205 = load i8*, i8** %key1.i58, align 8, !tbaa !1
  %call2.i59 = call i32 @strcmp(i8* nonnull %0, i8* %205) #9
  %cmp.i60 = icmp eq i32 %call2.i59, 0
  %206 = select i1 %cmp.i60, i32 1228397769, i32 620205762
  br label %loopEntry.i55.backedge

if.then.i63:                                      ; preds = %loopEntry.i55
  %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload.i62 = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i46, align 8
  br label %loopEntry.i55.backedge

if.end.i64:                                       ; preds = %loopEntry.i55
  %207 = load i32, i32* @x.14, align 4
  %208 = load i32, i32* @y.15, align 4
  %209 = sub i32 %207, 2120889621
  %210 = add i32 %209, -1
  %211 = add i32 %210, 2120889621
  %212 = add i32 %207, -1
  %213 = mul i32 %211, %207
  %214 = xor i32 1, -1
  %215 = xor i32 %213, %214
  %216 = and i32 %215, %213
  %217 = and i32 %213, 1
  %218 = icmp eq i32 %216, 0
  %219 = icmp slt i32 %208, 10
  %220 = and i1 %219, %218
  %221 = xor i1 %219, %218
  %222 = or i1 %220, %221
  %223 = or i1 %219, %218
  %224 = select i1 %222, i32 -2060384232, i32 -206884622
  br label %loopEntry.i55.backedge

originalBB.i66:                                   ; preds = %loopEntry.i55
  %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload17.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i46, align 8
  %next.i65 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload17.i, i64 0, i32 2
  %225 = bitcast %struct.ht_node** %next.i65 to i64*
  %226 = load i64, i64* %225, align 8, !tbaa !8
  store i64 %226, i64* %.reg2mem.sroa.0.i47, align 8
  %227 = load i32, i32* @x.14, align 4
  %228 = load i32, i32* @y.15, align 4
  %229 = add i32 %227, 116712851
  %230 = add i32 %229, -1
  %231 = sub i32 %230, 116712851
  %232 = add i32 %227, -1
  %233 = mul i32 %231, %227
  %234 = xor i32 %233, -1
  %235 = xor i32 1, -1
  %236 = xor i32 228982430, -1
  %237 = or i32 %234, %235
  %238 = or i32 228982430, %236
  %239 = xor i32 %237, -1
  %240 = and i32 %239, %238
  %241 = and i32 %233, 1
  %242 = icmp eq i32 %240, 0
  %243 = icmp slt i32 %228, 10
  %244 = xor i1 %243, true
  %245 = xor i1 %242, true
  %246 = xor i1 false, true
  %247 = and i1 %244, false
  %248 = and i1 %243, %246
  %249 = and i1 %245, false
  %250 = and i1 %242, %246
  %251 = or i1 %247, %248
  %252 = or i1 %249, %250
  %253 = xor i1 %251, %252
  %254 = or i1 %244, %245
  %255 = xor i1 %254, true
  %256 = or i1 false, %246
  %257 = and i1 %255, %256
  %258 = or i1 %253, %257
  %259 = or i1 %243, %242
  %260 = select i1 %258, i32 -1907558262, i32 -206884622
  br label %loopEntry.i55.backedge

originalBBpart2.i68:                              ; preds = %loopEntry.i55
  %.reg2mem.sroa.0.i47.0..reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload.i67 = load volatile i64, i64* %.reg2mem.sroa.0.i47, align 8
  %261 = inttoptr i64 %.reg2mem.sroa.0.i47.0..reg2mem.sroa.0.0..reg2mem.sroa.0.0..reload.i67 to %struct.ht_node*
  br label %loopEntry.i55.backedge

while.end.i69:                                    ; preds = %loopEntry.i55
  %262 = load i32, i32* @x.14, align 4
  %263 = load i32, i32* @y.15, align 4
  %264 = sub i32 0, %262
  %265 = sub i32 0, -1
  %266 = add i32 %264, %265
  %267 = sub i32 0, %266
  %268 = add i32 %262, -1
  %269 = mul i32 %267, %262
  %270 = xor i32 %269, -1
  %271 = xor i32 1, -1
  %272 = xor i32 350690730, -1
  %273 = or i32 %270, %271
  %274 = or i32 350690730, %272
  %275 = xor i32 %273, -1
  %276 = and i32 %275, %274
  %277 = and i32 %269, 1
  %278 = icmp eq i32 %276, 0
  %279 = icmp slt i32 %263, 10
  %280 = and i1 %279, %278
  %281 = xor i1 %279, %278
  %282 = or i1 %280, %281
  %283 = or i1 %279, %278
  %284 = select i1 %282, i32 -113035682, i32 -944331343
  br label %loopEntry.i55.backedge

originalBB10.i:                                   ; preds = %loopEntry.i55
  %285 = load i32, i32* @x.14, align 4
  %286 = load i32, i32* @y.15, align 4
  %287 = sub i32 0, -1
  %288 = sub i32 %285, %287
  %289 = add i32 %285, -1
  %290 = mul i32 %288, %285
  %291 = xor i32 %290, -1
  %292 = xor i32 1, -1
  %293 = xor i32 -339048276, -1
  %294 = or i32 %291, %292
  %295 = or i32 -339048276, %293
  %296 = xor i32 %294, -1
  %297 = and i32 %296, %295
  %298 = and i32 %290, 1
  %299 = icmp eq i32 %297, 0
  %300 = icmp slt i32 %286, 10
  %301 = and i1 %300, %299
  %302 = xor i1 %300, %299
  %303 = or i1 %301, %302
  %304 = or i1 %300, %299
  %305 = select i1 %303, i32 -1138284886, i32 -944331343
  br label %loopEntry.i55.backedge

originalBBpart212.i:                              ; preds = %loopEntry.i55
  br label %loopEntry.i55.backedge

originalBBalteredBB.i70:                          ; preds = %loopEntry.i55
  %node.0.reload.reg2mem.i46.0.node.0.reload.reg2mem.0.node.0.reload.reload18.i = load volatile %struct.ht_node*, %struct.ht_node** %node.0.reload.reg2mem.i46, align 8
  br label %loopEntry.i55.backedge

originalBB10alteredBB.i:                          ; preds = %loopEntry.i55
  br label %loopEntry.i55.backedge

ht_find.exit:                                     ; preds = %loopEntry.i55
  call void @llvm.lifetime.end(i64 8, i8* nonnull %node.0.reload.reg2mem.i46.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %.reg2mem.sroa.0.i47.0..sroa_cast)
  %tobool = icmp ne %struct.ht_node* %retval.0.reg2mem.0.i52, null
  %306 = select i1 %tobool, i32 1381611564, i32 1329921416
  %c.0.reload.reg2mem.0.c.0.reload.reload = load volatile i32, i32* %c.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %c.0.reload.reg2mem.0.c.0.reload.reload44 = load volatile i32, i32* %c.0.reload.reg2mem, align 4
  %307 = add i32 %c.0.reload.reg2mem.0.c.0.reload.reload44, -388114154
  %308 = add i32 %307, 1
  %309 = sub i32 %308, -388114154
  %inc12 = add nsw i32 %c.0.reload.reg2mem.0.c.0.reload.reload44, 1
  br label %loopEntry.backedge

for.inc13:                                        ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload43 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %310 = add i32 %i.1.reload.reg2mem.0.i.1.reload.reload43, 126920626
  %311 = add i32 %310, -1
  %312 = sub i32 %311, 126920626
  %dec = add nsw i32 %i.1.reload.reg2mem.0.i.1.reload.reload43, -1
  br label %loopEntry.backedge

for.end14:                                        ; preds = %loopEntry
  %call1.reg2mem.0.call1.reload38 = load volatile %struct.ht_ht*, %struct.ht_ht** %call1.reg2mem, align 8
  call void @ht_destroy(%struct.ht_ht* %call1.reg2mem.0.call1.reload38)
  %c.0.reload.reg2mem.0.c.0.reload.reload45 = load volatile i32, i32* %c.0.reload.reg2mem, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %c.0.reload.reg2mem.0.c.0.reload.reload45)
  %call16 = call i64 @clock() #6
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %313 = sub i64 %call16, -4147579099395051722
  %314 = sub i64 %313, %call.reg2mem.0.call.reload
  %315 = add i64 %314, -4147579099395051722
  %sub = sub nsw i64 %call16, %call.reg2mem.0.call.reload
  %conv = sitofp i64 %315 to double
  %div = fdiv double %conv, 1.000000e+06
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), double %div)
  %.reg2mem.0..reload = load volatile i8*, i8** %.reg2mem, align 8
  call void @llvm.lifetime.end(i64 32, i8* %.reg2mem.0..reload) #6
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @ht_hashcode(%struct.ht_ht* nocapture readonly %ht, i8* %key) unnamed_addr #4 {
entry:
  %key.addr.0.reload.reg2mem = alloca i8*, align 8
  %val.0.reload.reg2mem = alloca i64, align 8
  %incdec.ptr.reg2mem = alloca i8*, align 8
  %add.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i8, align 1
  br label %loopEntry.outer

loopEntry.outer:                                  ; preds = %originalBBpart2.split, %entry
  %val.0.reg2mem.0.ph = phi i64 [ %add.reg2mem.0.add.reload, %originalBBpart2.split ], [ 0, %entry ]
  %key.addr.0.reg2mem.0.ph = phi i8* [ %incdec.ptr.reg2mem.0.incdec.ptr.reload, %originalBBpart2.split ], [ %key, %entry ]
  br label %loopEntry.outer34

loopEntry.outer34:                                ; preds = %loopEntry.outer34.backedge, %loopEntry.outer
  %switchVar.0.ph = phi i32 [ -2036417470, %loopEntry.outer ], [ %switchVar.0.ph.be, %loopEntry.outer34.backedge ]
  switch i32 %switchVar.0.ph, label %infloop.preheader [
    i32 -2036417470, label %for.cond.split
    i32 1004858, label %for.body.split
    i32 -1908588114, label %originalBB.split
    i32 1688396011, label %originalBBpart2.split
    i32 -1972210007, label %for.end.split
    i32 1859086204, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer34
  br label %infloop

for.cond.split:                                   ; preds = %loopEntry.outer34
  store i64 %val.0.reg2mem.0.ph, i64* %val.0.reload.reg2mem, align 8
  store i8* %key.addr.0.reg2mem.0.ph, i8** %key.addr.0.reload.reg2mem, align 8
  %key.addr.0.reload.reg2mem.0.key.addr.0.reload.reload = load volatile i8*, i8** %key.addr.0.reload.reg2mem, align 8
  %0 = load i8, i8* %key.addr.0.reload.reg2mem.0.key.addr.0.reload.reload, align 1, !tbaa !18
  store i8 %0, i8* %.reg2mem, align 1
  %.reg2mem.0..reload19 = load volatile i8, i8* %.reg2mem, align 1
  %tobool = icmp ne i8 %.reg2mem.0..reload19, 0
  %1 = select i1 %tobool, i32 1004858, i32 -1972210007
  br label %loopEntry.outer34.backedge

for.body.split:                                   ; preds = %loopEntry.outer34
  %2 = load i32, i32* @x.16, align 4
  %3 = load i32, i32* @y.17, align 4
  %4 = add i32 %2, 200201461
  %5 = add i32 %4, -1
  %6 = sub i32 %5, 200201461
  %7 = add i32 %2, -1
  %8 = mul i32 %6, %2
  %9 = xor i32 %8, -1
  %10 = xor i32 1, -1
  %11 = xor i32 -150139482, -1
  %12 = or i32 %9, %10
  %13 = or i32 -150139482, %11
  %14 = xor i32 %12, -1
  %15 = and i32 %14, %13
  %16 = and i32 %8, 1
  %17 = icmp eq i32 %15, 0
  %18 = icmp slt i32 %3, 10
  %19 = and i1 %18, %17
  %20 = xor i1 %18, %17
  %21 = or i1 %19, %20
  %22 = or i1 %18, %17
  %23 = select i1 %21, i32 -1908588114, i32 1859086204
  br label %loopEntry.outer34.backedge

originalBB.split:                                 ; preds = %loopEntry.outer34
  %val.0.reload.reg2mem.0.val.0.reload.reload = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %mul = mul i64 %val.0.reload.reg2mem.0.val.0.reload.reload, 5
  %.reg2mem.0..reload18 = load volatile i8, i8* %.reg2mem, align 1
  %conv = sext i8 %.reg2mem.0..reload18 to i64
  %24 = sub i64 %conv, -5132516781051097987
  %25 = add i64 %24, %mul
  %26 = add i64 %25, -5132516781051097987
  %add = add i64 %conv, %mul
  store i64 %26, i64* %add.reg2mem, align 8
  %key.addr.0.reload.reg2mem.0.key.addr.0.reload.reload32 = load volatile i8*, i8** %key.addr.0.reload.reg2mem, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %key.addr.0.reload.reg2mem.0.key.addr.0.reload.reload32, i64 1
  store i8* %incdec.ptr, i8** %incdec.ptr.reg2mem, align 8
  %27 = load i32, i32* @x.16, align 4
  %28 = load i32, i32* @y.17, align 4
  %29 = sub i32 %27, 938935449
  %30 = add i32 %29, -1
  %31 = add i32 %30, 938935449
  %32 = add i32 %27, -1
  %33 = mul i32 %31, %27
  %34 = xor i32 %33, -1
  %35 = xor i32 1, -1
  %36 = xor i32 1650839252, -1
  %37 = or i32 %34, %35
  %38 = or i32 1650839252, %36
  %39 = xor i32 %37, -1
  %40 = and i32 %39, %38
  %41 = and i32 %33, 1
  %42 = icmp eq i32 %40, 0
  %43 = icmp slt i32 %28, 10
  %44 = xor i1 %43, true
  %45 = xor i1 %42, true
  %46 = xor i1 true, true
  %47 = and i1 %44, true
  %48 = and i1 %43, %46
  %49 = and i1 %45, true
  %50 = and i1 %42, %46
  %51 = or i1 %47, %48
  %52 = or i1 %49, %50
  %53 = xor i1 %51, %52
  %54 = or i1 %44, %45
  %55 = xor i1 %54, true
  %56 = or i1 true, %46
  %57 = and i1 %55, %56
  %58 = or i1 %53, %57
  %59 = or i1 %43, %42
  %60 = select i1 %58, i32 1688396011, i32 1859086204
  br label %loopEntry.outer34.backedge

originalBBpart2.split:                            ; preds = %loopEntry.outer34
  %add.reg2mem.0.add.reload = load volatile i64, i64* %add.reg2mem, align 8
  %incdec.ptr.reg2mem.0.incdec.ptr.reload = load volatile i8*, i8** %incdec.ptr.reg2mem, align 8
  br label %loopEntry.outer

for.end.split:                                    ; preds = %loopEntry.outer34
  %size = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %ht, i64 0, i32 0
  %61 = load i32, i32* %size, align 8, !tbaa !11
  %conv1 = sext i32 %61 to i64
  %val.0.reload.reg2mem.0.val.0.reload.reload20 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %rem = urem i64 %val.0.reload.reg2mem.0.val.0.reload.reload20, %conv1
  %conv2 = trunc i64 %rem to i32
  ret i32 %conv2

originalBBalteredBB.split:                        ; preds = %loopEntry.outer34
  %val.0.reload.reg2mem.0.val.0.reload.reload22 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload23 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload24 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload25 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload26 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload27 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload28 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload29 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload30 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload31 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %val.0.reload.reg2mem.0.val.0.reload.reload21 = load volatile i64, i64* %val.0.reload.reg2mem, align 8
  %.reg2mem.0..reload = load volatile i8, i8* %.reg2mem, align 1
  %key.addr.0.reload.reg2mem.0.key.addr.0.reload.reload33 = load volatile i8*, i8** %key.addr.0.reload.reg2mem, align 8
  br label %loopEntry.outer34.backedge

loopEntry.outer34.backedge:                       ; preds = %originalBBalteredBB.split, %originalBB.split, %for.body.split, %for.cond.split
  %switchVar.0.ph.be = phi i32 [ %1, %for.cond.split ], [ %23, %for.body.split ], [ %60, %originalBB.split ], [ -1908588114, %originalBBalteredBB.split ]
  br label %loopEntry.outer34

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"ht_node", !3, i64 0, !6, i64 8, !3, i64 16}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!2, !6, i64 8}
!8 = !{!2, !3, i64 16}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"ht_ht", !6, i64 0, !3, i64 8, !6, i64 16, !3, i64 24, !6, i64 32}
!13 = !{!12, !3, i64 8}
!14 = !{!12, !6, i64 16}
!15 = !{!12, !3, i64 24}
!16 = !{!12, !6, i64 32}
!17 = !{!3, !3, i64 0}
!18 = !{!4, !4, i64 0}
