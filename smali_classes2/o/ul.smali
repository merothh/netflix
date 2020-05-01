.class public Lo/ul;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ul$TaskDescription;,
        Lo/ul$Activity;,
        Lo/ul$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
        "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "Lo/ul$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lo/ri;

.field private final d:Landroid/os/Handler;

.field private final e:Lo/uk;

.field private final g:Lo/ul$Activity;

.field private h:Lo/ri;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lo/ri;Lo/uk;Lo/ul$Activity;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ul;->a:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ul;->d:Landroid/os/Handler;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-interface {p2}, Lo/ri;->d()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/ul;->b:Landroid/os/Handler;

    .line 57
    iput-object p2, p0, Lo/ul;->c:Lo/ri;

    .line 58
    iput-object p3, p0, Lo/ul;->e:Lo/uk;

    .line 59
    iput-object p4, p0, Lo/ul;->g:Lo/ul$Activity;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 1

    .line 195
    sget-object v0, Lo/sU;->b:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lo/sU;->e:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lo/ul$ActionBar;)V
    .locals 0

    invoke-static {p0}, Lo/ul;->d(Lo/ul$ActionBar;)V

    return-void
.end method

.method private static synthetic b(Lo/sE;Ljava/lang/String;J)Lo/rc;
    .locals 8

    .line 110
    invoke-interface {p0}, Lo/sE;->Y()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lo/rc;

    invoke-interface {p0}, Lo/sE;->x()[B

    move-result-object v3

    invoke-interface {p0}, Lo/sE;->ae()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 112
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lo/rc;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    .line 113
    invoke-interface {p0}, Lo/sE;->Y()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/rc;->a([B)V

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lo/rc;

    invoke-interface {p0}, Lo/sE;->x()[B

    move-result-object v3

    invoke-interface {p0}, Lo/sE;->V()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-interface {p0}, Lo/sE;->T()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p0}, Lo/sE;->al()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lo/rc;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;JLo/sE;Lo/ul$ActionBar;)V
    .locals 3

    .line 109
    new-instance v0, Lo/uo;

    invoke-direct {v0, p4, p1, p2, p3}, Lo/uo;-><init>(Lo/sE;Ljava/lang/String;J)V

    .line 121
    invoke-interface {p4}, Lo/sE;->Y()[B

    move-result-object p1

    const/4 p4, 0x0

    const/4 v1, 0x1

    const-string v2, "NetflixDrmSessionManager"

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, p4

    const-string p4, "acquiring offline license for %s"

    invoke-static {v2, p4, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    iget-object p1, p0, Lo/ul;->g:Lo/ul$Activity;

    invoke-interface {p1, p2, p3}, Lo/ul$Activity;->a(J)V

    .line 124
    iget-object p1, p0, Lo/ul;->h:Lo/ri;

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lo/ul;->e:Lo/uk;

    invoke-interface {p1}, Lo/uk;->c()Lo/ri;

    move-result-object p1

    iput-object p1, p0, Lo/ul;->h:Lo/ri;

    .line 127
    :cond_0
    iget-object p1, p0, Lo/ul;->h:Lo/ri;

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 129
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p4

    const-string p2, "acquiring streaming license for %s"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iget-object p1, p0, Lo/ul;->c:Lo/ri;

    .line 133
    :goto_0
    invoke-virtual {p5, p1, v0}, Lo/ul$ActionBar;->e(Lo/ri;Lo/ul$TaskDescription;)V

    return-void
.end method

.method static synthetic b(Lo/ul$ActionBar;)V
    .locals 0

    invoke-static {p0}, Lo/ul;->c(Lo/ul$ActionBar;)V

    return-void
.end method

.method static synthetic b(Lo/ul;)V
    .locals 0

    invoke-direct {p0}, Lo/ul;->d()V

    return-void
.end method

.method private c()Lo/ul$ActionBar;
    .locals 6

    .line 220
    iget-object v0, p0, Lo/ul;->a:Ljava/util/Map;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lo/ul;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ul$ActionBar;

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v3}, Lo/ul$ActionBar;->h()I

    move-result v4

    invoke-virtual {v2}, Lo/ul$ActionBar;->h()I

    move-result v5

    if-le v4, v5, :cond_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    .line 226
    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic c(Lo/ul$ActionBar;)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lo/ul$ActionBar;->b()V

    return-void
.end method

.method static synthetic d(Lo/sE;Ljava/lang/String;J)Lo/rc;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lo/ul;->b(Lo/sE;Ljava/lang/String;J)Lo/rc;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d()V
    .locals 9

    .line 138
    iget-object v0, p0, Lo/ul;->a:Ljava/util/Map;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lo/ul;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ul$ActionBar;

    const-string v3, "NetflixDrmSessionManager"

    const-string v4, "releasing DRM session for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 140
    invoke-static {v2}, Lo/ul$ActionBar;->c(Lo/ul$ActionBar;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    invoke-virtual {v2}, Lo/ul$ActionBar;->a()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v1, p0, Lo/ul;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lo/ul;->h:Lo/ri;

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0}, Lo/ri;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 144
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic d(Ljava/lang/String;JLo/sE;Lo/ul$ActionBar;)V
    .locals 0

    .line 83
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lo/ul;->b(Ljava/lang/String;JLo/sE;Lo/ul$ActionBar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p5, p1}, Lo/ul$ActionBar;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic d(Lo/ul$ActionBar;)V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lo/ul$ActionBar;->c()V

    return-void
.end method

.method static synthetic d(Lo/ul;Ljava/lang/String;JLo/sE;Lo/ul$ActionBar;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lo/ul;->d(Ljava/lang/String;JLo/sE;Lo/ul$ActionBar;)V

    return-void
.end method


# virtual methods
.method public a()Lo/rn;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object v0, p0, Lo/ul;->a:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lo/ul;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ul$ActionBar;

    .line 99
    invoke-static {v2}, Lo/ul$ActionBar;->e(Lo/ul$ActionBar;)Lo/rn;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {v2}, Lo/ul$ActionBar;->e(Lo/ul$ActionBar;)Lo/rn;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 103
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p2}, Lo/ul;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lo/ul;->a:Ljava/util/Map;

    monitor-enter p2

    .line 177
    :try_start_0
    iget-object v0, p0, Lo/ul;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ul$ActionBar;

    if-eqz p1, :cond_1

    const-string v0, "NetflixDrmSessionManager"

    const-string v1, "exoplayer acquiring DRM session for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 179
    invoke-static {p1}, Lo/ul$ActionBar;->c(Lo/ul$ActionBar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    invoke-virtual {p1}, Lo/ul$ActionBar;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lo/ul;->b:Landroid/os/Handler;

    new-instance v1, Lo/uq;

    invoke-direct {v1, p1}, Lo/uq;-><init>(Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_0
    monitor-exit p2

    return-object p1

    .line 186
    :cond_1
    new-instance p1, Lo/ul$ActionBar;

    iget-object v1, p0, Lo/ul;->d:Landroid/os/Handler;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lo/ul;->g:Lo/ul$Activity;

    sget-object v5, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/ul$ActionBar;-><init>(Landroid/os/Handler;JLo/ul$Activity;Lcom/netflix/mediaclient/service/player/StreamProfileType;)V

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DRM not configured for playable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/ul$ActionBar;->e(Ljava/lang/Throwable;)V

    .line 188
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 190
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/ul;->b:Landroid/os/Handler;

    new-instance v1, Lo/um;

    invoke-direct {v1, p0}, Lo/um;-><init>(Lo/ul;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 167
    sget-object v0, Lo/sU;->b:Ljava/util/UUID;

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/sU;->e:Ljava/util/UUID;

    .line 169
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()I
    .locals 2

    .line 153
    invoke-direct {p0}, Lo/ul;->c()Lo/ul$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lo/ul$ActionBar;->e(Lo/ul$ActionBar;)Lo/rn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {v0}, Lo/ul$ActionBar;->e(Lo/ul$ActionBar;)Lo/rn;

    move-result-object v0

    invoke-interface {v0}, Lo/rn;->v()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;Lo/sE;)V
    .locals 13

    .line 63
    invoke-interface {p2}, Lo/sE;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-interface {p2}, Lo/sE;->x()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-interface {p2}, Lo/sE;->s()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 69
    iget-object v1, p0, Lo/ul;->a:Ljava/util/Map;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lo/ul;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ul$ActionBar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_1

    .line 72
    new-instance v12, Lo/ul$ActionBar;

    iget-object v3, p0, Lo/ul;->d:Landroid/os/Handler;

    iget-object v6, p0, Lo/ul;->g:Lo/ul$Activity;

    invoke-interface {p2}, Lo/sE;->Z()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v7

    move-object v2, v12

    move-wide v4, v8

    invoke-direct/range {v2 .. v7}, Lo/ul$ActionBar;-><init>(Landroid/os/Handler;JLo/ul$Activity;Lcom/netflix/mediaclient/service/player/StreamProfileType;)V

    .line 73
    iget-object v2, p0, Lo/ul;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v11, [Ljava/lang/Object;

    .line 79
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "NetflixDrmSessionManager"

    const-string v2, "preparing DRM session for %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    iget-object v0, p0, Lo/ul;->b:Landroid/os/Handler;

    new-instance v1, Lo/un;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, v8

    move-object v7, p2

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lo/un;-><init>(Lo/ul;Ljava/lang/String;JLo/sE;Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :try_start_1
    const-string p1, "NetflixDrmSessionManager"

    const-string p2, "already found DRM session for %s. not opening new one"

    new-array v0, v11, [Ljava/lang/Object;

    .line 75
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 205
    instance-of v0, p1, Lo/ul$ActionBar;

    if-eqz v0, :cond_1

    .line 206
    check-cast p1, Lo/ul$ActionBar;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 207
    invoke-static {p1}, Lo/ul$ActionBar;->c(Lo/ul$ActionBar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "NetflixDrmSessionManager"

    const-string v2, "exoplayer releasing DRM session for %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    invoke-virtual {p1}, Lo/ul$ActionBar;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lo/ul;->b:Landroid/os/Handler;

    new-instance v1, Lo/ur;

    invoke-direct {v1, p1}, Lo/ur;-><init>(Lo/ul$ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DRM session not correct Netflix type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
