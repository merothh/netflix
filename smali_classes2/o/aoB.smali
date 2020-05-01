.class public abstract Lo/aoB;
.super Lo/aqc;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/aqc;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/aqc;-><init>()V

    iput p1, p0, Lo/aoB;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 32
    instance-of v0, p1, Lo/aob;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/aob;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lo/aob;->d:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 177
    invoke-static {p1, p2}, Lo/ajY;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 93
    :goto_0
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_3

    .line 94
    invoke-static {}, Lo/amh;->c()V

    .line 93
    :cond_3
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Lo/aoB;->i()Lo/ale;

    move-result-object p1

    invoke-interface {p1}, Lo/ale;->a()Lo/alj;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lo/aoj;->e(Lo/alj;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public abstract i()Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ale<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final run()V
    .locals 9

    .line 35
    iget-object v0, p0, Lo/aoB;->h:Lo/aqg;

    const/4 v1, 0x0

    .line 36
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lo/aoB;->i()Lo/ale;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lo/aow;

    .line 39
    iget-object v4, v3, Lo/aow;->e:Lo/ale;

    .line 40
    invoke-interface {v4}, Lo/ale;->a()Lo/alj;

    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lo/aoB;->h()Ljava/lang/Object;

    move-result-object v6

    .line 42
    iget-object v3, v3, Lo/aow;->c:Ljava/lang/Object;

    .line 169
    invoke-static {v5, v3}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 43
    :try_start_1
    invoke-virtual {p0, v6}, Lo/aoB;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    .line 44
    iget v8, p0, Lo/aoB;->a:I

    invoke-static {v8}, Lo/aoy;->d(I)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v1, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v1, Lo/alj$Application;

    invoke-interface {v5, v1}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v1

    check-cast v1, Lo/aoU;

    :cond_0
    if-nez v7, :cond_3

    if-eqz v1, :cond_3

    .line 50
    invoke-interface {v1}, Lo/aoU;->c()Z

    move-result v8

    if-nez v8, :cond_3

    .line 51
    invoke-interface {v1}, Lo/aoU;->n()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 52
    move-object v7, v1

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v7}, Lo/aoB;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 172
    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    .line 173
    invoke-static {}, Lo/aoo;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, v4, Lo/alk;

    if-nez v6, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    check-cast v1, Ljava/lang/Throwable;

    move-object v6, v4

    check-cast v6, Lo/alk;

    invoke-static {v1, v6}, Lo/apP;->c(Ljava/lang/Throwable;Lo/alk;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 173
    :cond_2
    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    .line 172
    :goto_1
    invoke-static {v1}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lo/ale;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 55
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v7}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lo/ale;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p0, v6}, Lo/aoB;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lo/ale;->e(Ljava/lang/Object;)V

    .line 58
    :goto_2
    sget-object v1, Lo/akj;->a:Lo/akj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :try_start_2
    invoke-static {v5, v3}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    :try_start_3
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    move-object v1, p0

    check-cast v1, Lo/aoB;

    invoke-interface {v0}, Lo/aqg;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo/aoB;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 176
    :try_start_4
    invoke-static {v5, v3}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw v1

    .line 38
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 63
    :try_start_5
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    move-object v2, p0

    check-cast v2, Lo/aoB;

    invoke-interface {v0}, Lo/aqg;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v0}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lo/aoB;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
