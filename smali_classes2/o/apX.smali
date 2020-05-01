.class public final Lo/apX;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Lo/apM;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/apM<",
            "-TT;>;TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lo/apM;->f()V

    const/4 v0, 0x2

    .line 91
    :try_start_0
    move-object v1, p0

    check-cast v1, Lo/ale;

    if-eqz p2, :cond_0

    invoke-static {p2, v0}, Lo/amk;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/alN;

    invoke-interface {p2, p1, v1}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 207
    new-instance p2, Lo/aob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Lo/aob;-><init>(Ljava/lang/Throwable;ZILo/amc;)V

    move-object p1, p2

    .line 208
    :goto_0
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Lo/apM;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    sget-object p2, Lo/apa;->c:Lo/apN;

    if-ne p1, p2, :cond_2

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 211
    :cond_2
    instance-of p2, p1, Lo/aob;

    if-eqz p2, :cond_5

    .line 213
    check-cast p1, Lo/aob;

    iget-object p2, p1, Lo/aob;->d:Ljava/lang/Throwable;

    .line 90
    iget-object p1, p1, Lo/aob;->d:Ljava/lang/Throwable;

    iget-object p0, p0, Lo/apM;->a:Lo/ale;

    .line 214
    invoke-static {}, Lo/aoo;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p0, Lo/alk;

    if-nez p2, :cond_3

    goto :goto_1

    .line 215
    :cond_3
    check-cast p0, Lo/alk;

    invoke-static {p1, p0}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_4
    :goto_1
    throw p1

    .line 222
    :cond_5
    invoke-static {p1}, Lo/apa;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static final e(Lo/alN;Ljava/lang/Object;Lo/ale;)V
    .locals 3
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

    .line 186
    invoke-static {p2}, Lo/alt;->d(Lo/ale;)Lo/ale;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-interface {p2}, Lo/ale;->a()Lo/alj;

    move-result-object p2

    const/4 v1, 0x0

    .line 189
    invoke-static {p2, v1}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    .line 55
    :try_start_1
    invoke-static {p0, v2}, Lo/amk;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/alN;

    invoke-interface {p0, p1, v0}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-static {p2, v1}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    .line 200
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/ale;->e(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 55
    :cond_0
    :try_start_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :goto_0
    :try_start_4
    invoke-static {p2, v1}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 195
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/ale;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
