.class final synthetic Lo/aoT;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Lo/aoU;Lo/ale;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoU;",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 482
    invoke-static {p0, v0, v1, v0}, Lo/aoU$StateListAnimator;->d(Lo/aoU;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 483
    invoke-interface {p0, p1}, Lo/aoU;->d(Lo/ale;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lo/akj;->a:Lo/akj;

    return-object p0
.end method

.method public static synthetic b(Lo/aoU;ILjava/lang/Object;)Lo/anZ;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 361
    check-cast p0, Lo/aoU;

    :cond_0
    invoke-static {p0}, Lo/aoS;->b(Lo/aoU;)Lo/anZ;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lo/aoU;)Lo/anZ;
    .locals 1

    .line 361
    new-instance v0, Lo/aoV;

    invoke-direct {v0, p0}, Lo/aoV;-><init>(Lo/aoU;)V

    check-cast v0, Lo/anZ;

    return-object v0
.end method
