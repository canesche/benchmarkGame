; ModuleID = 'ackermann/ackermann.c'
source_filename = "ackermann/ackermann.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Ack(3,%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.2 = common local_unnamed_addr global i32 0
@y.3 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @Ack(i32 %M, i32 %N) local_unnamed_addr #0 {
entry:
  %retval.0.reload.reg2mem = alloca i32, align 4
  %sub.reg2mem = alloca i32, align 4
  %cmp.reg2mem = alloca i1, align 1
  %.reg2mem16 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x, align 4
  %1 = load i32, i32* @y, align 4
  %2 = add i32 %0, -1709287220
  %3 = add i32 %2, -1
  %4 = sub i32 %3, -1709287220
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 1355045358, -1
  %10 = or i32 %7, %8
  %11 = or i32 1355045358, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  store i1 %15, i1* %.reg2mem, align 1
  %16 = icmp slt i32 %1, 10
  store i1 %16, i1* %.reg2mem16, align 1
  %cmp = icmp eq i32 %M, 0
  %17 = sub i32 0, %N
  %18 = sub i32 0, 1
  %19 = add i32 %17, %18
  %20 = sub i32 0, %19
  %add = add nsw i32 %N, 1
  %cmp1 = icmp eq i32 %N, 0
  %21 = sub i32 %M, 546052696
  %22 = add i32 %21, -1
  %23 = add i32 %22, 546052696
  %sub = add nsw i32 %M, -1
  %24 = select i1 %cmp1, i32 2039411358, i32 -626881508
  %25 = sub i32 0, -1
  %26 = sub i32 %N, %25
  %sub5 = add nsw i32 %N, -1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %retval.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %retval.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 2080143364, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 2080143364, label %first
    i32 1867082816, label %originalBB
    i32 -100599610, label %originalBBpart2
    i32 -80353546, label %if.then
    i32 -82820197, label %if.end
    i32 2039411358, label %if.then2
    i32 -626881508, label %if.end3
    i32 -1823245574, label %return
    i32 -304302934, label %originalBB11
    i32 501773421, label %originalBBpart213
    i32 -1615774376, label %originalBBalteredBB
    i32 224463958, label %originalBB11alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB11alteredBB, %originalBBalteredBB, %originalBB11, %return, %if.end3, %if.then2, %if.end, %if.then, %originalBBpart2, %originalBB, %first
  %retval.0.reg2mem.0.be = phi i32 [ %retval.0.reg2mem.0, %originalBB11alteredBB ], [ %retval.0.reg2mem.0, %originalBBalteredBB ], [ %retval.0.reg2mem.0, %originalBB11 ], [ %retval.0.reg2mem.0, %return ], [ %call7, %if.end3 ], [ %call, %if.then2 ], [ %retval.0.reg2mem.0, %if.end ], [ %20, %if.then ], [ %retval.0.reg2mem.0, %originalBBpart2 ], [ %retval.0.reg2mem.0, %originalBB ], [ %retval.0.reg2mem.0, %first ], [ %retval.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -304302934, %originalBB11alteredBB ], [ 1867082816, %originalBBalteredBB ], [ %146, %originalBB11 ], [ %112, %return ], [ -1823245574, %if.end3 ], [ -1823245574, %if.then2 ], [ %24, %if.end ], [ -1823245574, %if.then ], [ %78, %originalBBpart2 ], [ %77, %originalBB ], [ %43, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem16.0..reload17 = load volatile i1, i1* %.reg2mem16, align 1
  %27 = xor i1 %.reg2mem.0..reload, true
  %28 = xor i1 %.reg2mem16.0..reload17, true
  %29 = xor i1 true, true
  %30 = and i1 %27, true
  %31 = and i1 %.reg2mem.0..reload, %29
  %32 = and i1 %28, true
  %33 = and i1 %.reg2mem16.0..reload17, %29
  %34 = or i1 %30, %31
  %35 = or i1 %32, %33
  %36 = xor i1 %34, %35
  %37 = or i1 %27, %28
  %38 = xor i1 %37, true
  %39 = or i1 true, %29
  %40 = and i1 %38, %39
  %41 = or i1 %36, %40
  %42 = or i1 %.reg2mem.0..reload, %.reg2mem16.0..reload17
  %43 = select i1 %41, i32 1867082816, i32 -1615774376
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %44 = load i32, i32* @x, align 4
  %45 = load i32, i32* @y, align 4
  %46 = sub i32 %44, 1822142047
  %47 = add i32 %46, -1
  %48 = add i32 %47, 1822142047
  %49 = add i32 %44, -1
  %50 = mul i32 %48, %44
  %51 = xor i32 %50, -1
  %52 = xor i32 1, -1
  %53 = xor i32 1255989780, -1
  %54 = or i32 %51, %52
  %55 = or i32 1255989780, %53
  %56 = xor i32 %54, -1
  %57 = and i32 %56, %55
  %58 = and i32 %50, 1
  %59 = icmp eq i32 %57, 0
  %60 = icmp slt i32 %45, 10
  %61 = xor i1 %60, true
  %62 = xor i1 %59, true
  %63 = xor i1 false, true
  %64 = and i1 %61, false
  %65 = and i1 %60, %63
  %66 = and i1 %62, false
  %67 = and i1 %59, %63
  %68 = or i1 %64, %65
  %69 = or i1 %66, %67
  %70 = xor i1 %68, %69
  %71 = or i1 %61, %62
  %72 = xor i1 %71, true
  %73 = or i1 false, %63
  %74 = and i1 %72, %73
  %75 = or i1 %70, %74
  %76 = or i1 %60, %59
  %77 = select i1 %75, i32 -100599610, i32 -1615774376
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %78 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -80353546, i32 -82820197
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  br label %loopEntry.backedge

if.end:                                           ; preds = %loopEntry
  store i32 %23, i32* %sub.reg2mem, align 4
  br label %loopEntry.backedge

if.then2:                                         ; preds = %loopEntry
  %sub.reg2mem.0.sub.reload18 = load volatile i32, i32* %sub.reg2mem, align 4
  %call = tail call i32 @Ack(i32 %sub.reg2mem.0.sub.reload18, i32 1)
  br label %loopEntry.backedge

if.end3:                                          ; preds = %loopEntry
  %call6 = tail call i32 @Ack(i32 %M, i32 %26)
  %sub.reg2mem.0.sub.reload = load volatile i32, i32* %sub.reg2mem, align 4
  %call7 = tail call i32 @Ack(i32 %sub.reg2mem.0.sub.reload, i32 %call6)
  br label %loopEntry.backedge

return:                                           ; preds = %loopEntry
  store i32 %retval.0.reg2mem.0, i32* %retval.0.reload.reg2mem, align 4
  %79 = load i32, i32* @x, align 4
  %80 = load i32, i32* @y, align 4
  %81 = sub i32 %79, 339146685
  %82 = add i32 %81, -1
  %83 = add i32 %82, 339146685
  %84 = add i32 %79, -1
  %85 = mul i32 %83, %79
  %86 = xor i32 %85, -1
  %87 = xor i32 1, -1
  %88 = xor i32 -833286688, -1
  %89 = or i32 %86, %87
  %90 = or i32 -833286688, %88
  %91 = xor i32 %89, -1
  %92 = and i32 %91, %90
  %93 = and i32 %85, 1
  %94 = icmp eq i32 %92, 0
  %95 = icmp slt i32 %80, 10
  %96 = xor i1 %95, true
  %97 = xor i1 %94, true
  %98 = xor i1 true, true
  %99 = and i1 %96, true
  %100 = and i1 %95, %98
  %101 = and i1 %97, true
  %102 = and i1 %94, %98
  %103 = or i1 %99, %100
  %104 = or i1 %101, %102
  %105 = xor i1 %103, %104
  %106 = or i1 %96, %97
  %107 = xor i1 %106, true
  %108 = or i1 true, %98
  %109 = and i1 %107, %108
  %110 = or i1 %105, %109
  %111 = or i1 %95, %94
  %112 = select i1 %110, i32 -304302934, i32 224463958
  br label %loopEntry.backedge

originalBB11:                                     ; preds = %loopEntry
  %113 = load i32, i32* @x, align 4
  %114 = load i32, i32* @y, align 4
  %115 = sub i32 %113, -1394826838
  %116 = add i32 %115, -1
  %117 = add i32 %116, -1394826838
  %118 = add i32 %113, -1
  %119 = mul i32 %117, %113
  %120 = xor i32 %119, -1
  %121 = xor i32 1, -1
  %122 = xor i32 -117916572, -1
  %123 = or i32 %120, %121
  %124 = or i32 -117916572, %122
  %125 = xor i32 %123, -1
  %126 = and i32 %125, %124
  %127 = and i32 %119, 1
  %128 = icmp eq i32 %126, 0
  %129 = icmp slt i32 %114, 10
  %130 = xor i1 %129, true
  %131 = xor i1 %128, true
  %132 = xor i1 false, true
  %133 = and i1 %130, false
  %134 = and i1 %129, %132
  %135 = and i1 %131, false
  %136 = and i1 %128, %132
  %137 = or i1 %133, %134
  %138 = or i1 %135, %136
  %139 = xor i1 %137, %138
  %140 = or i1 %130, %131
  %141 = xor i1 %140, true
  %142 = or i1 false, %132
  %143 = and i1 %141, %142
  %144 = or i1 %139, %143
  %145 = or i1 %129, %128
  %146 = select i1 %144, i32 501773421, i32 224463958
  br label %loopEntry.backedge

originalBBpart213:                                ; preds = %loopEntry
  %retval.0.reload.reg2mem.0.retval.0.reload.reload = load volatile i32, i32* %retval.0.reload.reg2mem, align 4
  ret i32 %retval.0.reload.reg2mem.0.retval.0.reload.reload

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB11alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @clock() #2
  %call1 = tail call i32 @Ack(i32 3, i32 12)
  %call2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 12, i32 %call1)
  %call3 = tail call i64 @clock() #2
  %0 = add i64 %call3, 8408108672915927882
  %1 = sub i64 %0, %call
  %2 = sub i64 %1, 8408108672915927882
  %sub = sub nsw i64 %call3, %call
  %conv = sitofp i64 %2 to double
  %div = fdiv double %conv, 1.000000e+06
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  ret i32 0
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
