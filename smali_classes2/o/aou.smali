.class public final Lo/aou;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Lo/apN;

.field private static final e:Lo/apN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lo/apN;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/aou;->e:Lo/apN;

    .line 17
    new-instance v0, Lo/apN;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lo/apN;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/aou;->d:Lo/apN;

    return-void
.end method

.method public static final a(Lo/aow;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aow<",
            "-",
            "Lo/akj;",
            ">;)Z"
        }
    .end annotation

    .line 254
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 361
    sget-object v1, Lo/aph;->c:Lo/aph;

    invoke-virtual {v1}, Lo/aph;->b()Lo/aoE;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lo/aoE;->h()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    invoke-virtual {v1}, Lo/aoE;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    iput-object v0, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 367
    iput v4, p0, Lo/aow;->a:I

    .line 368
    check-cast p0, Lo/aoB;

    invoke-virtual {v1, p0}, Lo/aoE;->e(Lo/aoB;)V

    const/4 v3, 0x1

    goto :goto_1

    .line 372
    :cond_1
    move-object v0, p0

    check-cast v0, Lo/aoB;

    .line 373
    invoke-virtual {v1, v4}, Lo/aoE;->a(Z)V

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lo/aow;->run()V

    .line 378
    :cond_2
    invoke-virtual {v1}, Lo/aoE;->a()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v2, 0x0

    .line 394
    :try_start_1
    invoke-virtual {v0, p0, v2}, Lo/aoB;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    :goto_0
    invoke-virtual {v1, v4}, Lo/aoE;->c(Z)V

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Lo/aoE;->c(Z)V

    throw p0
.end method

.method public static final synthetic c()Lo/apN;
    .locals 1

    .line 1
    sget-object v0, Lo/aou;->e:Lo/apN;

    return-object v0
.end method

.method public static final c(Lo/ale;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ale<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 249
    instance-of v0, p0, Lo/aow;

    if-eqz v0, :cond_4

    check-cast p0, Lo/aow;

    .line 284
    invoke-static {p1}, Lo/aoc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lo/aow;->b:Lo/aon;

    invoke-virtual {p0}, Lo/aow;->a()Lo/alj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/aon;->a(Lo/alj;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 286
    iput-object v0, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 287
    iput v2, p0, Lo/aow;->a:I

    .line 288
    iget-object p1, p0, Lo/aow;->b:Lo/aon;

    invoke-virtual {p0}, Lo/aow;->a()Lo/alj;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lo/aon;->c(Lo/alj;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 294
    :cond_0
    sget-object v1, Lo/aph;->c:Lo/aph;

    invoke-virtual {v1}, Lo/aph;->b()Lo/aoE;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Lo/aoE;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    iput-object v0, p0, Lo/aow;->d:Ljava/lang/Object;

    .line 300
    iput v2, p0, Lo/aow;->a:I

    .line 301
    check-cast p0, Lo/aoB;

    invoke-virtual {v1, p0}, Lo/aoE;->e(Lo/aoB;)V

    goto :goto_3

    .line 305
    :cond_1
    move-object v0, p0

    check-cast v0, Lo/aoB;

    .line 306
    invoke-virtual {v1, v2}, Lo/aoE;->a(Z)V

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lo/aow;->a()Lo/alj;

    move-result-object v3

    sget-object v4, Lo/aoU;->d:Lo/aoU$ActionBar;

    check-cast v4, Lo/alj$Application;

    invoke-interface {v3, v4}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v3

    check-cast v3, Lo/aoU;

    if-eqz v3, :cond_2

    .line 319
    invoke-interface {v3}, Lo/aoU;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 320
    invoke-interface {v3}, Lo/aoU;->n()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    sget-object v4, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v3}, Lo/akf;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lo/ale;->e(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 326
    invoke-virtual {p0}, Lo/aow;->a()Lo/alj;

    move-result-object v3

    iget-object v4, p0, Lo/aow;->c:Ljava/lang/Object;

    .line 327
    invoke-static {v3, v4}, Lo/apR;->e(Lo/alj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    :try_start_1
    iget-object p0, p0, Lo/aow;->e:Lo/ale;

    invoke-interface {p0, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    .line 331
    sget-object p0, Lo/akj;->a:Lo/akj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    invoke-static {v3, v4}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Lo/apR;->a(Lo/alj;Ljava/lang/Object;)V

    throw p0

    .line 337
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lo/aoE;->a()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    .line 353
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lo/aoB;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 346
    :goto_2
    invoke-virtual {v1, v2}, Lo/aoE;->c(Z)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Lo/aoE;->c(Z)V

    throw p0

    .line 250
    :cond_4
    invoke-interface {p0, p1}, Lo/ale;->e(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
