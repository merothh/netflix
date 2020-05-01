.class public abstract Lo/aoG;
.super Lo/aoH;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aoG$Activity;,
        Lo/aoG$Application;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/aoG;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/aoG;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lo/aoH;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    .line 184
    iput-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lo/aoG;->_isCompleted:I

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)Z
    .locals 5

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    .line 290
    invoke-direct {p0}, Lo/aoG;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 292
    sget-object v0, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 293
    :cond_2
    instance-of v3, v0, Lo/apB;

    if-eqz v3, :cond_6

    .line 294
    move-object v3, v0

    check-cast v3, Lo/apB;

    invoke-virtual {v3, p1}, Lo/apB;->d(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 297
    :cond_4
    sget-object v1, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lo/apB;->b()Lo/apB;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 301
    :cond_6
    invoke-static {}, Lo/aoJ;->c()Lo/apN;

    move-result-object v3

    if-ne v0, v3, :cond_7

    return v2

    .line 304
    :cond_7
    new-instance v2, Lo/apB;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lo/apB;-><init>(IZ)V

    .line 305
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo/apB;->d(Ljava/lang/Object;)I

    .line 306
    invoke-virtual {v2, p1}, Lo/apB;->d(Ljava/lang/Object;)I

    .line 307
    sget-object v3, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private final c(JLo/aoG$Activity;)I
    .locals 4

    .line 367
    invoke-direct {p0}, Lo/aoG;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 368
    :cond_0
    iget-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/aoG$Application;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lo/aoG;

    .line 369
    sget-object v1, Lo/aoG;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    new-instance v3, Lo/aoG$Application;

    invoke-direct {v3, p1, p2}, Lo/aoG$Application;-><init>(J)V

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    iget-object v0, v0, Lo/aoG;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    check-cast v0, Lo/aoG$Application;

    .line 372
    :goto_0
    invoke-virtual {p3, p1, p2, v0, p0}, Lo/aoG$Activity;->e(JLo/aoG$Application;Lo/aoG;)I

    move-result p1

    return p1
.end method

.method private final e(Z)V
    .locals 0

    .line 189
    iput p1, p0, Lo/aoG;->_isCompleted:I

    return-void
.end method

.method private final e(Lo/aoG$Activity;)Z
    .locals 1

    .line 364
    iget-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/aoG$Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/aoG$Application;->d()Lo/apS;

    move-result-object v0

    check-cast v0, Lo/aoG$Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public static final synthetic e(Lo/aoG;)Z
    .locals 0

    .line 179
    invoke-direct {p0}, Lo/aoG;->n()Z

    move-result p0

    return p0
.end method

.method private final k()V
    .locals 4

    .line 333
    invoke-static {}, Lo/aoo;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/aoG;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 540
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 336
    sget-object v0, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Lo/aoJ;->c()Lo/apN;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 337
    :cond_2
    instance-of v1, v0, Lo/apB;

    if-eqz v1, :cond_3

    .line 338
    check-cast v0, Lo/apB;

    invoke-virtual {v0}, Lo/apB;->c()Z

    return-void

    .line 342
    :cond_3
    invoke-static {}, Lo/aoJ;->c()Lo/apN;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 345
    :cond_4
    new-instance v1, Lo/apB;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo/apB;-><init>(IZ)V

    .line 346
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/apB;->d(Ljava/lang/Object;)I

    .line 347
    sget-object v2, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method

.method private final l()V
    .locals 3

    .line 383
    invoke-static {}, Lo/apm;->a()Lo/apn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/apn;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 392
    :goto_0
    iget-object v2, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    check-cast v2, Lo/aoG$Application;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/aoG$Application;->a()Lo/apS;

    move-result-object v2

    check-cast v2, Lo/aoG$Activity;

    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {p0, v0, v1, v2}, Lo/aoG;->a(JLo/aoG$Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final n()Z
    .locals 1

    .line 188
    iget v0, p0, Lo/aoG;->_isCompleted:I

    return v0
.end method

.method private final o()Ljava/lang/Runnable;
    .locals 4

    .line 538
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 319
    :cond_1
    instance-of v2, v0, Lo/apB;

    if-eqz v2, :cond_3

    .line 320
    move-object v1, v0

    check-cast v1, Lo/apB;

    invoke-virtual {v1}, Lo/apB;->d()Ljava/lang/Object;

    move-result-object v2

    .line 321
    sget-object v3, Lo/apB;->b:Lo/apN;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 322
    :cond_2
    sget-object v2, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lo/apB;->b()Lo/apB;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_3
    invoke-static {}, Lo/aoJ;->c()Lo/apN;

    move-result-object v2

    if-ne v0, v2, :cond_4

    return-object v1

    .line 326
    :cond_4
    sget-object v2, Lo/aoG;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    .line 279
    invoke-direct {p0, p1}, Lo/aoG;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lo/aoG;->f()V

    goto :goto_0

    .line 283
    :cond_0
    sget-object v0, Lo/aov;->e:Lo/aov;

    invoke-virtual {v0, p1}, Lo/aov;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c(Lo/alj;Ljava/lang/Runnable;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p2}, Lo/aoG;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected c()Z
    .locals 4

    .line 192
    invoke-virtual {p0}, Lo/aoG;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/aoG$Application;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lo/aoG$Application;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 195
    :cond_1
    iget-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 197
    :cond_2
    instance-of v3, v0, Lo/apB;

    if-eqz v3, :cond_3

    check-cast v0, Lo/apB;

    invoke-virtual {v0}, Lo/apB;->e()Z

    move-result v1

    goto :goto_1

    .line 198
    :cond_3
    invoke-static {}, Lo/aoJ;->c()Lo/apN;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public d()J
    .locals 8

    .line 254
    invoke-virtual {p0}, Lo/aoG;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/aoG;->e()J

    move-result-wide v0

    return-wide v0

    .line 256
    :cond_0
    iget-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/aoG$Application;

    if-eqz v0, :cond_5

    .line 257
    invoke-virtual {v0}, Lo/aoG$Application;->e()Z

    move-result v1

    if-nez v1, :cond_5

    .line 258
    invoke-static {}, Lo/apm;->a()Lo/apn;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo/apn;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 263
    :goto_0
    move-object v3, v0

    check-cast v3, Lo/apU;

    .line 527
    monitor-enter v3

    .line 528
    :try_start_0
    invoke-virtual {v3}, Lo/apU;->c()Lo/apS;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 529
    check-cast v4, Lo/aoG$Activity;

    .line 264
    invoke-virtual {v4, v1, v2}, Lo/aoG$Activity;->c(J)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 265
    check-cast v4, Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lo/aoG;->a(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 530
    invoke-virtual {v3, v7}, Lo/apU;->b(I)Lo/apS;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 533
    :cond_3
    monitor-exit v3

    goto :goto_2

    .line 528
    :cond_4
    monitor-exit v3

    .line 534
    :goto_2
    check-cast v5, Lo/aoG$Activity;

    if-eqz v5, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 533
    monitor-exit v3

    throw v0

    .line 272
    :cond_5
    invoke-direct {p0}, Lo/aoG;->o()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    :cond_6
    invoke-virtual {p0}, Lo/aoG;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method protected e()J
    .locals 6

    .line 204
    invoke-super {p0}, Lo/aoH;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 205
    :cond_0
    iget-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    instance-of v1, v0, Lo/apB;

    if-eqz v1, :cond_5

    check-cast v0, Lo/apB;

    invoke-virtual {v0}, Lo/apB;->e()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v2

    .line 212
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    check-cast v0, Lo/aoG$Application;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lo/aoG$Application;->d()Lo/apS;

    move-result-object v0

    check-cast v0, Lo/aoG$Activity;

    if-eqz v0, :cond_4

    .line 213
    iget-wide v0, v0, Lo/aoG$Activity;->b:J

    invoke-static {}, Lo/apm;->a()Lo/apn;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lo/apn;->c()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_1
    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lo/amG;->d(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    return-wide v4

    .line 209
    :cond_5
    invoke-static {}, Lo/aoJ;->c()Lo/apN;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-wide v4

    :cond_6
    return-wide v2
.end method

.method public final e(JLo/aoG$Activity;)V
    .locals 2

    .line 356
    invoke-direct {p0, p1, p2, p3}, Lo/aoG;->c(JLo/aoG$Activity;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 358
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lo/aoG;->a(JLo/aoG$Activity;)V

    goto :goto_0

    .line 357
    :cond_2
    invoke-direct {p0, p3}, Lo/aoG;->e(Lo/aoG$Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lo/aoG;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final i()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lo/aoG;->_queue:Ljava/lang/Object;

    .line 378
    iput-object v0, p0, Lo/aoG;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method protected j()V
    .locals 5

    .line 218
    sget-object v0, Lo/aph;->c:Lo/aph;

    invoke-virtual {v0}, Lo/aph;->d()V

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, v0}, Lo/aoG;->e(Z)V

    .line 222
    invoke-direct {p0}, Lo/aoG;->k()V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lo/aoG;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lo/aoG;->l()V

    return-void
.end method
