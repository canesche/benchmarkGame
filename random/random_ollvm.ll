; ModuleID = 'random/random.c'
source_filename = "random/random.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@gen_random.last = internal unnamed_addr global i64 42, align 8
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.2 = common local_unnamed_addr global i32 0
@y.3 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %call1.reg2mem = alloca double, align 8
  %call.reg2mem = alloca i64, align 8
  %.reg2mem10 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x, align 4
  %1 = load i32, i32* @y, align 4
  %2 = add i32 %0, -553908234
  %3 = add i32 %2, -1
  %4 = sub i32 %3, -553908234
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 749754100, -1
  %10 = or i32 %7, %8
  %11 = or i32 749754100, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  store i1 %15, i1* %.reg2mem, align 1
  %16 = icmp slt i32 %1, 10
  store i1 %16, i1* %.reg2mem10, align 1
  br label %loopEntry.outer

loopEntry.outer.loopexit:                         ; preds = %loopEntry.outer12
  br label %loopEntry.outer.backedge

loopEntry.outer:                                  ; preds = %loopEntry.outer.backedge, %entry
  %N.0.reg2mem.0.ph = phi i32 [ undef, %entry ], [ %N.0.reg2mem.0.ph.be, %loopEntry.outer.backedge ]
  %switchVar.0.ph = phi i32 [ -1609478918, %entry ], [ %switchVar.0.ph.be, %loopEntry.outer.backedge ]
  br label %loopEntry.outer12

loopEntry.outer12:                                ; preds = %loopEntry.outer12.backedge, %loopEntry.outer
  %switchVar.0.ph13 = phi i32 [ %switchVar.0.ph, %loopEntry.outer ], [ %switchVar.0.ph13.be, %loopEntry.outer12.backedge ]
  switch i32 %switchVar.0.ph13, label %infloop.preheader [
    i32 -1609478918, label %first.split
    i32 1258022430, label %originalBB.split
    i32 929820809, label %loopEntry.outer.loopexit
    i32 1289936388, label %while.cond.split
    i32 -1020176488, label %while.end.split
    i32 814696649, label %originalBBalteredBB.split
  ]

infloop.preheader:                                ; preds = %loopEntry.outer12
  br label %infloop

first.split:                                      ; preds = %loopEntry.outer12
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem10.0..reload11 = load volatile i1, i1* %.reg2mem10, align 1
  %17 = and i1 %.reg2mem.0..reload, %.reg2mem10.0..reload11
  %18 = xor i1 %.reg2mem.0..reload, %.reg2mem10.0..reload11
  %19 = or i1 %17, %18
  %20 = or i1 %.reg2mem.0..reload, %.reg2mem10.0..reload11
  %21 = select i1 %19, i32 1258022430, i32 814696649
  br label %loopEntry.outer12.backedge

originalBB.split:                                 ; preds = %loopEntry.outer12
  %call = tail call i64 @clock() #2
  store i64 %call, i64* %call.reg2mem, align 8
  %22 = load i32, i32* @x, align 4
  %23 = load i32, i32* @y, align 4
  %24 = sub i32 0, -1
  %25 = sub i32 %22, %24
  %26 = add i32 %22, -1
  %27 = mul i32 %25, %22
  %28 = xor i32 1, -1
  %29 = xor i32 %27, %28
  %30 = and i32 %29, %27
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %30, 0
  %33 = icmp slt i32 %23, 10
  %34 = xor i1 %33, true
  %35 = xor i1 %32, true
  %36 = xor i1 true, true
  %37 = and i1 %34, true
  %38 = and i1 %33, %36
  %39 = and i1 %35, true
  %40 = and i1 %32, %36
  %41 = or i1 %37, %38
  %42 = or i1 %39, %40
  %43 = xor i1 %41, %42
  %44 = or i1 %34, %35
  %45 = xor i1 %44, true
  %46 = or i1 true, %36
  %47 = and i1 %45, %46
  %48 = or i1 %43, %47
  %49 = or i1 %33, %32
  %50 = select i1 %48, i32 929820809, i32 814696649
  br label %loopEntry.outer12.backedge

while.cond.split:                                 ; preds = %loopEntry.outer12
  %51 = sub i32 0, -1
  %52 = sub i32 %N.0.reg2mem.0.ph, %51
  %dec = add nsw i32 %N.0.reg2mem.0.ph, -1
  %tobool = icmp ne i32 %N.0.reg2mem.0.ph, 0
  %53 = load i64, i64* @gen_random.last, align 8, !tbaa !1
  %mul.i = mul nsw i64 %53, 3877
  %54 = sub i64 %mul.i, -5943506146855037479
  %55 = add i64 %54, 29573
  %56 = add i64 %55, -5943506146855037479
  %add.i = add nsw i64 %mul.i, 29573
  %rem.i = srem i64 %56, 139968
  store i64 %rem.i, i64* @gen_random.last, align 8, !tbaa !1
  %conv.i = sitofp i64 %rem.i to double
  %mul1.i = fmul double %conv.i, 1.000000e+02
  %div.i = fdiv double %mul1.i, 1.399680e+05
  store double %div.i, double* %call1.reg2mem, align 8
  %57 = select i1 %tobool, i32 1289936388, i32 -1020176488
  br label %loopEntry.outer.backedge

loopEntry.outer.backedge:                         ; preds = %while.cond.split, %loopEntry.outer.loopexit
  %N.0.reg2mem.0.ph.be = phi i32 [ %52, %while.cond.split ], [ 400000000, %loopEntry.outer.loopexit ]
  %switchVar.0.ph.be = phi i32 [ %57, %while.cond.split ], [ 1289936388, %loopEntry.outer.loopexit ]
  br label %loopEntry.outer

while.end.split:                                  ; preds = %loopEntry.outer12
  %call1.reg2mem.0.call1.reload = load volatile double, double* %call1.reg2mem, align 8
  %call3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %call1.reg2mem.0.call1.reload)
  %call4 = tail call i64 @clock() #2
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %58 = add i64 %call4, -6811541523819673502
  %59 = sub i64 %58, %call.reg2mem.0.call.reload
  %60 = sub i64 %59, -6811541523819673502
  %sub = sub nsw i64 %call4, %call.reg2mem.0.call.reload
  %conv = sitofp i64 %60 to double
  %div = fdiv double %conv, 1.000000e+06
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  ret i32 0

originalBBalteredBB.split:                        ; preds = %loopEntry.outer12
  %callalteredBB = tail call i64 @clock() #2
  br label %loopEntry.outer12.backedge

loopEntry.outer12.backedge:                       ; preds = %originalBBalteredBB.split, %originalBB.split, %first.split
  %switchVar.0.ph13.be = phi i32 [ %21, %first.split ], [ %50, %originalBB.split ], [ 1258022430, %originalBBalteredBB.split ]
  br label %loopEntry.outer12

infloop:                                          ; preds = %infloop.preheader, %infloop
  br label %infloop
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
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
