.class public Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentTransition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;
    }
.end annotation


# static fields
.field private static final d:J


# instance fields
.field public final a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

.field public final b:Ljava/lang/String;

.field private final c:Lo/zj;

.field public final e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:J

.field private k:Lo/GrantedUriPermission;

.field private l:Z

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Ljava/lang/String;

.field private o:J

.field private r:Lorg/json/JSONObject;

.field private s:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->d:J

    return-void
.end method

.method constructor <init>(Lo/zj;Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->c:Lo/zj;

    .line 144
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    .line 145
    iput-object p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    .line 146
    invoke-static {}, Lo/adZ;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->b:Ljava/lang/String;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->j:J

    const/4 p1, 0x0

    .line 149
    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->nextTarget(Lo/GrantedUriPermission;)Lo/GrantedUriPermission;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    .line 151
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->h()Lcom/netflix/cl/model/event/session/Session;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->s:Ljava/lang/Long;

    .line 152
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/context/ftl/Target;

    iget-object p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    invoke-interface {p3}, Lo/GrantedUriPermission;->name()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    invoke-interface {v0}, Lo/GrantedUriPermission;->host()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/netflix/cl/model/context/ftl/Target;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->j()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 358
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->o:J

    sget-wide v4, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 359
    monitor-exit p0

    return-void

    .line 361
    :cond_1
    :try_start_1
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v3, Lcom/netflix/cl/model/context/ftl/Via;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    if-eqz p1, :cond_2

    .line 363
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/context/ftl/Via;

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/context/ftl/Via;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 365
    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->n:Ljava/lang/String;

    .line 366
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->o:J

    .line 367
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 355
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Lo/ExitTransitionCoordinator;)V
    .locals 0

    .line 347
    invoke-static {p1}, Lo/zr;->e(Lo/ExitTransitionCoordinator;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized d(Lcom/android/volley/Request;Lo/zh;)Z
    .locals 12

    monitor-enter p0

    .line 381
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->H()Lo/GrantedUriPermission;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "nf_ftl"

    const-string v2, "ignoring fallback request - could not find target for existing request"

    .line 384
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    const-string p1, "nf_ftl"

    const-string p2, "ignoring fallback request - fallback already occurred from another request"

    .line 388
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return v2

    .line 392
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->nextTarget(Lo/GrantedUriPermission;)Lo/GrantedUriPermission;

    move-result-object v1

    if-ne v1, v0, :cond_2

    const-string p1, "nf_ftl"

    const-string p2, "ignoring fallback request - no more targets available in config"

    .line 394
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    const-string v0, "nf_ftl"

    const-string v3, "falling over from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 398
    iget-object v5, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->c:Lo/zj;

    new-instance v3, Lo/zf;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v3

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lo/zf;-><init>(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;Lcom/android/volley/Request;Lo/zh;ZZ)V

    invoke-virtual {v0, v3}, Lo/zj;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    const/4 p1, 0x0

    .line 402
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a(Ljava/lang/String;)V

    .line 403
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class p2, Lcom/netflix/cl/model/context/ftl/Target;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 404
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    .line 405
    iput v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->g:I

    .line 406
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/context/ftl/Target;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    invoke-interface {v0}, Lo/GrantedUriPermission;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    invoke-interface {v1}, Lo/GrantedUriPermission;->host()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netflix/cl/model/context/ftl/Target;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 408
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private h()Lcom/netflix/cl/model/event/session/Session;
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->cell()I

    move-result v0

    int-to-long v0, v0

    .line 415
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$5;->b:[I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_0
    new-instance v2, Lcom/netflix/cl/model/event/session/ftl/ConfigChangedSession;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->getTargetNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/session/ftl/ConfigChangedSession;-><init>(Ljava/lang/Long;[Ljava/lang/String;)V

    return-object v2

    .line 423
    :cond_1
    new-instance v2, Lcom/netflix/cl/model/event/session/ftl/BackgroundSession;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->getTargetNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/session/ftl/BackgroundSession;-><init>(Ljava/lang/Long;[Ljava/lang/String;)V

    return-object v2

    .line 421
    :cond_2
    new-instance v2, Lcom/netflix/cl/model/event/session/ftl/NetworkChangeSession;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->getTargetNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/session/ftl/NetworkChangeSession;-><init>(Ljava/lang/Long;[Ljava/lang/String;)V

    return-object v2

    .line 419
    :cond_3
    new-instance v2, Lcom/netflix/cl/model/event/session/ftl/WarmStartSession;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->getTargetNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/session/ftl/WarmStartSession;-><init>(Ljava/lang/Long;[Ljava/lang/String;)V

    return-object v2

    .line 417
    :cond_4
    new-instance v2, Lcom/netflix/cl/model/event/session/ftl/ColdStartSession;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->getTargetNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netflix/cl/model/event/session/ftl/ColdStartSession;-><init>(Ljava/lang/Long;[Ljava/lang/String;)V

    return-object v2
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    .line 332
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cell"

    .line 333
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->cell()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "target"

    .line 334
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->c()Lo/GrantedUriPermission;

    move-result-object v2

    invoke-interface {v2}, Lo/GrantedUriPermission;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hostname"

    .line 335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->c()Lo/GrantedUriPermission;

    move-result-object v2

    invoke-interface {v2}, Lo/GrantedUriPermission;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "via"

    .line 336
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_type"

    .line 337
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    .line 338
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "targets"

    .line 339
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->getTargetNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->r:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "nf_ftl"

    const-string v2, "unable to create logblob snapshot"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 342
    invoke-static {v1, v0, v2, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->i:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->f:I

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->hostMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->hostMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "nf_ftl"

    const-string v2, "unable to determine if URL %s is eligible for FTL"

    .line 318
    invoke-static {p1, v0, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Lo/GrantedUriPermission;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    return-object v0
.end method

.method public declared-synchronized c(Lcom/android/volley/Request;)V
    .locals 0

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->i()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 218
    monitor-exit p0

    return-void

    .line 221
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V
    .locals 8

    monitor-enter p0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 233
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 238
    :try_start_1
    iget-object p2, p3, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    .line 241
    :cond_1
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->d(Lo/ExitTransitionCoordinator;)V

    .line 243
    invoke-static {p2, p3}, Lo/zh;->e(Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)Lo/zh;

    move-result-object v3

    const/4 p2, 0x0

    if-nez v3, :cond_2

    .line 246
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->h:I

    .line 247
    iput p2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->g:I

    .line 248
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->l:Z

    goto/16 :goto_3

    .line 251
    :cond_2
    iget p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->f:I

    const/4 v6, 0x1

    add-int/2addr p3, v6

    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->f:I

    .line 252
    iget p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->h:I

    add-int/2addr p3, v6

    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->h:I

    .line 253
    invoke-virtual {p1}, Lcom/android/volley/Request;->H()Lo/GrantedUriPermission;

    move-result-object p3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->k:Lo/GrantedUriPermission;

    if-ne p3, v0, :cond_3

    .line 254
    iget p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->g:I

    add-int/2addr p3, v6

    iput p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->g:I

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/android/volley/Request;->L()I

    move-result p3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->maxTries()I

    move-result v0

    if-ge p3, v0, :cond_5

    iget-boolean p3, v3, Lo/zh;->a:Z

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    goto :goto_1

    .line 259
    :cond_5
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->d(Lcom/android/volley/Request;Lo/zh;)Z

    move-result p3

    :goto_1
    if-nez p3, :cond_9

    .line 266
    iget-object p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {p1}, Lcom/android/volley/Request;->H()Lo/GrantedUriPermission;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->isLastTarget(Lo/GrantedUriPermission;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 267
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->l:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz p3, :cond_7

    .line 268
    iget p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->g:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    .line 269
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->errorsThrottleLimit()I

    move-result v1

    if-lt p3, v1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-nez v0, :cond_8

    .line 271
    iget-object p3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->c:Lo/zj;

    new-instance v7, Lo/zf;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lo/zf;-><init>(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;Lcom/android/volley/Request;Lo/zh;ZZ)V

    invoke-virtual {p3, v7}, Lo/zj;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_8
    if-eqz p2, :cond_9

    .line 274
    iput-boolean v6, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/ftl/Via;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 159
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/ftl/Target;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 160
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->s:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->h:I

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 289
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 290
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->hosts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->targets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;

    .line 294
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return v1

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "nf_ftl"

    const-string v3, "unable to determine if URL %s is eligible for FTL"

    .line 299
    invoke-static {p1, v2, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->r:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()J
    .locals 4

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->j:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
