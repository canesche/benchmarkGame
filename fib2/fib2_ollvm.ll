; ModuleID = 'fib2/fib2.c'
source_filename = "fib2/fib2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0
@x.2 = common local_unnamed_addr global i32 0
@y.3 = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i64 @fib(i64 %n) local_unnamed_addr #0 {
entry:
  %add.reg2mem = alloca i64, align 8
  %cmp.reg2mem = alloca i1, align 1
  %.reg2mem33 = alloca i1, align 1
  %.reg2mem = alloca i1, align 1
  %0 = load i32, i32* @x, align 4
  %1 = load i32, i32* @y, align 4
  %2 = sub i32 %0, 1441999091
  %3 = add i32 %2, -1
  %4 = add i32 %3, 1441999091
  %5 = add i32 %0, -1
  %6 = mul i32 %4, %0
  %7 = xor i32 %6, -1
  %8 = xor i32 1, -1
  %9 = xor i32 258351680, -1
  %10 = or i32 %7, %8
  %11 = or i32 258351680, %9
  %12 = xor i32 %10, -1
  %13 = and i32 %12, %11
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %13, 0
  store i1 %15, i1* %.reg2mem, align 1
  %16 = icmp slt i32 %1, 10
  store i1 %16, i1* %.reg2mem33, align 1
  %cmp = icmp ult i64 %n, 2
  %17 = sub i64 0, -2
  %18 = sub i64 %n, %17
  %sub = add i64 %n, -2
  %19 = add i64 %n, -6155266761370398719
  %20 = add i64 %19, -1
  %21 = sub i64 %20, -6155266761370398719
  %sub1 = add i64 %n, -1
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %retval.0.reg2mem.0 = phi i64 [ undef, %entry ], [ %retval.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ -1273896831, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 -1273896831, label %first
    i32 -1020329993, label %originalBB
    i32 733433346, label %originalBBpart2
    i32 -632475812, label %if.then
    i32 1240780042, label %originalBB5
    i32 799228171, label %originalBBpart27
    i32 1018527333, label %if.else
    i32 -1745896311, label %originalBB9
    i32 753895669, label %originalBBpart230
    i32 1822264464, label %return
    i32 -713646061, label %originalBBalteredBB
    i32 1088313732, label %originalBB5alteredBB
    i32 -1607909002, label %originalBB9alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB9alteredBB, %originalBB5alteredBB, %originalBBalteredBB, %originalBBpart230, %originalBB9, %if.else, %originalBBpart27, %originalBB5, %if.then, %originalBBpart2, %originalBB, %first
  %retval.0.reg2mem.0.be = phi i64 [ %retval.0.reg2mem.0, %originalBB9alteredBB ], [ %retval.0.reg2mem.0, %originalBB5alteredBB ], [ %retval.0.reg2mem.0, %originalBBalteredBB ], [ %add.reg2mem.0.add.reload, %originalBBpart230 ], [ %retval.0.reg2mem.0, %originalBB9 ], [ %retval.0.reg2mem.0, %if.else ], [ 1, %originalBBpart27 ], [ %retval.0.reg2mem.0, %originalBB5 ], [ %retval.0.reg2mem.0, %if.then ], [ %retval.0.reg2mem.0, %originalBBpart2 ], [ %retval.0.reg2mem.0, %originalBB ], [ %retval.0.reg2mem.0, %first ], [ %retval.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ -1745896311, %originalBB9alteredBB ], [ 1240780042, %originalBB5alteredBB ], [ -1020329993, %originalBBalteredBB ], [ 1822264464, %originalBBpart230 ], [ %171, %originalBB9 ], [ %148, %if.else ], [ 1822264464, %originalBBpart27 ], [ %127, %originalBB5 ], [ %94, %if.then ], [ %61, %originalBBpart2 ], [ %60, %originalBB ], [ %26, %first ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

first:                                            ; preds = %loopEntry
  %.reg2mem.0..reload = load volatile i1, i1* %.reg2mem, align 1
  %.reg2mem33.0..reload34 = load volatile i1, i1* %.reg2mem33, align 1
  %22 = and i1 %.reg2mem.0..reload, %.reg2mem33.0..reload34
  %23 = xor i1 %.reg2mem.0..reload, %.reg2mem33.0..reload34
  %24 = or i1 %22, %23
  %25 = or i1 %.reg2mem.0..reload, %.reg2mem33.0..reload34
  %26 = select i1 %24, i32 -1020329993, i32 -713646061
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %27 = load i32, i32* @x, align 4
  %28 = load i32, i32* @y, align 4
  %29 = sub i32 %27, -1148877950
  %30 = add i32 %29, -1
  %31 = add i32 %30, -1148877950
  %32 = add i32 %27, -1
  %33 = mul i32 %31, %27
  %34 = xor i32 %33, -1
  %35 = xor i32 1, -1
  %36 = xor i32 1109949534, -1
  %37 = or i32 %34, %35
  %38 = or i32 1109949534, %36
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
  %60 = select i1 %58, i32 733433346, i32 -713646061
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %61 = select i1 %cmp.reg2mem.0.cmp.reload, i32 -632475812, i32 1018527333
  br label %loopEntry.backedge

if.then:                                          ; preds = %loopEntry
  %62 = load i32, i32* @x, align 4
  %63 = load i32, i32* @y, align 4
  %64 = sub i32 0, -1
  %65 = sub i32 %62, %64
  %66 = add i32 %62, -1
  %67 = mul i32 %65, %62
  %68 = xor i32 %67, -1
  %69 = xor i32 1, -1
  %70 = xor i32 -390953968, -1
  %71 = or i32 %68, %69
  %72 = or i32 -390953968, %70
  %73 = xor i32 %71, -1
  %74 = and i32 %73, %72
  %75 = and i32 %67, 1
  %76 = icmp eq i32 %74, 0
  %77 = icmp slt i32 %63, 10
  %78 = xor i1 %77, true
  %79 = xor i1 %76, true
  %80 = xor i1 false, true
  %81 = and i1 %78, false
  %82 = and i1 %77, %80
  %83 = and i1 %79, false
  %84 = and i1 %76, %80
  %85 = or i1 %81, %82
  %86 = or i1 %83, %84
  %87 = xor i1 %85, %86
  %88 = or i1 %78, %79
  %89 = xor i1 %88, true
  %90 = or i1 false, %80
  %91 = and i1 %89, %90
  %92 = or i1 %87, %91
  %93 = or i1 %77, %76
  %94 = select i1 %92, i32 1240780042, i32 1088313732
  br label %loopEntry.backedge

originalBB5:                                      ; preds = %loopEntry
  %95 = load i32, i32* @x, align 4
  %96 = load i32, i32* @y, align 4
  %97 = sub i32 0, -1
  %98 = sub i32 %95, %97
  %99 = add i32 %95, -1
  %100 = mul i32 %98, %95
  %101 = xor i32 %100, -1
  %102 = xor i32 1, -1
  %103 = xor i32 -731991335, -1
  %104 = or i32 %101, %102
  %105 = or i32 -731991335, %103
  %106 = xor i32 %104, -1
  %107 = and i32 %106, %105
  %108 = and i32 %100, 1
  %109 = icmp eq i32 %107, 0
  %110 = icmp slt i32 %96, 10
  %111 = xor i1 %110, true
  %112 = xor i1 %109, true
  %113 = xor i1 false, true
  %114 = and i1 %111, false
  %115 = and i1 %110, %113
  %116 = and i1 %112, false
  %117 = and i1 %109, %113
  %118 = or i1 %114, %115
  %119 = or i1 %116, %117
  %120 = xor i1 %118, %119
  %121 = or i1 %111, %112
  %122 = xor i1 %121, true
  %123 = or i1 false, %113
  %124 = and i1 %122, %123
  %125 = or i1 %120, %124
  %126 = or i1 %110, %109
  %127 = select i1 %125, i32 799228171, i32 1088313732
  br label %loopEntry.backedge

originalBBpart27:                                 ; preds = %loopEntry
  br label %loopEntry.backedge

if.else:                                          ; preds = %loopEntry
  %128 = load i32, i32* @x, align 4
  %129 = load i32, i32* @y, align 4
  %130 = sub i32 0, -1
  %131 = sub i32 %128, %130
  %132 = add i32 %128, -1
  %133 = mul i32 %131, %128
  %134 = xor i32 %133, -1
  %135 = xor i32 1, -1
  %136 = xor i32 691891547, -1
  %137 = or i32 %134, %135
  %138 = or i32 691891547, %136
  %139 = xor i32 %137, -1
  %140 = and i32 %139, %138
  %141 = and i32 %133, 1
  %142 = icmp eq i32 %140, 0
  %143 = icmp slt i32 %129, 10
  %144 = and i1 %143, %142
  %145 = xor i1 %143, %142
  %146 = or i1 %144, %145
  %147 = or i1 %143, %142
  %148 = select i1 %146, i32 -1745896311, i32 -1607909002
  br label %loopEntry.backedge

originalBB9:                                      ; preds = %loopEntry
  %call = tail call i64 @fib(i64 %18)
  %call2 = tail call i64 @fib(i64 %21)
  %149 = sub i64 0, %call2
  %150 = sub i64 0, %call
  %151 = add i64 %149, %150
  %152 = sub i64 0, %151
  %add = add i64 %call2, %call
  store i64 %152, i64* %add.reg2mem, align 8
  %153 = load i32, i32* @x, align 4
  %154 = load i32, i32* @y, align 4
  %155 = sub i32 0, %153
  %156 = sub i32 0, -1
  %157 = add i32 %155, %156
  %158 = sub i32 0, %157
  %159 = add i32 %153, -1
  %160 = mul i32 %158, %153
  %161 = xor i32 1, -1
  %162 = xor i32 %160, %161
  %163 = and i32 %162, %160
  %164 = and i32 %160, 1
  %165 = icmp eq i32 %163, 0
  %166 = icmp slt i32 %154, 10
  %167 = and i1 %166, %165
  %168 = xor i1 %166, %165
  %169 = or i1 %167, %168
  %170 = or i1 %166, %165
  %171 = select i1 %169, i32 753895669, i32 -1607909002
  br label %loopEntry.backedge

originalBBpart230:                                ; preds = %loopEntry
  %add.reg2mem.0.add.reload = load volatile i64, i64* %add.reg2mem, align 8
  br label %loopEntry.backedge

return:                                           ; preds = %loopEntry
  ret i64 %retval.0.reg2mem.0

originalBBalteredBB:                              ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB5alteredBB:                             ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB9alteredBB:                             ; preds = %loopEntry
  %callalteredBB = tail call i64 @fib(i64 %18)
  %call2alteredBB = tail call i64 @fib(i64 %21)
  br label %loopEntry.backedge
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @clock() #2
  %call1 = tail call i64 @fib(i64 43)
  %call2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %call1)
  %call3 = tail call i64 @clock() #2
  %0 = add i64 %call3, -3777668496299059988
  %1 = sub i64 %0, %call
  %2 = sub i64 %1, -3777668496299059988
  %sub = sub nsw i64 %call3, %call
  %conv4 = sitofp i64 %2 to double
  %div = fdiv double %conv4, 1.000000e+06
  %call5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
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
