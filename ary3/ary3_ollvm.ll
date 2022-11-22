; ModuleID = 'ary3/ary3.c'
source_filename = "ary3/ary3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Time: %lf\0A\00", align 1
@x = common local_unnamed_addr global i32 0
@y = common local_unnamed_addr global i32 0

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %i.1.reload.reg2mem = alloca i32, align 4
  %k.0.reload.reg2mem = alloca i32, align 4
  %i.0.reload.reg2mem = alloca i32, align 4
  %dec.reg2mem = alloca i32, align 4
  %cmp10.reg2mem = alloca i1, align 1
  %cmp6.reg2mem = alloca i1, align 1
  %cmp.reg2mem = alloca i1, align 1
  %.reg2mem125 = alloca i32*, align 8
  %call3.reg2mem = alloca i8*, align 8
  %.reg2mem = alloca i32*, align 8
  %call1.reg2mem = alloca i8*, align 8
  %call.reg2mem = alloca i64, align 8
  %call = tail call i64 @clock() #2
  store i64 %call, i64* %call.reg2mem, align 8
  %call1 = tail call noalias i8* @calloc(i64 1000000, i64 4) #2
  store i8* %call1, i8** %call1.reg2mem, align 8
  %call1.reg2mem.0.call1.reload120 = load volatile i8*, i8** %call1.reg2mem, align 8
  %0 = bitcast i32** %.reg2mem to i8**
  store i8* %call1.reg2mem.0.call1.reload120, i8** %0, align 8
  %call3 = tail call noalias i8* @calloc(i64 1000000, i64 4) #2
  store i8* %call3, i8** %call3.reg2mem, align 8
  %call3.reg2mem.0.call3.reload124 = load volatile i8*, i8** %call3.reg2mem, align 8
  %1 = bitcast i32** %.reg2mem125 to i8**
  store i8* %call3.reg2mem.0.call3.reload124, i8** %1, align 8
  br label %loopEntry

loopEntry:                                        ; preds = %loopEntry.backedge, %entry
  %i.1.reg2mem.0 = phi i32 [ undef, %entry ], [ %i.1.reg2mem.0.be, %loopEntry.backedge ]
  %k.0.reg2mem.0 = phi i32 [ undef, %entry ], [ %k.0.reg2mem.0.be, %loopEntry.backedge ]
  %i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %i.0.reg2mem.0.be, %loopEntry.backedge ]
  %switchVar.0 = phi i32 [ 209617155, %entry ], [ %switchVar.0.be, %loopEntry.backedge ]
  switch i32 %switchVar.0, label %loopEntry.backedge [
    i32 209617155, label %for.cond
    i32 -1577775098, label %originalBB
    i32 1480986543, label %originalBBpart2
    i32 1719527724, label %for.body
    i32 458188036, label %for.end
    i32 1357789074, label %originalBB56
    i32 7661857, label %originalBBpart258
    i32 921949573, label %for.cond5
    i32 681728864, label %originalBB60
    i32 782606451, label %originalBBpart262
    i32 1083595, label %for.body8
    i32 -125114211, label %originalBB64
    i32 1357743185, label %originalBBpart266
    i32 2103656062, label %for.cond9
    i32 -438665002, label %originalBB68
    i32 -1250368447, label %originalBBpart270
    i32 -1206859128, label %for.body12
    i32 -557924665, label %originalBB72
    i32 1142948971, label %originalBBpart286
    i32 -1107680254, label %for.inc20
    i32 821300670, label %for.end22
    i32 1333592098, label %originalBB88
    i32 -597410580, label %originalBBpart2108
    i32 -207978416, label %originalBBalteredBB
    i32 -835530158, label %originalBB56alteredBB
    i32 2012138852, label %originalBB60alteredBB
    i32 -642084721, label %originalBB64alteredBB
    i32 451178426, label %originalBB68alteredBB
    i32 1965721291, label %originalBB72alteredBB
    i32 344505631, label %originalBB88alteredBB
  ]

loopEntry.backedge:                               ; preds = %loopEntry, %originalBB88alteredBB, %originalBB72alteredBB, %originalBB68alteredBB, %originalBB64alteredBB, %originalBB60alteredBB, %originalBB56alteredBB, %originalBBalteredBB, %originalBB88, %for.end22, %for.inc20, %originalBBpart286, %originalBB72, %for.body12, %originalBBpart270, %originalBB68, %for.cond9, %originalBBpart266, %originalBB64, %for.body8, %originalBBpart262, %originalBB60, %for.cond5, %originalBBpart258, %originalBB56, %for.end, %for.body, %originalBBpart2, %originalBB, %for.cond
  %i.1.reg2mem.0.be = phi i32 [ %i.1.reg2mem.0, %originalBB88alteredBB ], [ %i.1.reg2mem.0, %originalBB72alteredBB ], [ %i.1.reg2mem.0, %originalBB68alteredBB ], [ %i.1.reg2mem.0, %originalBB64alteredBB ], [ %i.1.reg2mem.0, %originalBB60alteredBB ], [ %i.1.reg2mem.0, %originalBB56alteredBB ], [ %i.1.reg2mem.0, %originalBBalteredBB ], [ %i.1.reg2mem.0, %originalBB88 ], [ %i.1.reg2mem.0, %for.end22 ], [ %i.1.reg2mem.0, %for.inc20 ], [ %dec.reg2mem.0.dec.reload, %originalBBpart286 ], [ %i.1.reg2mem.0, %originalBB72 ], [ %i.1.reg2mem.0, %for.body12 ], [ %i.1.reg2mem.0, %originalBBpart270 ], [ %i.1.reg2mem.0, %originalBB68 ], [ %i.1.reg2mem.0, %for.cond9 ], [ 999999, %originalBBpart266 ], [ %i.1.reg2mem.0, %originalBB64 ], [ %i.1.reg2mem.0, %for.body8 ], [ %i.1.reg2mem.0, %originalBBpart262 ], [ %i.1.reg2mem.0, %originalBB60 ], [ %i.1.reg2mem.0, %for.cond5 ], [ %i.1.reg2mem.0, %originalBBpart258 ], [ %i.1.reg2mem.0, %originalBB56 ], [ %i.1.reg2mem.0, %for.end ], [ %i.1.reg2mem.0, %for.body ], [ %i.1.reg2mem.0, %originalBBpart2 ], [ %i.1.reg2mem.0, %originalBB ], [ %i.1.reg2mem.0, %for.cond ], [ %i.1.reg2mem.0, %loopEntry ]
  %k.0.reg2mem.0.be = phi i32 [ %k.0.reg2mem.0, %originalBB88alteredBB ], [ %k.0.reg2mem.0, %originalBB72alteredBB ], [ %k.0.reg2mem.0, %originalBB68alteredBB ], [ %k.0.reg2mem.0, %originalBB64alteredBB ], [ %k.0.reg2mem.0, %originalBB60alteredBB ], [ %k.0.reg2mem.0, %originalBB56alteredBB ], [ %k.0.reg2mem.0, %originalBBalteredBB ], [ %k.0.reg2mem.0, %originalBB88 ], [ %k.0.reg2mem.0, %for.end22 ], [ %344, %for.inc20 ], [ %k.0.reg2mem.0, %originalBBpart286 ], [ %k.0.reg2mem.0, %originalBB72 ], [ %k.0.reg2mem.0, %for.body12 ], [ %k.0.reg2mem.0, %originalBBpart270 ], [ %k.0.reg2mem.0, %originalBB68 ], [ %k.0.reg2mem.0, %for.cond9 ], [ %k.0.reg2mem.0, %originalBBpart266 ], [ %k.0.reg2mem.0, %originalBB64 ], [ %k.0.reg2mem.0, %for.body8 ], [ %k.0.reg2mem.0, %originalBBpart262 ], [ %k.0.reg2mem.0, %originalBB60 ], [ %k.0.reg2mem.0, %for.cond5 ], [ 0, %originalBBpart258 ], [ %k.0.reg2mem.0, %originalBB56 ], [ %k.0.reg2mem.0, %for.end ], [ %k.0.reg2mem.0, %for.body ], [ %k.0.reg2mem.0, %originalBBpart2 ], [ %k.0.reg2mem.0, %originalBB ], [ %k.0.reg2mem.0, %for.cond ], [ %k.0.reg2mem.0, %loopEntry ]
  %i.0.reg2mem.0.be = phi i32 [ %i.0.reg2mem.0, %originalBB88alteredBB ], [ %i.0.reg2mem.0, %originalBB72alteredBB ], [ %i.0.reg2mem.0, %originalBB68alteredBB ], [ %i.0.reg2mem.0, %originalBB64alteredBB ], [ %i.0.reg2mem.0, %originalBB60alteredBB ], [ %i.0.reg2mem.0, %originalBB56alteredBB ], [ %i.0.reg2mem.0, %originalBBalteredBB ], [ %i.0.reg2mem.0, %originalBB88 ], [ %i.0.reg2mem.0, %for.end22 ], [ %i.0.reg2mem.0, %for.inc20 ], [ %i.0.reg2mem.0, %originalBBpart286 ], [ %i.0.reg2mem.0, %originalBB72 ], [ %i.0.reg2mem.0, %for.body12 ], [ %i.0.reg2mem.0, %originalBBpart270 ], [ %i.0.reg2mem.0, %originalBB68 ], [ %i.0.reg2mem.0, %for.cond9 ], [ %i.0.reg2mem.0, %originalBBpart266 ], [ %i.0.reg2mem.0, %originalBB64 ], [ %i.0.reg2mem.0, %for.body8 ], [ %i.0.reg2mem.0, %originalBBpart262 ], [ %i.0.reg2mem.0, %originalBB60 ], [ %i.0.reg2mem.0, %for.cond5 ], [ %i.0.reg2mem.0, %originalBBpart258 ], [ %i.0.reg2mem.0, %originalBB56 ], [ %i.0.reg2mem.0, %for.end ], [ %59, %for.body ], [ %i.0.reg2mem.0, %originalBBpart2 ], [ %i.0.reg2mem.0, %originalBB ], [ %i.0.reg2mem.0, %for.cond ], [ %i.0.reg2mem.0, %loopEntry ]
  %switchVar.0.be = phi i32 [ 1333592098, %originalBB88alteredBB ], [ -557924665, %originalBB72alteredBB ], [ -438665002, %originalBB68alteredBB ], [ -125114211, %originalBB64alteredBB ], [ 681728864, %originalBB60alteredBB ], [ 1357789074, %originalBB56alteredBB ], [ -1577775098, %originalBBalteredBB ], [ %401, %originalBB88 ], [ %379, %for.end22 ], [ 921949573, %for.inc20 ], [ 2103656062, %originalBBpart286 ], [ %342, %originalBB72 ], [ %309, %for.body12 ], [ %274, %originalBBpart270 ], [ %273, %originalBB68 ], [ %239, %for.cond9 ], [ 2103656062, %originalBBpart266 ], [ %205, %originalBB64 ], [ %183, %for.body8 ], [ %164, %originalBBpart262 ], [ %163, %originalBB60 ], [ %146, %for.cond5 ], [ 921949573, %originalBBpart258 ], [ %112, %originalBB56 ], [ %78, %for.end ], [ 209617155, %for.body ], [ %55, %originalBBpart2 ], [ %54, %originalBB ], [ %20, %for.cond ], [ %switchVar.0, %loopEntry ]
  br label %loopEntry

for.cond:                                         ; preds = %loopEntry
  store i32 %i.0.reg2mem.0, i32* %i.0.reload.reg2mem, align 4
  %2 = load i32, i32* @x, align 4
  %3 = load i32, i32* @y, align 4
  %4 = sub i32 0, %2
  %5 = sub i32 0, -1
  %6 = add i32 %4, %5
  %7 = sub i32 0, %6
  %8 = add i32 %2, -1
  %9 = mul i32 %7, %2
  %10 = xor i32 1, -1
  %11 = xor i32 %9, %10
  %12 = and i32 %11, %9
  %13 = and i32 %9, 1
  %14 = icmp eq i32 %12, 0
  %15 = icmp slt i32 %3, 10
  %16 = and i1 %15, %14
  %17 = xor i1 %15, %14
  %18 = or i1 %16, %17
  %19 = or i1 %15, %14
  %20 = select i1 %18, i32 -1577775098, i32 -207978416
  br label %loopEntry.backedge

originalBB:                                       ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %cmp = icmp slt i32 %i.0.reload.reg2mem.0.i.0.reload.reload, 1000000
  store i1 %cmp, i1* %cmp.reg2mem, align 1
  %21 = load i32, i32* @x, align 4
  %22 = load i32, i32* @y, align 4
  %23 = add i32 %21, -694543768
  %24 = add i32 %23, -1
  %25 = sub i32 %24, -694543768
  %26 = add i32 %21, -1
  %27 = mul i32 %25, %21
  %28 = xor i32 %27, -1
  %29 = xor i32 1, -1
  %30 = xor i32 1641959241, -1
  %31 = or i32 %28, %29
  %32 = or i32 1641959241, %30
  %33 = xor i32 %31, -1
  %34 = and i32 %33, %32
  %35 = and i32 %27, 1
  %36 = icmp eq i32 %34, 0
  %37 = icmp slt i32 %22, 10
  %38 = xor i1 %37, true
  %39 = xor i1 %36, true
  %40 = xor i1 false, true
  %41 = and i1 %38, false
  %42 = and i1 %37, %40
  %43 = and i1 %39, false
  %44 = and i1 %36, %40
  %45 = or i1 %41, %42
  %46 = or i1 %43, %44
  %47 = xor i1 %45, %46
  %48 = or i1 %38, %39
  %49 = xor i1 %48, true
  %50 = or i1 false, %40
  %51 = and i1 %49, %50
  %52 = or i1 %47, %51
  %53 = or i1 %37, %36
  %54 = select i1 %52, i32 1480986543, i32 -207978416
  br label %loopEntry.backedge

originalBBpart2:                                  ; preds = %loopEntry
  %cmp.reg2mem.0.cmp.reload = load volatile i1, i1* %cmp.reg2mem, align 1
  %55 = select i1 %cmp.reg2mem.0.cmp.reload, i32 1719527724, i32 458188036
  br label %loopEntry.backedge

for.body:                                         ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload132 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %56 = sub i32 0, %i.0.reload.reg2mem.0.i.0.reload.reload132
  %57 = sub i32 0, 1
  %58 = add i32 %56, %57
  %59 = sub i32 0, %58
  %add = add nsw i32 %i.0.reload.reg2mem.0.i.0.reload.reload132, 1
  %i.0.reload.reg2mem.0.i.0.reload.reload133 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  %idxprom = sext i32 %i.0.reload.reg2mem.0.i.0.reload.reload133 to i64
  %.reg2mem.0..reload121 = load volatile i32*, i32** %.reg2mem, align 8
  %arrayidx = getelementptr inbounds i32, i32* %.reg2mem.0..reload121, i64 %idxprom
  store i32 %59, i32* %arrayidx, align 4, !tbaa !1
  br label %loopEntry.backedge

for.end:                                          ; preds = %loopEntry
  %60 = load i32, i32* @x, align 4
  %61 = load i32, i32* @y, align 4
  %62 = sub i32 0, %60
  %63 = sub i32 0, -1
  %64 = add i32 %62, %63
  %65 = sub i32 0, %64
  %66 = add i32 %60, -1
  %67 = mul i32 %65, %60
  %68 = xor i32 1, -1
  %69 = xor i32 %67, %68
  %70 = and i32 %69, %67
  %71 = and i32 %67, 1
  %72 = icmp eq i32 %70, 0
  %73 = icmp slt i32 %61, 10
  %74 = and i1 %73, %72
  %75 = xor i1 %73, %72
  %76 = or i1 %74, %75
  %77 = or i1 %73, %72
  %78 = select i1 %76, i32 1357789074, i32 -835530158
  br label %loopEntry.backedge

originalBB56:                                     ; preds = %loopEntry
  %79 = load i32, i32* @x, align 4
  %80 = load i32, i32* @y, align 4
  %81 = add i32 %79, -126403979
  %82 = add i32 %81, -1
  %83 = sub i32 %82, -126403979
  %84 = add i32 %79, -1
  %85 = mul i32 %83, %79
  %86 = xor i32 %85, -1
  %87 = xor i32 1, -1
  %88 = xor i32 -404770153, -1
  %89 = or i32 %86, %87
  %90 = or i32 -404770153, %88
  %91 = xor i32 %89, -1
  %92 = and i32 %91, %90
  %93 = and i32 %85, 1
  %94 = icmp eq i32 %92, 0
  %95 = icmp slt i32 %80, 10
  %96 = xor i1 %95, true
  %97 = xor i1 %94, true
  %98 = xor i1 false, true
  %99 = and i1 %96, false
  %100 = and i1 %95, %98
  %101 = and i1 %97, false
  %102 = and i1 %94, %98
  %103 = or i1 %99, %100
  %104 = or i1 %101, %102
  %105 = xor i1 %103, %104
  %106 = or i1 %96, %97
  %107 = xor i1 %106, true
  %108 = or i1 false, %98
  %109 = and i1 %107, %108
  %110 = or i1 %105, %109
  %111 = or i1 %95, %94
  %112 = select i1 %110, i32 7661857, i32 -835530158
  br label %loopEntry.backedge

originalBBpart258:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond5:                                        ; preds = %loopEntry
  store i32 %k.0.reg2mem.0, i32* %k.0.reload.reg2mem, align 4
  %113 = load i32, i32* @x, align 4
  %114 = load i32, i32* @y, align 4
  %115 = sub i32 %113, -778999377
  %116 = add i32 %115, -1
  %117 = add i32 %116, -778999377
  %118 = add i32 %113, -1
  %119 = mul i32 %117, %113
  %120 = xor i32 %119, -1
  %121 = xor i32 1, -1
  %122 = xor i32 619917315, -1
  %123 = or i32 %120, %121
  %124 = or i32 619917315, %122
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
  %146 = select i1 %144, i32 681728864, i32 2012138852
  br label %loopEntry.backedge

originalBB60:                                     ; preds = %loopEntry
  %k.0.reload.reg2mem.0.k.0.reload.reload = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %cmp6 = icmp slt i32 %k.0.reload.reg2mem.0.k.0.reload.reload, 1000
  store i1 %cmp6, i1* %cmp6.reg2mem, align 1
  %147 = load i32, i32* @x, align 4
  %148 = load i32, i32* @y, align 4
  %149 = sub i32 0, -1
  %150 = sub i32 %147, %149
  %151 = add i32 %147, -1
  %152 = mul i32 %150, %147
  %153 = xor i32 1, -1
  %154 = xor i32 %152, %153
  %155 = and i32 %154, %152
  %156 = and i32 %152, 1
  %157 = icmp eq i32 %155, 0
  %158 = icmp slt i32 %148, 10
  %159 = and i1 %158, %157
  %160 = xor i1 %158, %157
  %161 = or i1 %159, %160
  %162 = or i1 %158, %157
  %163 = select i1 %161, i32 782606451, i32 2012138852
  br label %loopEntry.backedge

originalBBpart262:                                ; preds = %loopEntry
  %cmp6.reg2mem.0.cmp6.reload = load volatile i1, i1* %cmp6.reg2mem, align 1
  %164 = select i1 %cmp6.reg2mem.0.cmp6.reload, i32 1083595, i32 821300670
  br label %loopEntry.backedge

for.body8:                                        ; preds = %loopEntry
  %165 = load i32, i32* @x, align 4
  %166 = load i32, i32* @y, align 4
  %167 = sub i32 0, %165
  %168 = sub i32 0, -1
  %169 = add i32 %167, %168
  %170 = sub i32 0, %169
  %171 = add i32 %165, -1
  %172 = mul i32 %170, %165
  %173 = xor i32 1, -1
  %174 = xor i32 %172, %173
  %175 = and i32 %174, %172
  %176 = and i32 %172, 1
  %177 = icmp eq i32 %175, 0
  %178 = icmp slt i32 %166, 10
  %179 = and i1 %178, %177
  %180 = xor i1 %178, %177
  %181 = or i1 %179, %180
  %182 = or i1 %178, %177
  %183 = select i1 %181, i32 -125114211, i32 -642084721
  br label %loopEntry.backedge

originalBB64:                                     ; preds = %loopEntry
  %184 = load i32, i32* @x, align 4
  %185 = load i32, i32* @y, align 4
  %186 = sub i32 %184, 2129260912
  %187 = add i32 %186, -1
  %188 = add i32 %187, 2129260912
  %189 = add i32 %184, -1
  %190 = mul i32 %188, %184
  %191 = xor i32 %190, -1
  %192 = xor i32 1, -1
  %193 = xor i32 1347265078, -1
  %194 = or i32 %191, %192
  %195 = or i32 1347265078, %193
  %196 = xor i32 %194, -1
  %197 = and i32 %196, %195
  %198 = and i32 %190, 1
  %199 = icmp eq i32 %197, 0
  %200 = icmp slt i32 %185, 10
  %201 = and i1 %200, %199
  %202 = xor i1 %200, %199
  %203 = or i1 %201, %202
  %204 = or i1 %200, %199
  %205 = select i1 %203, i32 1357743185, i32 -642084721
  br label %loopEntry.backedge

originalBBpart266:                                ; preds = %loopEntry
  br label %loopEntry.backedge

for.cond9:                                        ; preds = %loopEntry
  store i32 %i.1.reg2mem.0, i32* %i.1.reload.reg2mem, align 4
  %206 = load i32, i32* @x, align 4
  %207 = load i32, i32* @y, align 4
  %208 = add i32 %206, 428073186
  %209 = add i32 %208, -1
  %210 = sub i32 %209, 428073186
  %211 = add i32 %206, -1
  %212 = mul i32 %210, %206
  %213 = xor i32 %212, -1
  %214 = xor i32 1, -1
  %215 = xor i32 -1315906090, -1
  %216 = or i32 %213, %214
  %217 = or i32 -1315906090, %215
  %218 = xor i32 %216, -1
  %219 = and i32 %218, %217
  %220 = and i32 %212, 1
  %221 = icmp eq i32 %219, 0
  %222 = icmp slt i32 %207, 10
  %223 = xor i1 %222, true
  %224 = xor i1 %221, true
  %225 = xor i1 false, true
  %226 = and i1 %223, false
  %227 = and i1 %222, %225
  %228 = and i1 %224, false
  %229 = and i1 %221, %225
  %230 = or i1 %226, %227
  %231 = or i1 %228, %229
  %232 = xor i1 %230, %231
  %233 = or i1 %223, %224
  %234 = xor i1 %233, true
  %235 = or i1 false, %225
  %236 = and i1 %234, %235
  %237 = or i1 %232, %236
  %238 = or i1 %222, %221
  %239 = select i1 %237, i32 -438665002, i32 451178426
  br label %loopEntry.backedge

originalBB68:                                     ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %cmp10 = icmp sgt i32 %i.1.reload.reg2mem.0.i.1.reload.reload, -1
  store i1 %cmp10, i1* %cmp10.reg2mem, align 1
  %240 = load i32, i32* @x, align 4
  %241 = load i32, i32* @y, align 4
  %242 = sub i32 %240, -1685532418
  %243 = add i32 %242, -1
  %244 = add i32 %243, -1685532418
  %245 = add i32 %240, -1
  %246 = mul i32 %244, %240
  %247 = xor i32 %246, -1
  %248 = xor i32 1, -1
  %249 = xor i32 -1676200289, -1
  %250 = or i32 %247, %248
  %251 = or i32 -1676200289, %249
  %252 = xor i32 %250, -1
  %253 = and i32 %252, %251
  %254 = and i32 %246, 1
  %255 = icmp eq i32 %253, 0
  %256 = icmp slt i32 %241, 10
  %257 = xor i1 %256, true
  %258 = xor i1 %255, true
  %259 = xor i1 true, true
  %260 = and i1 %257, true
  %261 = and i1 %256, %259
  %262 = and i1 %258, true
  %263 = and i1 %255, %259
  %264 = or i1 %260, %261
  %265 = or i1 %262, %263
  %266 = xor i1 %264, %265
  %267 = or i1 %257, %258
  %268 = xor i1 %267, true
  %269 = or i1 true, %259
  %270 = and i1 %268, %269
  %271 = or i1 %266, %270
  %272 = or i1 %256, %255
  %273 = select i1 %271, i32 -1250368447, i32 451178426
  br label %loopEntry.backedge

originalBBpart270:                                ; preds = %loopEntry
  %cmp10.reg2mem.0.cmp10.reload = load volatile i1, i1* %cmp10.reg2mem, align 1
  %274 = select i1 %cmp10.reg2mem.0.cmp10.reload, i32 -1206859128, i32 -1107680254
  br label %loopEntry.backedge

for.body12:                                       ; preds = %loopEntry
  %275 = load i32, i32* @x, align 4
  %276 = load i32, i32* @y, align 4
  %277 = sub i32 0, %275
  %278 = sub i32 0, -1
  %279 = add i32 %277, %278
  %280 = sub i32 0, %279
  %281 = add i32 %275, -1
  %282 = mul i32 %280, %275
  %283 = xor i32 %282, -1
  %284 = xor i32 1, -1
  %285 = xor i32 -223912130, -1
  %286 = or i32 %283, %284
  %287 = or i32 -223912130, %285
  %288 = xor i32 %286, -1
  %289 = and i32 %288, %287
  %290 = and i32 %282, 1
  %291 = icmp eq i32 %289, 0
  %292 = icmp slt i32 %276, 10
  %293 = xor i1 %292, true
  %294 = xor i1 %291, true
  %295 = xor i1 true, true
  %296 = and i1 %293, true
  %297 = and i1 %292, %295
  %298 = and i1 %294, true
  %299 = and i1 %291, %295
  %300 = or i1 %296, %297
  %301 = or i1 %298, %299
  %302 = xor i1 %300, %301
  %303 = or i1 %293, %294
  %304 = xor i1 %303, true
  %305 = or i1 true, %295
  %306 = and i1 %304, %305
  %307 = or i1 %302, %306
  %308 = or i1 %292, %291
  %309 = select i1 %307, i32 -557924665, i32 1965721291
  br label %loopEntry.backedge

originalBB72:                                     ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload137 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %idxprom13 = sext i32 %i.1.reload.reg2mem.0.i.1.reload.reload137 to i64
  %.reg2mem.0..reload122 = load volatile i32*, i32** %.reg2mem, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %.reg2mem.0..reload122, i64 %idxprom13
  %310 = load i32, i32* %arrayidx14, align 4, !tbaa !1
  %.reg2mem125.0..reload130 = load volatile i32*, i32** %.reg2mem125, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %.reg2mem125.0..reload130, i64 %idxprom13
  %311 = load i32, i32* %arrayidx16, align 4, !tbaa !1
  %312 = sub i32 0, %311
  %313 = sub i32 0, %310
  %314 = add i32 %312, %313
  %315 = sub i32 0, %314
  %add17 = add nsw i32 %311, %310
  store i32 %315, i32* %arrayidx16, align 4, !tbaa !1
  %i.1.reload.reg2mem.0.i.1.reload.reload138 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %316 = sub i32 0, %i.1.reload.reg2mem.0.i.1.reload.reload138
  %317 = sub i32 0, -1
  %318 = add i32 %316, %317
  %319 = sub i32 0, %318
  %dec = add nsw i32 %i.1.reload.reg2mem.0.i.1.reload.reload138, -1
  store i32 %319, i32* %dec.reg2mem, align 4
  %320 = load i32, i32* @x, align 4
  %321 = load i32, i32* @y, align 4
  %322 = sub i32 0, %320
  %323 = sub i32 0, -1
  %324 = add i32 %322, %323
  %325 = sub i32 0, %324
  %326 = add i32 %320, -1
  %327 = mul i32 %325, %320
  %328 = xor i32 %327, -1
  %329 = xor i32 1, -1
  %330 = xor i32 1293383860, -1
  %331 = or i32 %328, %329
  %332 = or i32 1293383860, %330
  %333 = xor i32 %331, -1
  %334 = and i32 %333, %332
  %335 = and i32 %327, 1
  %336 = icmp eq i32 %334, 0
  %337 = icmp slt i32 %321, 10
  %338 = and i1 %337, %336
  %339 = xor i1 %337, %336
  %340 = or i1 %338, %339
  %341 = or i1 %337, %336
  %342 = select i1 %340, i32 1142948971, i32 1965721291
  br label %loopEntry.backedge

originalBBpart286:                                ; preds = %loopEntry
  %dec.reg2mem.0.dec.reload = load volatile i32, i32* %dec.reg2mem, align 4
  br label %loopEntry.backedge

for.inc20:                                        ; preds = %loopEntry
  %k.0.reload.reg2mem.0.k.0.reload.reload135 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  %343 = sub i32 0, 1
  %344 = sub i32 %k.0.reload.reg2mem.0.k.0.reload.reload135, %343
  %inc21 = add nsw i32 %k.0.reload.reg2mem.0.k.0.reload.reload135, 1
  br label %loopEntry.backedge

for.end22:                                        ; preds = %loopEntry
  %345 = load i32, i32* @x, align 4
  %346 = load i32, i32* @y, align 4
  %347 = sub i32 0, %345
  %348 = sub i32 0, -1
  %349 = add i32 %347, %348
  %350 = sub i32 0, %349
  %351 = add i32 %345, -1
  %352 = mul i32 %350, %345
  %353 = xor i32 %352, -1
  %354 = xor i32 1, -1
  %355 = xor i32 16279739, -1
  %356 = or i32 %353, %354
  %357 = or i32 16279739, %355
  %358 = xor i32 %356, -1
  %359 = and i32 %358, %357
  %360 = and i32 %352, 1
  %361 = icmp eq i32 %359, 0
  %362 = icmp slt i32 %346, 10
  %363 = xor i1 %362, true
  %364 = xor i1 %361, true
  %365 = xor i1 false, true
  %366 = and i1 %363, false
  %367 = and i1 %362, %365
  %368 = and i1 %364, false
  %369 = and i1 %361, %365
  %370 = or i1 %366, %367
  %371 = or i1 %368, %369
  %372 = xor i1 %370, %371
  %373 = or i1 %363, %364
  %374 = xor i1 %373, true
  %375 = or i1 false, %365
  %376 = and i1 %374, %375
  %377 = or i1 %372, %376
  %378 = or i1 %362, %361
  %379 = select i1 %377, i32 1333592098, i32 344505631
  br label %loopEntry.backedge

originalBB88:                                     ; preds = %loopEntry
  %.reg2mem125.0..reload129 = load volatile i32*, i32** %.reg2mem125, align 8
  %380 = load i32, i32* %.reg2mem125.0..reload129, align 4, !tbaa !1
  %.reg2mem125.0..reload131 = load volatile i32*, i32** %.reg2mem125, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %.reg2mem125.0..reload131, i64 999999
  %381 = load i32, i32* %arrayidx26, align 4, !tbaa !1
  %call27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %380, i32 %381)
  %call28 = tail call i64 @clock() #2
  %call.reg2mem.0.call.reload118 = load volatile i64, i64* %call.reg2mem, align 8
  %382 = sub i64 %call28, 796989539946600997
  %383 = sub i64 %382, %call.reg2mem.0.call.reload118
  %384 = add i64 %383, 796989539946600997
  %sub29 = sub nsw i64 %call28, %call.reg2mem.0.call.reload118
  %conv30 = sitofp i64 %384 to double
  %div = fdiv double %conv30, 1.000000e+06
  %call31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  %call1.reg2mem.0.call1.reload119 = load volatile i8*, i8** %call1.reg2mem, align 8
  tail call void @free(i8* %call1.reg2mem.0.call1.reload119) #2
  %call3.reg2mem.0.call3.reload123 = load volatile i8*, i8** %call3.reg2mem, align 8
  tail call void @free(i8* %call3.reg2mem.0.call3.reload123) #2
  %385 = load i32, i32* @x, align 4
  %386 = load i32, i32* @y, align 4
  %387 = sub i32 0, -1
  %388 = sub i32 %385, %387
  %389 = add i32 %385, -1
  %390 = mul i32 %388, %385
  %391 = xor i32 1, -1
  %392 = xor i32 %390, %391
  %393 = and i32 %392, %390
  %394 = and i32 %390, 1
  %395 = icmp eq i32 %393, 0
  %396 = icmp slt i32 %386, 10
  %397 = and i1 %396, %395
  %398 = xor i1 %396, %395
  %399 = or i1 %397, %398
  %400 = or i1 %396, %395
  %401 = select i1 %399, i32 -597410580, i32 344505631
  br label %loopEntry.backedge

originalBBpart2108:                               ; preds = %loopEntry
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %i.0.reload.reg2mem.0.i.0.reload.reload134 = load volatile i32, i32* %i.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB56alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB60alteredBB:                            ; preds = %loopEntry
  %k.0.reload.reg2mem.0.k.0.reload.reload136 = load volatile i32, i32* %k.0.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB64alteredBB:                            ; preds = %loopEntry
  br label %loopEntry.backedge

originalBB68alteredBB:                            ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload139 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB72alteredBB:                            ; preds = %loopEntry
  %i.1.reload.reg2mem.0.i.1.reload.reload140 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %idxprom13alteredBB = sext i32 %i.1.reload.reg2mem.0.i.1.reload.reload140 to i64
  %.reg2mem.0..reload = load volatile i32*, i32** %.reg2mem, align 8
  %arrayidx14alteredBB = getelementptr inbounds i32, i32* %.reg2mem.0..reload, i64 %idxprom13alteredBB
  %402 = load i32, i32* %arrayidx14alteredBB, align 4, !tbaa !1
  %.reg2mem125.0..reload128 = load volatile i32*, i32** %.reg2mem125, align 8
  %arrayidx16alteredBB = getelementptr inbounds i32, i32* %.reg2mem125.0..reload128, i64 %idxprom13alteredBB
  %403 = load i32, i32* %arrayidx16alteredBB, align 4, !tbaa !1
  %404 = sub i32 0, %402
  %405 = sub i32 %403, %404
  %add17alteredBB = add nsw i32 %403, %402
  store i32 %405, i32* %arrayidx16alteredBB, align 4, !tbaa !1
  %i.1.reload.reg2mem.0.i.1.reload.reload142 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload143 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload144 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload145 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload146 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload147 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload148 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  %i.1.reload.reg2mem.0.i.1.reload.reload141 = load volatile i32, i32* %i.1.reload.reg2mem, align 4
  br label %loopEntry.backedge

originalBB88alteredBB:                            ; preds = %loopEntry
  %.reg2mem125.0..reload127 = load volatile i32*, i32** %.reg2mem125, align 8
  %406 = load i32, i32* %.reg2mem125.0..reload127, align 4, !tbaa !1
  %.reg2mem125.0..reload126 = load volatile i32*, i32** %.reg2mem125, align 8
  %arrayidx26alteredBB = getelementptr inbounds i32, i32* %.reg2mem125.0..reload126, i64 999999
  %407 = load i32, i32* %arrayidx26alteredBB, align 4, !tbaa !1
  %call27alteredBB = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %406, i32 %407)
  %call28alteredBB = tail call i64 @clock() #2
  %call.reg2mem.0.call.reload116 = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload115 = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload114 = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload113 = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload112 = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload111 = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload = load volatile i64, i64* %call.reg2mem, align 8
  %call.reg2mem.0.call.reload117 = load volatile i64, i64* %call.reg2mem, align 8
  %408 = sub i64 0, %call.reg2mem.0.call.reload117
  %409 = add i64 %call28alteredBB, %408
  %sub29alteredBB = sub nsw i64 %call28alteredBB, %call.reg2mem.0.call.reload117
  %conv30alteredBB = sitofp i64 %409 to double
  %divalteredBB = fdiv double %conv30alteredBB, 1.000000e+06
  %call31alteredBB = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %divalteredBB)
  %call1.reg2mem.0.call1.reload = load volatile i8*, i8** %call1.reg2mem, align 8
  tail call void @free(i8* %call1.reg2mem.0.call1.reload) #2
  %call3.reg2mem.0.call3.reload = load volatile i8*, i8** %call3.reg2mem, align 8
  tail call void @free(i8* %call3.reg2mem.0.call3.reload) #2
  br label %loopEntry.backedge
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
