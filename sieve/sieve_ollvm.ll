; ModuleID = 'sieve/sieve.c'
source_filename = "sieve/sieve.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.flags = internal unnamed_addr global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %k.0.reload.reg2mem = alloca i64, align 8
  %count.1.reload.reg2mem = alloca i32, align 4
  %i.1.reload.reg2mem = alloca i64, align 8
  %i.0.reload.reg2mem = alloca i64, align 8
  %count.0.reload.reg2mem = alloca i32, align 4
  %cmp.reg2mem = alloca i1, align 1
  %dec.reg2mem = alloca i32, align 4
  %call.reg2mem = alloca i64, align 8
  %call = tail call i64 @clock() #2
  store i64 %call, i64* %call.reg2mem, align 8
  %0 = load i32, i32* @x, align 4
  %1 = load i32, i32* @y, align 4
  %2 = add i32 %0, 332799061
  %3 = add i32 %2, -1
  %4 = sub i32 %3, 332799061
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 964395671, -1
  %10 = or i32 %7, %8
  %11 = or i32 964395671, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  %16 = icmp slt i32 %1, 10
  %17 = and i1 %16, %15
  %18 = xor i1 %16, %15
  %19 = or i1 %17, %18
  %20 = or i1 %16, %15
  %21 = select i1 %19, i32 748532254, i32 1074894418
  %22 = select i1 %19, i32 767880769, i32 1074894418
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %count.2.reg2mem.0 = phi i32 [ undef, %entry ], [ %count.2.reg2mem.0.be, %loopEntry.backedge ]
  %k.0.reg2mem.0 = phi i64 [ undef, %entry ], [ %k.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.1.reg2mem.0 = phi i64 [ undef, %entry ], [ %i.1.reg2mem.0.be, %loopEntry.backedge ]
  %count.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %count.1.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i64 [ undef, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %NUM.0.reg2mem.0 = phi i32 [ 170000, %entry ], [ %NUM.0.reg2mem.0.be, %loopEntry.backedge ]
  %count.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %count.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 264679303, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 264679303, label %while.cond
    i32 635054130, label %while.body
    i32 1954067924, label %for.cond
    i32 748532254, label %originalBB
    i32 767880769, label %originalBBpart2
    i32 -1660463559, label %for.body
    i32 1140485890, label %for.end
    i32 -1411017597, label %for.cond1
    i32 998542603, label %for.body3
    i32 1309683685, label %if.then
    i32 -351874560, label %for.cond6
    i32 -552972097, label %for.body8
    i32 1843809287, label %for.end12
    i32 31417318, label %for.inc14
    i32 -2115962749, label %while.end
    i32 1074894418, label %originalBBalteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBBalteredBB, %for.inc14, %for.end12, %for.body8, %for.cond6, %if.then, %for.body3, %for.cond1, %for.end, %for.body, %originalBBpart2, %originalBB, %for.cond, %while.body, %while.cond
  %count.2.reg2mem.0.be = phi i32 [ %count.2.reg2mem.0, %originalBBalteredBB ], [ %count.2.reg2mem.0, %for.inc14 ], [ %38, %for.end12 ], [ %count.2.reg2mem.0, %for.body8 ], [ %count.2.reg2mem.0, %for.cond6 ], [ %count.2.reg2mem.0, %if.then ], [ %count.1.reload.reg2mem.0.count.1.reload.reload, %for.body3 ], [ %count.2.reg2mem.0, %for.cond1 ], [ %count.2.reg2mem.0, %for.end ], [ %count.2.reg2mem.0, %for.body ], [ %count.2.reg2mem.0, %originalBBpart2 ], [ %count.2.reg2mem.0, %originalBB ], [ %count.2.reg2mem.0, %for.cond ], [ %count.2.reg2mem.0, %while.body ], [ %count.2.reg2mem.0, %while.cond ], [ %count.2.reg2mem.0, %loopEntry ]
  %k.0.reg2mem.0.be = phi i64 [ %k.0.reg2mem.0, %originalBBalteredBB ], [ %k.0.reg2mem.0, %for.inc14 ], [ %k.0.reg2mem.0, %for.end12 ], [ %36, %for.body8 ], [ %k.0.reg2mem.0, %for.cond6 ], [ %add, %if.then ], [ %k.0.reg2mem.0, %for.body3 ], [ %k.0.reg2mem.0, %for.cond1 ], [ %k.0.reg2mem.0, %for.end ], [ %k.0.reg2mem.0, %for.body ], [ %k.0.reg2mem.0, %originalBBpart2 ], [ %k.0.reg2mem.0, %originalBB ], [ %k.0.reg2mem.0, %for.cond ], [ %k.0.reg2mem.0, %while.body ], [ %k.0.reg2mem.0, %while.cond ], [ %k.0.reg2mem.0, %loopEntry ]
  %i.1.reg2mem.0.be = phi i64 [ %i.1.reg2mem.0, %originalBBalteredBB ], [ %41, %for.inc14 ], [ %i.1.reg2mem.0, %for.end12 ], [ %i.1.reg2mem.0, %for.body8 ], [ %i.1.reg2mem.0, %for.cond6 ], [ %i.1.reg2mem.0, %if.then ], [ %i.1.reg2mem.0, %for.body3 ], [ %i.1.reg2mem.0, %for.cond1 ], [ 2, %for.end ], [ %i.1.reg2mem.0, %for.body ], [ %i.1.reg2mem.0, %originalBBpart2 ], [ %i.1.reg2mem.0, %originalBB ], [ %i.1.reg2mem.0, %for.cond ], [ %i.1.reg2mem.0, %while.body ], [ %i.1.reg2mem.0, %while.cond ], [ %i.1.reg2mem.0, %loopEntry ]
  %count.1.reg2mem.0.be = phi i32 [ %count.1.reg2mem.0, %originalBBalteredBB ], [ %count.2.reg2mem.0, %for.inc14 ], [ %count.1.reg2mem.0, %for.end12 ], [ %count.1.reg2mem.0, %for.body8 ], [ %count.1.reg2mem.0, %for.cond6 ], [ %count.1.reg2mem.0, %if.then ], [ %count.1.reg2mem.0, %for.body3 ], [ %count.1.reg2mem.0, %for.cond1 ], [ 0, %for.end ], [ %count.1.reg2mem.0, %for.body ], [ %count.1.reg2mem.0, %originalBBpart2 ], [ %count.1.reg2mem.0, %originalBB ], [ %count.1.reg2mem.0, %for.cond ], [ %count.1.reg2mem.0, %while.body ], [ %count.1.reg2mem.0, %while.cond ], [ %count.1.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i64 [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %for.inc14 ], [ %i.0.reg2mem.0, %for.end12 ], [ %i.0.reg2mem.0, %for.body8 ], [ %i.0.reg2mem.0, %for.cond6 ], [ %i.0.reg2mem.0, %if.then ], [ %i.0.reg2mem.0, %for.body3 ], [ %i.0.reg2mem.0, %for.cond1 ], [ %i.0.reg2mem.0, %for.end ], [ %29, %for.body ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.cond ], [ 2, %while.body ], [ %i.0.reg2mem.0, %while.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %NUM.0.reg2mem.0.be = phi i32 [ %NUM.0.reg2mem.0, %originalBBalteredBB ], [ %NUM.0.reg2mem.0, %for.inc14 ], [ %NUM.0.reg2mem.0, %for.end12 ], [ %NUM.0.reg2mem.0, %for.body8 ], [ %NUM.0.reg2mem.0, %for.cond6 ], [ %NUM.0.reg2mem.0, %if.then ], [ %NUM.0.reg2mem.0, %for.body3 ], [ %dec.reg2mem.0.dec.reload, %for.cond1 ], [ %NUM.0.reg2mem.0, %for.end ], [ %NUM.0.reg2mem.0, %for.body ], [ %NUM.0.reg2mem.0, %originalBBpart2 ], [ %NUM.0.reg2mem.0, %originalBB ], [ %NUM.0.reg2mem.0, %for.cond ], [ %NUM.0.reg2mem.0, %while.body ], [ %NUM.0.reg2mem.0, %while.cond ], [ %NUM.0.reg2mem.0, %loopEntry ]
  %count.0.reg2mem.0.be = phi i32 [ %count.0.reg2mem.0, %originalBBalteredBB ], [ %count.0.reg2mem.0, %for.inc14 ], [ %count.0.reg2mem.0, %for.end12 ], [ %count.0.reg2mem.0, %for.body8 ], [ %count.0.reg2mem.0, %for.cond6 ], [ %count.0.reg2mem.0, %if.then ], [ %count.0.reg2mem.0, %for.body3 ], [ %count.1.reload.reg2mem.0.count.1.reload.reload46, %for.cond1 ], [ %count.0.reg2mem.0, %for.end ], [ %count.0.reg2mem.0, %for.body ], [ %count.0.reg2mem.0, %originalBBpart2 ], [ %count.0.reg2mem.0, %originalBB ], [ %count.0.reg2mem.0, %for.cond ], [ %count.0.reg2mem.0, %while.body ], [ %count.0.reg2mem.0, %while.cond ], [ %count.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 748532254, %originalBBalteredBB ], [ -1411017597, %for.inc14 ], [ 31417318, %for.end12 ], [ -351874560, %for.body8 ], [ %33, %for.cond6 ], [ -351874560, %if.then ], [ %32, %for.body3 ], [ %30, %for.cond1 ], [ -1411017597, %for.end ], [ 1954067924, %for.body ], [ %27, %originalBBpart2 ], [ %22, %originalBB ], [ %21, %for.cond ], [ 1954067924, %while.body ], [ %26, %while.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

while.cond:                                       ; preds = %loopEntry
  store i32 %count.0.reg2mem.0, i32* %count.0.reload.reg2mem, align 4
  %23 = sub i32 %NUM.0.reg2mem.0, 714231497
  %24 = add i32 %23, -1
  %25 = add i32 %24, 714231497
  %dec = add nsw i32 %NUM.0.reg2mem.0, -1
  store i32 %25, i32* %dec.reg2mem, align 4
  %tobool = icmp ne i32 %NUM.0.reg2mem.0, 0
  %26 = select i1 %tobool, i32 635054130, i32 -2115962749
  br label %loopEntry.backedge

while.body:                                       ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond:                                         ; preds = %loopEntry
  store i64 %i.0.reg2mem.0, i64* %i.0.reload.reg2mem, align 8
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i64, i64* %i.0.reload.reg2mem, align 8
  %cmp = icmp slt i64 %i.0.reload.reg2mem.0.i.0.reload.reload, 8193
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %27 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -1660463559, i32 1140485890
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload38 = load volatile i64, i64* %i.0.reload.reg2mem, align 8
  %arrayidx = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %i.0.reload.reg2mem.0.i.0.reload.reload38
  store i8 1, i8* %arrayidx, align 1, !tbaa !1
  %i.0.reload.reg2mem.0.i.0.reload.reload39 = load volatile i64, i64* %i.0.reload.reg2mem, align 8
  %28 = sub i64 0, 1
  %29 = sub i64 %i.0.reload.reg2mem.0.i.0.reload.reload39, %28
  %inc = add nsw i64 %i.0.reload.reg2mem.0.i.0.reload.reload39, 1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond1:                                        ; preds = %loopEntry
  store i64 %i.1.reg2mem.0, i64* %i.1.reload.reg2mem, align 8
  store i32 %count.1.reg2mem.0, i32* %count.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload = load volatile i64, i64* %i.1.reload.reg2mem, align 8
  %cmp2 = icmp slt i64 %i.1.reload.reg2mem.0.i.1.reload.reload, 8193
  %30 = select i1 %cmp2, i32 998542603, i32 264679303
  %dec.reg2mem.0.dec.reload = load volatile i32, i32* %dec.reg2mem, align 4
  %count.1.reload.reg2mem.0.count.1.reload.reload46 = load volatile i32, i32* %count.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

for.body3:                                        ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload41 = load volatile i64, i64* %i.1.reload.reg2mem, align 8
  %arrayidx4 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %i.1.reload.reg2mem.0.i.1.reload.reload41
  %31 = load i8, i8* %arrayidx4, align 1, !tbaa !1
  %tobool5 = icmp ne i8 %31, 0
  %32 = select i1 %tobool5, i32 1309683685, i32 31417318
  %count.1.reload.reg2mem.0.count.1.reload.reload = load volatile i32, i32* %count.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload42 = load volatile i64, i64* %i.1.reload.reg2mem, align 8
  %add = shl nsw i64 %i.1.reload.reg2mem.0.i.1.reload.reload42, 1
  br label %loopEntry.backedge

for.cond6:                                        ; preds = %loopEntry
  store i64 %k.0.reg2mem.0, i64* %k.0.reload.reg2mem, align 8
  %k.0.reload.reg2mem.0.k.0.reload.reload = load volatile i64, i64* %k.0.reload.reg2mem, align 8
  %cmp7 = icmp slt i64 %k.0.reload.reg2mem.0.k.0.reload.reload, 8193
  %33 = select i1 %cmp7, i32 -552972097, i32 1843809287
  br label %loopEntry.backedge

for.body8:                                        ; preds = %loopEntry
  %k.0.reload.reg2mem.0.k.0.reload.reload47 = load volatile i64, i64* %k.0.reload.reg2mem, align 8
  %arrayidx9 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %k.0.reload.reg2mem.0.k.0.reload.reload47
  store i8 0, i8* %arrayidx9, align 1, !tbaa !1
  %i.1.reload.reg2mem.0.i.1.reload.reload43 = load volatile i64, i64* %i.1.reload.reg2mem, align 8
  %k.0.reload.reg2mem.0.k.0.reload.reload48 = load volatile i64, i64* %k.0.reload.reg2mem, align 8
  %34 = sub i64 %k.0.reload.reg2mem.0.k.0.reload.reload48, 8924218964105295740
  %35 = add i64 %34, %i.1.reload.reg2mem.0.i.1.reload.reload43
  %36 = add i64 %35, 8924218964105295740
  %add11 = add nsw i64 %k.0.reload.reg2mem.0.k.0.reload.reload48, %i.1.reload.reg2mem.0.i.1.reload.reload43
  br label %loopEntry.backedge

for.end12:                                        ; preds = %loopEntry
  %count.1.reload.reg2mem.0.count.1.reload.reload45 = load volatile i32, i32* %count.1.reload.reg2mem, align 4
  %37 = sub i32 0, 1
  %38 = sub i32 %count.1.reload.reg2mem.0.count.1.reload.reload45, %37
  %inc13 = add nsw i32 %count.1.reload.reg2mem.0.count.1.reload.reload45, 1
  br label %loopEntry.backedge

for.inc14:                                        ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload44 = load volatile i64, i64* %i.1.reload.reg2mem, align 8
  %39 = sub i64 %i.1.reload.reg2mem.0.i.1.reload.reload44, 1257466265016857497
  %40 = add i64 %39, 1
  %41 = add i64 %40, 1257466265016857497
  %inc15 = add nsw i64 %i.1.reload.reg2mem.0.i.1.reload.reload44, 1
  br label %loopEntry.backedge

while.end:                                        ; preds = %loopEntry
  %count.0.reload.reg2mem.0.count.0.reload.reload = load volatile i32, i32* %count.0.reload.reg2mem, align 4
  %call17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %count.0.reload.reg2mem.0.count.0.reload.reload)
  %call18 = tail call i64 @clock() #2
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %42 = add i64 %call18, -2877076280569939279
  %43 = sub i64 %42, %call.reg2mem.0.call.reload
  %44 = sub i64 %43, -2877076280569939279
  %sub = sub nsw i64 %call18, %call.reg2mem.0.call.reload
  %conv = sitofp i64 %44 to double
  %div = fdiv double %conv, 1.000000e+06
  %call19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload40 = load volatile i64, i64* %i.0.reload.reg2mem, align 8
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
