.class public Lo/MimeTypeMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Plugin;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MimeTypeMap$Activity;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/JavascriptInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Landroid/content/Intent;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/MimeTypeMap$2;

    invoke-direct {v0}, Lo/MimeTypeMap$2;-><init>()V

    sput-object v0, Lo/MimeTypeMap;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lo/MimeTypeMap;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/MimeTypeMap;->d:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/MimeTypeMap;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/MimeTypeMap;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/MimeTypeMap;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/MimeTypeMap;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    sget-object v0, Lo/MimeTypeMap;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lo/MimeTypeMap$2;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/MimeTypeMap;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "nf_input"

    const-string v0, "UI is  gone"

    .line 189
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lo/MimeTypeMap$5;

    invoke-direct {v0, p0}, Lo/MimeTypeMap$5;-><init>(Lo/MimeTypeMap;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lo/MimeTypeMap;->b()Z

    .line 314
    iget-object p1, p0, Lo/MimeTypeMap;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "nf_input"

    if-lez p1, :cond_0

    const-string p1, "Our app UI still has focus!"

    .line 315
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Our app UI lost focus"

    .line 318
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lo/MimeTypeMap$8;

    invoke-direct {v0, p0}, Lo/MimeTypeMap$8;-><init>(Lo/MimeTypeMap;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c()Lo/MimeTypeMap;
    .locals 1

    .line 101
    sget-object v0, Lo/MimeTypeMap$Activity;->a:Lo/MimeTypeMap;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "nf_input"

    const-string v0, "UI may just started, only one activity"

    .line 157
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    iget-object p1, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/MimeTypeMap$3;

    invoke-direct {v2, p0, v0, v1}, Lo/MimeTypeMap$3;-><init>(Lo/MimeTypeMap;J)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 1

    .line 337
    invoke-virtual {p0}, Lo/MimeTypeMap;->b()Z

    .line 342
    iget-object p1, p0, Lo/MimeTypeMap;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "nf_input"

    if-gtz p1, :cond_0

    const-string p1, "Our app UI was not in focus!"

    .line 343
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p1, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lo/MimeTypeMap$6;

    invoke-direct {v0, p0}, Lo/MimeTypeMap$6;-><init>(Lo/MimeTypeMap;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "Our app UI had focus before!"

    .line 345
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lo/MimeTypeMap;->b()Z

    move-result p1

    const-string v0, "nf_input"

    if-eqz p1, :cond_0

    const-string p1, "Our app is still in foreground!"

    .line 285
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Our app is in background now"

    .line 288
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lo/MimeTypeMap$4;

    invoke-direct {v0, p0}, Lo/MimeTypeMap$4;-><init>(Lo/MimeTypeMap;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized e(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 2

    monitor-enter p0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "nf_input"

    const-string p2, "Our app is in foreground already and we do not have a deep link"

    .line 239
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "nf_input"

    const-string p3, "Our app is in foreground already, deep link most likely"

    .line 243
    invoke-static {p1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "nf_input"

    const-string p3, "Our app was in background"

    .line 246
    invoke-static {p1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    invoke-direct {p0}, Lo/MimeTypeMap;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "nf_input"

    const-string p3, "We are initialized, report..."

    .line 252
    invoke-static {p1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p1, p0, Lo/MimeTypeMap;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lo/MimeTypeMap$1;

    invoke-direct {p3, p0, v0, v1, p2}, Lo/MimeTypeMap$1;-><init>(Lo/MimeTypeMap;JLandroid/content/Intent;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "nf_input"

    const-string p3, "Logger is not ready, cold start, save intent"

    .line 267
    invoke-static {p1, p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 268
    iput-object p2, p0, Lo/MimeTypeMap;->g:Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized k()Z
    .locals 6

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    monitor-exit p0

    return v1

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/JavascriptInterface;

    const-string v3, "nf_input"

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSuspendLoggingReady: listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    instance-of v2, v2, Lo/iI;

    if-eqz v2, :cond_1

    const-string v0, "nf_input"

    const-string v1, "Logger ready!"

    .line 221
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 222
    monitor-exit p0

    return v0

    .line 225
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 2

    .line 490
    invoke-virtual {p0}, Lo/MimeTypeMap;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/acR;->a(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lo/MimeTypeMap;->l()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 143
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/UserInputTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/context/UserInputTime;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 146
    iget-object p1, p0, Lo/MimeTypeMap;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lo/MimeTypeMap;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized b(Lo/JavascriptInterface;)Z
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string p1, "nf_input"

    const-string v0, "Listener already exist"

    .line 122
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 123
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()J
    .locals 4

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lo/MimeTypeMap;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d(Z)V
    .locals 1

    .line 518
    iget-object v0, p0, Lo/MimeTypeMap;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 498
    invoke-virtual {p0}, Lo/MimeTypeMap;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e(Lo/JavascriptInterface;)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    .line 536
    invoke-virtual {p0}, Lo/MimeTypeMap;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    .line 514
    iget-object v0, p0, Lo/MimeTypeMap;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 4

    .line 526
    invoke-virtual {p0}, Lo/MimeTypeMap;->g()I

    move-result v0

    .line 527
    iget-object v1, p0, Lo/MimeTypeMap;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 528
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "nf_input"

    const-string v3, "isForegroundAppLaunch:: Number of activities count = %d, foreground launch %b"

    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public declared-synchronized i()Landroid/content/Intent;
    .locals 2

    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lo/MimeTypeMap;->g:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 509
    iput-object v1, p0, Lo/MimeTypeMap;->g:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lo/MimeTypeMap;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 369
    iget-object p1, p0, Lo/MimeTypeMap;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    invoke-direct {p0, p1}, Lo/MimeTypeMap;->c(I)V

    .line 370
    iget-object p1, p0, Lo/MimeTypeMap;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 381
    iget-object p1, p0, Lo/MimeTypeMap;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    invoke-direct {p0, p1}, Lo/MimeTypeMap;->b(I)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 392
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_0

    const-string p1, "nf_input"

    const-string v0, "NetflixComLaunchActivity, ignore"

    .line 393
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lo/MimeTypeMap;->b(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 409
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_0

    const-string p1, "nf_input"

    const-string v0, "NetflixComLaunchActivity, ignore"

    .line 410
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Lo/MimeTypeMap;->c(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 434
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    const-string v1, "nf_input"

    if-eqz v0, :cond_0

    const-string p1, "NetflixComLaunchActivity, ignore"

    .line 435
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 437
    :cond_0
    invoke-virtual {p0}, Lo/MimeTypeMap;->b()Z

    move-result v0

    .line 438
    iget-object v2, p0, Lo/MimeTypeMap;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 442
    instance-of v2, p1, Lcom/netflix/mediaclient/ui/launch/UIWebViewActivity;

    if-nez v2, :cond_2

    instance-of v2, p1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 452
    invoke-direct {p0, p1, v1, v0}, Lo/MimeTypeMap;->e(Landroid/app/Activity;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 443
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "LaunchActivity: Foreground with intent"

    .line 445
    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v3, "LaunchActivity: Foreground without intent"

    .line 447
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_1
    invoke-direct {p0, p1, v2, v0}, Lo/MimeTypeMap;->e(Landroid/app/Activity;Landroid/content/Intent;Z)V

    :goto_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 465
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    if-eqz v0, :cond_0

    const-string p1, "nf_input"

    const-string v0, "NetflixComLaunchActivity, ignore"

    .line 466
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lo/MimeTypeMap;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 469
    invoke-direct {p0, p1}, Lo/MimeTypeMap;->d(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
