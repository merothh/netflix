.class Lo/ul$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;
.implements Lo/rn$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
        ">;",
        "Lo/rn$StateListAnimator;"
    }
.end annotation


# instance fields
.field private final a:Lo/ul$Activity;

.field private final b:J

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field private f:Lo/ul$TaskDescription;

.field private g:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

.field private h:Lo/rn;

.field private i:Lo/ri;

.field private j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private k:Z

.field private l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field private m:Z

.field private n:Ljava/lang/Boolean;

.field private o:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLo/ul$Activity;Lcom/netflix/mediaclient/service/player/StreamProfileType;)V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/ul$ActionBar;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 250
    iput-object p1, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    .line 251
    iput-wide p2, p0, Lo/ul$ActionBar;->b:J

    .line 252
    iput-object p4, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    .line 253
    iput-object p5, p0, Lo/ul$ActionBar;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    return-void
.end method

.method private synthetic a(Ljava/lang/Long;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lo/ul$ActionBar;->n:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lo/ul$Activity;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Lo/ul$ActionBar;->n()V

    return-void
.end method

.method private synthetic b(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .line 371
    iget-object v0, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2}, Lo/ul$Activity;->b(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Lo/ul$ActionBar;->o()V

    return-void
.end method

.method static synthetic b(Lo/ul$ActionBar;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/ul$ActionBar;->b(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lo/ul$ActionBar;)J
    .locals 2

    .line 230
    iget-wide v0, p0, Lo/ul$ActionBar;->b:J

    return-wide v0
.end method

.method static synthetic c(Lo/ul$ActionBar;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ul$ActionBar;->a(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic d(Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Lo/ul$ActionBar;->m()V

    return-void
.end method

.method static synthetic e(Lo/ul$ActionBar;)Lo/rn;
    .locals 0

    .line 230
    iget-object p0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 401
    iget-boolean v0, p0, Lo/ul$ActionBar;->m:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    new-instance v1, Lo/uw;

    invoke-direct {v1, p0}, Lo/uw;-><init>(Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lo/ul$ActionBar;->m:Z

    :cond_0
    return-void
.end method

.method private synthetic i()V
    .locals 4

    .line 409
    iget-object v0, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    iget-wide v1, p0, Lo/ul$ActionBar;->b:J

    const-string v3, "drmOpen"

    invoke-interface {v0, v1, v2, v3}, Lo/ul$Activity;->b(JLjava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 408
    iget-boolean v0, p0, Lo/ul$ActionBar;->k:Z

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    new-instance v1, Lo/uy;

    invoke-direct {v1, p0}, Lo/uy;-><init>(Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lo/ul$ActionBar;->k:Z

    :cond_0
    return-void
.end method

.method static synthetic j(Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Lo/ul$ActionBar;->i()V

    return-void
.end method

.method private synthetic m()V
    .locals 4

    .line 402
    iget-object v0, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    iget-wide v1, p0, Lo/ul$ActionBar;->b:J

    const-string v3, "drmRequested"

    invoke-interface {v0, v1, v2, v3}, Lo/ul$Activity;->b(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic n()V
    .locals 4

    .line 343
    iget-object v0, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    iget-wide v1, p0, Lo/ul$ActionBar;->b:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lo/ul$Activity;->b(JZ)V

    return-void
.end method

.method private synthetic o()V
    .locals 4

    .line 360
    iget-object v0, p0, Lo/ul$ActionBar;->a:Lo/ul$Activity;

    iget-wide v1, p0, Lo/ul$ActionBar;->b:J

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ul$Activity;->b(JZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 385
    invoke-virtual {p0}, Lo/ul$ActionBar;->b()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    if-eqz v0, :cond_0

    const-string v0, "NetflixDrmSessionManager"

    const-string v1, "releasing DRM resources for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 282
    iget-wide v4, p0, Lo/ul$ActionBar;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v0}, Lo/rn;->b()V

    .line 284
    iget-object v0, p0, Lo/ul$ActionBar;->i:Lo/ri;

    iget-wide v1, p0, Lo/ul$ActionBar;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ri;->d(Ljava/lang/Long;)V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    .line 286
    iput-object v0, p0, Lo/ul$ActionBar;->o:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 287
    iput-object v0, p0, Lo/ul$ActionBar;->g:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 288
    iput-object v0, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lo/ul$ActionBar;->l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-eq p2, v0, :cond_0

    .line 343
    iget-object v0, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    new-instance v1, Lo/up;

    invoke-direct {v1, p0}, Lo/up;-><init>(Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    :cond_0
    iget-object v0, p0, Lo/ul$ActionBar;->l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 347
    monitor-exit p0

    return-void

    .line 349
    :cond_1
    :try_start_1
    iput-object p2, p0, Lo/ul$ActionBar;->l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 350
    iget-object p2, p0, Lo/ul$ActionBar;->n:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 351
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lo/ul$ActionBar;->n:Ljava/lang/Boolean;

    .line 353
    :cond_2
    iget-object p2, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    new-instance v0, Lo/ut;

    invoke-direct {v0, p0, p1}, Lo/ut;-><init>(Lo/ul$ActionBar;Ljava/lang/Long;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 6

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ul$ActionBar;->i:Lo/ri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ul$ActionBar;->f:Lo/ul$TaskDescription;

    if-eqz v0, :cond_0

    const-string v0, "NetflixDrmSessionManager"

    const-string v1, "acquiring DRM resources for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 270
    iget-wide v4, p0, Lo/ul$ActionBar;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    iget-object v0, p0, Lo/ul$ActionBar;->i:Lo/ri;

    iget-wide v1, p0, Lo/ul$ActionBar;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lo/ul$ActionBar;->f:Lo/ul$TaskDescription;

    invoke-interface {v2}, Lo/ul$TaskDescription;->b()Lo/rc;

    move-result-object v2

    iget-object v3, p0, Lo/ul$ActionBar;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-interface {v0, v1, v2, v3, p0}, Lo/ri;->b(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rn;

    move-result-object v0

    iput-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    .line 273
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v0, p0}, Lo/rn;->b(Lo/rn$StateListAnimator;)V
    :try_end_1
    .catch Lcom/netflix/mediaclient/service/player/drm/NfDrmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 1

    .line 389
    iget-object v0, p0, Lo/ul$ActionBar;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V
    .locals 2

    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lo/ul$ActionBar;->l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-eq p2, v0, :cond_0

    .line 360
    iget-object v0, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    new-instance v1, Lo/us;

    invoke-direct {v1, p0}, Lo/us;-><init>(Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    :cond_0
    iget-object v0, p0, Lo/ul$ActionBar;->l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ul$ActionBar;->l:Lcom/netflix/mediaclient/service/player/drm/LicenseType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p2, :cond_1

    .line 364
    monitor-exit p0

    return-void

    .line 366
    :cond_1
    :try_start_1
    new-instance p2, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/drm/NetflixDrmException;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    iput-object p2, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    .locals 4

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lo/ul$ActionBar;->g:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v0}, Lo/rn;->q()Landroid/media/MediaCrypto;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    iget-object v1, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v1}, Lo/rn;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v3}, Lo/rn;->p()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;ZLjava/lang/Object;)V

    iput-object v1, p0, Lo/ul$ActionBar;->g:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 333
    :cond_1
    iget-object v0, p0, Lo/ul$ActionBar;->g:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/ul$ActionBar;->o:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lo/ul$ActionBar;->o:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 336
    :cond_2
    :try_start_1
    iget-object v0, p0, Lo/ul$ActionBar;->g:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lo/ul$ActionBar;->c:Landroid/os/Handler;

    new-instance v1, Lo/ux;

    invoke-direct {v1, p0, p1, p2}, Lo/ux;-><init>(Lo/ul$ActionBar;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized e(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 293
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lo/ri;Lo/ul$TaskDescription;)V
    .locals 2

    monitor-enter p0

    .line 257
    :try_start_0
    iput-object p1, p0, Lo/ul$ActionBar;->i:Lo/ri;

    .line 258
    iput-object p2, p0, Lo/ul$ActionBar;->f:Lo/ul$TaskDescription;

    if-eqz p1, :cond_0

    .line 260
    iget-wide v0, p0, Lo/ul$ActionBar;->b:J

    iget-object p2, p0, Lo/ul$ActionBar;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-interface {p1, v0, v1, p2}, Lo/ri;->e(JLcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    move-result-object p1

    iput-object p1, p0, Lo/ul$ActionBar;->o:Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lo/ul$ActionBar;->c()V

    .line 263
    iget-object p1, p0, Lo/ul$ActionBar;->n:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/ul$ActionBar;->n:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()I
    .locals 1

    .line 393
    iget-object v0, p0, Lo/ul$ActionBar;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 316
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v0}, Lo/rn;->e()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iget-object v1, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 322
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lo/ul$ActionBar;->e()Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 2

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-direct {p0}, Lo/ul$ActionBar;->f()V

    .line 299
    iget-object v0, p0, Lo/ul$ActionBar;->j:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 300
    monitor-exit p0

    return v0

    .line 301
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 302
    monitor-exit p0

    return v0

    .line 304
    :cond_1
    :try_start_2
    iget-object v0, p0, Lo/ul$ActionBar;->h:Lo/rn;

    invoke-interface {v0}, Lo/rn;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 306
    invoke-direct {p0}, Lo/ul$ActionBar;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()I
    .locals 1

    .line 397
    iget-object v0, p0, Lo/ul$ActionBar;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
