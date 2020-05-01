.class public final Lo/apt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Lo/alj;)V
    .locals 1

    .line 51
    sget-object v0, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v0, Lo/alj$Application;

    invoke-interface {p0, v0}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p0

    check-cast p0, Lo/aoU;

    if-eqz p0, :cond_1

    .line 52
    invoke-interface {p0}, Lo/aoU;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lo/aoU;->n()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final c(Lo/ale;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lo/apt;->b(Lo/alj;)V

    .line 30
    invoke-static {p0}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object v1

    instance-of v2, v1, Lo/aow;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lo/aow;

    if-eqz v1, :cond_4

    .line 31
    iget-object v2, v1, Lo/aow;->b:Lo/aon;

    invoke-virtual {v2, v0}, Lo/aon;->a(Lo/alj;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    sget-object v2, Lo/akj;->a:Lo/akj;

    invoke-virtual {v1, v0, v2}, Lo/aow;->d(Lo/alj;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Lo/apq;

    invoke-direct {v2}, Lo/apq;-><init>()V

    .line 38
    move-object v3, v2

    check-cast v3, Lo/alj;

    invoke-interface {v0, v3}, Lo/alj;->plus(Lo/alj;)Lo/alj;

    move-result-object v0

    sget-object v3, Lo/akj;->a:Lo/akj;

    invoke-virtual {v1, v0, v3}, Lo/aow;->d(Lo/alj;Ljava/lang/Object;)V

    .line 40
    iget-boolean v0, v2, Lo/apq;->d:Z

    if-eqz v0, :cond_3

    .line 43
    invoke-static {v1}, Lo/aou;->a(Lo/aow;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 30
    :cond_4
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 27
    :goto_1
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lo/alt;->e(Lo/ale;)V

    :cond_5
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, Lo/akj;->a:Lo/akj;

    return-object p0
.end method
