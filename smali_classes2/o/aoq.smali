.class public final Lo/aoq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Lo/alN;Lo/ale;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alN<",
            "-",
            "Lo/aor;",
            "-",
            "Lo/ale<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lo/ale<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 176
    new-instance v0, Lo/apM;

    invoke-interface {p1}, Lo/ale;->a()Lo/alj;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/apM;-><init>(Lo/alj;Lo/ale;)V

    .line 177
    invoke-static {v0, v0, p0}, Lo/apX;->b(Lo/apM;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p0

    .line 175
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lo/alt;->e(Lo/ale;)V

    :cond_0
    return-object p0
.end method

.method public static final d(Lo/aor;)Z
    .locals 1

    .line 109
    invoke-interface {p0}, Lo/aor;->b()Lo/alj;

    move-result-object p0

    sget-object v0, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v0, Lo/alj$Application;

    invoke-interface {p0, v0}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p0

    check-cast p0, Lo/aoU;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lo/aoU;->c()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
