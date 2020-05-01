.class public final Lo/aoy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final c(Lo/aoB;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoB<",
            "*>;)V"
        }
    .end annotation

    .line 130
    sget-object v0, Lo/aph;->c:Lo/aph;

    invoke-virtual {v0}, Lo/aph;->b()Lo/aoE;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lo/aoE;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0, p0}, Lo/aoE;->e(Lo/aoB;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Lo/aoE;->a(Z)V

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lo/aoB;->i()Lo/ale;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lo/aoy;->c(Lo/aoB;Lo/ale;I)V

    .line 184
    :cond_1
    invoke-virtual {v0}, Lo/aoE;->a()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 200
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lo/aoB;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    :goto_0
    invoke-virtual {v0, v1}, Lo/aoE;->c(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Lo/aoE;->c(Z)V

    throw p0
.end method

.method public static final c(Lo/aoB;Lo/ale;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/aoB<",
            "-TT;>;",
            "Lo/ale<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lo/aoB;->h()Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lo/aoB;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 169
    invoke-static {}, Lo/aoo;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lo/alk;

    if-nez v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    move-object v1, p1

    check-cast v1, Lo/alk;

    invoke-static {p0, v1}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 120
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {p0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    if-eqz p1, :cond_4

    .line 124
    check-cast p1, Lo/aow;

    .line 171
    invoke-virtual {p1}, Lo/aow;->a()Lo/alj;

    move-result-object p2

    iget-object v0, p1, Lo/aow;->c:Ljava/lang/Object;

    .line 172
    invoke-static {p2, v0}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    :try_start_0
    iget-object p1, p1, Lo/aow;->e:Lo/ale;

    invoke-interface {p1, p0}, Lo/ale;->e(Ljava/lang/Object;)V

    .line 176
    sget-object p0, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-static {p2, v0}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw p0

    .line 124
    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 123
    :cond_6
    invoke-static {p1, p0}, Lo/aou;->c(Lo/ale;Ljava/lang/Object;)V

    goto :goto_2

    .line 122
    :cond_7
    invoke-interface {p1, p0}, Lo/ale;->e(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static final c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final d(Lo/aoB;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/aoB<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lo/aoB;->i()Lo/ale;

    move-result-object v0

    .line 101
    invoke-static {p1}, Lo/aoy;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lo/aow;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lo/aoy;->d(I)Z

    move-result v1

    iget v2, p0, Lo/aoB;->a:I

    invoke-static {v2}, Lo/aoy;->d(I)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 103
    move-object p1, v0

    check-cast p1, Lo/aow;

    iget-object p1, p1, Lo/aow;->b:Lo/aon;

    .line 104
    invoke-interface {v0}, Lo/ale;->a()Lo/alj;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Lo/aon;->a(Lo/alj;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lo/aon;->c(Lo/alj;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p0}, Lo/aoy;->c(Lo/aoB;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p0, v0, p1}, Lo/aoy;->c(Lo/aoB;Lo/ale;I)V

    :goto_0
    return-void
.end method

.method public static final d(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
