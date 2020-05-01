.class public final Lo/aoc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Ljava/lang/Object;Lo/ale;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lo/ale<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    instance-of v0, p0, Lo/aob;

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    check-cast p0, Lo/aob;

    iget-object p0, p0, Lo/aob;->d:Ljava/lang/Throwable;

    .line 58
    invoke-static {}, Lo/aoo;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lo/alk;

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    check-cast p1, Lo/alk;

    invoke-static {p0, p1}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object p0

    .line 20
    :cond_1
    :goto_0
    invoke-static {p0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 22
    :cond_2
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lo/aob;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lo/aob;-><init>(Ljava/lang/Throwable;ZILo/amc;)V

    :goto_0
    return-object p0
.end method

.method public static final e(Ljava/lang/Object;Lo/anR;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lo/anR<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    check-cast p1, Lo/ale;

    .line 56
    invoke-static {}, Lo/aoo;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, p1, Lo/alk;

    if-nez p0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    check-cast p1, Lo/alk;

    invoke-static {v0, p1}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lo/aob;

    invoke-direct {v2, v0, p0, p1, v1}, Lo/aob;-><init>(Ljava/lang/Throwable;ZILo/amc;)V

    move-object p0, v2

    :goto_1
    return-object p0
.end method
