.class final synthetic Lo/anP;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;)Lo/aot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/aor;",
            "Lo/alj;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lo/alN<",
            "-",
            "Lo/aor;",
            "-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/aot<",
            "TT;>;"
        }
    .end annotation

    .line 85
    invoke-static {p0, p1}, Lo/aoh;->d(Lo/aor;Lo/alj;)Lo/alj;

    move-result-object p0

    .line 86
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Lo/aoY;

    invoke-direct {p1, p0, p3}, Lo/aoY;-><init>(Lo/alj;Lo/alN;)V

    check-cast p1, Lo/aox;

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lo/aox;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lo/aox;-><init>(Lo/alj;Z)V

    .line 89
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lo/aox;->d(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lo/alN;)V

    .line 90
    check-cast p1, Lo/aot;

    return-object p1
.end method

.method public static synthetic b(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aoU;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 46
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lo/alj;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 47
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->d:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lo/anM;->c(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;)Lo/aoU;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aot;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 81
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lo/alj;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 82
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->d:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lo/anM;->e(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;)Lo/aot;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lo/alj;Lo/alN;Lo/ale;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alj;",
            "Lo/alN<",
            "-",
            "Lo/aor;",
            "-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lo/ale<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 139
    invoke-interface {p2}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    .line 140
    invoke-interface {v0, p0}, Lo/alj;->plus(Lo/alj;)Lo/alj;

    move-result-object p0

    .line 142
    invoke-static {p0}, Lo/apt;->b(Lo/alj;)V

    if-ne p0, v0, :cond_0

    .line 145
    new-instance v0, Lo/apM;

    invoke-direct {v0, p0, p2}, Lo/apM;-><init>(Lo/alj;Lo/ale;)V

    .line 146
    invoke-static {v0, v0, p1}, Lo/apX;->b(Lo/apM;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 150
    :cond_0
    sget-object v1, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v1, Lo/alj$Application;

    invoke-interface {p0, v1}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v1

    check-cast v1, Lo/ald;

    sget-object v2, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v2, Lo/alj$Application;

    invoke-interface {v0, v2}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/ald;

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Lo/apo;

    invoke-direct {v0, p0, p2}, Lo/apo;-><init>(Lo/alj;Lo/ale;)V

    const/4 v1, 0x0

    .line 267
    invoke-static {p0, v1}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    :try_start_0
    move-object v2, v0

    check-cast v2, Lo/apM;

    invoke-static {v2, v0, p1}, Lo/apX;->b(Lo/apM;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-static {p0, v1}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw p1

    .line 158
    :cond_1
    new-instance v0, Lo/aoC;

    invoke-direct {v0, p0, p2}, Lo/aoC;-><init>(Lo/alj;Lo/ale;)V

    .line 159
    invoke-virtual {v0}, Lo/aoC;->f()V

    .line 160
    move-object p0, v0

    check-cast p0, Lo/ale;

    invoke-static {p1, v0, p0}, Lo/apY;->a(Lo/alN;Ljava/lang/Object;Lo/ale;)V

    .line 161
    invoke-virtual {v0}, Lo/aoC;->m()Ljava/lang/Object;

    move-result-object p0

    .line 137
    :goto_0
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lo/alt;->e(Lo/ale;)V

    :cond_2
    return-object p0
.end method

.method public static final e(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;)Lo/aoU;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aor;",
            "Lo/alj;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lo/alN<",
            "-",
            "Lo/aor;",
            "-",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/aoU;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lo/aoh;->d(Lo/aor;Lo/alj;)Lo/alj;

    move-result-object p0

    .line 51
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Lo/aoZ;

    invoke-direct {p1, p0, p3}, Lo/aoZ;-><init>(Lo/alj;Lo/alN;)V

    check-cast p1, Lo/apl;

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lo/apl;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lo/apl;-><init>(Lo/alj;Z)V

    .line 54
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lo/apl;->d(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lo/alN;)V

    .line 55
    check-cast p1, Lo/aoU;

    return-object p1
.end method
