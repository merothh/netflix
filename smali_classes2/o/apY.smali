.class public final Lo/apY;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lo/alN;Ljava/lang/Object;Lo/ale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alN<",
            "-TR;-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lo/ale<",
            "-TT;>;)V"
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-static {p0, p1, p2}, Lo/alh;->b(Lo/alN;Ljava/lang/Object;Lo/ale;)Lo/ale;

    move-result-object p0

    invoke-static {p0}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    sget-object p1, Lo/akj;->a:Lo/akj;

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lo/aou;->c(Lo/ale;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 61
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lo/ale;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lo/ale;Lo/ale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;",
            "Lo/ale<",
            "*>;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-static {p0}, Lo/alh;->c(Lo/ale;)Lo/ale;

    move-result-object p0

    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lo/aou;->c(Lo/ale;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 67
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/ale;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
