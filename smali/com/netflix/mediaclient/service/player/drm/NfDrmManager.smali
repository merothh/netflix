.class public Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;
.super Ljava/lang/Object;
.source "NfDrmManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;
.implements Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface;
.implements Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;


# static fields
.field private static final DEFAULT_DRM_SESSION_COUNT:I = 0x8

.field private static final DRM_PREFETCH_SESSION_LIFE_MS:J = 0x6ddd00L

.field private static final MAX_DRM_SESSION_USED:I = 0x14

.field static final MSG_ERROR:I = 0x0

.field static final MSG_KEYS:I = 0x2

.field static final MSG_KEYS_LDL:I = 0x3

.field static final MSG_KEYS_OFFLINE:I = 0x4

.field static final MSG_PROVISION:I = 0x1

.field private static final RESERVED_DRM_SESSION_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfPlayerDrmManager"


# instance fields
.field private mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private mContext:Landroid/content/Context;

.field private mDeviceHasLowDrmResource:Z

.field private mDisableLicensePreftech:Z

.field private mDrmSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

.field private mMaxDrmSesionCount:I

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mWaitToPrepareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/Triple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Looper;Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x5

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMainHandler:Landroid/os/Handler;

    .line 71
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 72
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$1;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    .line 134
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->getNewMediaDrmInstance(Landroid/media/MediaDrm$OnEventListener;)Landroid/media/MediaDrm;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    const-string/jumbo v4, "maxNumberOfSessions"

    invoke-virtual {v0, v4}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 145
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    const-string/jumbo v4, "NfPlayerDrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxNumberOfSessions is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move v4, v0

    .line 155
    :goto_1
    if-nez p5, :cond_2

    if-ge v4, v3, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDisableLicensePreftech:Z

    .line 156
    if-eqz p5, :cond_7

    .line 157
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v5, "license prefetch is disabled by config"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, -0x3

    const/16 v4, 0x14

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    .line 163
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    if-gt v0, v3, :cond_8

    :goto_4
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDeviceHasLowDrmResource:Z

    .line 164
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->dumpMediaDrmProperty(Landroid/media/MediaDrm;)V

    .line 167
    :cond_4
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :goto_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const-string/jumbo v4, "NfPlayerDrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to instantiate MediaDrm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    :catch_1
    move-exception v0

    move v0, v3

    .line 149
    :goto_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    const-string/jumbo v4, "NfPlayerDrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "default maxNumberOfSessions is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v4, v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 155
    goto :goto_2

    .line 158
    :cond_7
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDisableLicensePreftech:Z

    if-eqz v0, :cond_3

    .line 159
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v5, "license prefetch is disabled due to insufficient session"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move v2, v1

    .line 163
    goto :goto_4

    .line 148
    :catch_2
    move-exception v4

    goto :goto_6

    .line 135
    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDeviceHasLowDrmResource:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;)Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mManifestCache:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->removeSession(Ljava/lang/Long;)V

    return-void
.end method

.method private clearAll(Z)V
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v1, "NfPlayerDrmManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "exception ones in use"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$3;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void

    .line 252
    :cond_1
    const-string/jumbo v0, "all"

    goto :goto_0
.end method

.method static dumpKeyStatus(Landroid/media/MediaDrm;[B)V
    .locals 1

    .prologue
    .line 503
    const-string/jumbo v0, "NfPlayerDrmManager"

    invoke-static {v0, p0, p1}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->dumpKeyStatus(Ljava/lang/String;Landroid/media/MediaDrm;[B)V

    .line 504
    return-void
.end method

.method private static dumpMediaDrmProperty(Landroid/media/MediaDrm;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 475
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vendor"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "version"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "deviceUniqueId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "algorithms"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "securityLevel"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "systemId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "privacyMode"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "sessionSharing"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "usageReportingSupport"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "appId"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "hdcpLevel"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "maxHdcpLevel"

    aput-object v3, v1, v2

    .line 490
    const-string/jumbo v2, "NfPlayerDrmManager"

    const-string/jumbo v3, "===== MediaDrm property ======"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 493
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    const-string/jumbo v5, "NfPlayerDrmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :catch_0
    move-exception v4

    .line 496
    const-string/jumbo v4, "NfPlayerDrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 499
    :cond_0
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "===== End of MediaDrm property ======"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method private getAssocaitedPlayContext(J)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    .line 239
    iget-object v1, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v0, v0, Lcom/netflix/mediaclient/util/Triple;->third:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 243
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    goto :goto_0
.end method

.method private purgeCachedSessions(I)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "purgeCachedSessions has  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", target is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v9, v0, [Lcom/netflix/mediaclient/service/player/drm/CacheEntry;

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v8

    .line 402
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 405
    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 406
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getPriority()I

    move-result v3

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionAgeInMs()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;-><init>(Ljava/lang/Long;IJZ)V

    .line 407
    add-int/lit8 v0, v7, 0x1

    aput-object v1, v9, v7

    move v7, v0

    .line 408
    goto :goto_0

    .line 409
    :cond_1
    if-le v7, p1, :cond_3

    .line 410
    invoke-static {v9, v8, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 412
    :goto_1
    sub-int v0, v7, p1

    if-ge v8, v0, :cond_3

    .line 413
    aget-object v0, v9, v8

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 414
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->removeSession(Ljava/lang/Long;)V

    .line 415
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    const-string/jumbo v1, "NfPlayerDrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "purgeCachedSessions remove a cached session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 421
    :cond_3
    return-void
.end method

.method private purgeStaleSessions()V
    .locals 10

    .prologue
    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v8, v1, [Lcom/netflix/mediaclient/service/player/drm/CacheEntry;

    .line 368
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v0

    .line 369
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 373
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionAgeInMs()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 375
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 376
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const-string/jumbo v1, "NfPlayerDrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "purgeStaleSessions remove a older session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_1
    move v7, v0

    .line 391
    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 382
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 383
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    const-string/jumbo v1, "NfPlayerDrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "purgeStaleSessions remove a closed session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_1

    .line 387
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 388
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getPriority()I

    move-result v3

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionAgeInMs()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getInUse()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/drm/CacheEntry;-><init>(Ljava/lang/Long;IJZ)V

    .line 389
    add-int/lit8 v0, v7, 0x1

    aput-object v1, v8, v7

    goto :goto_1

    .line 393
    :cond_2
    return-void

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method private removeSession(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 285
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->close()V

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$4;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll(Z)V

    .line 249
    return-void
.end method

.method public getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
    .locals 4

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->purgeStaleSessions()V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 178
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMaxDrmSesionCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->purgeCachedSessions(I)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mMediaDrm:Landroid/media/MediaDrm;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 181
    invoke-static {v0, v1, v2, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->newWidevineDrmSession(Landroid/os/Handler;Landroid/media/MediaDrm;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 189
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getDrmSessionWithSessionId([B)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;
    .locals 4

    .prologue
    .line 301
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 304
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    .line 306
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;->getSessionId()[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    monitor-exit v1

    .line 312
    :goto_0
    return-object v0

    .line 311
    :cond_1
    monitor-exit v1

    .line 312
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 3

    .prologue
    .line 317
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->logByteArrayRaw(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 318
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 320
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_KEY_EXPIRED - error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 324
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_KEY_REQUIRED - to renew"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$5;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    .line 341
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_SESSION_RECLAIMED."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$6;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 352
    :cond_2
    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    .line 354
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_VENDOR_DEFINED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 357
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_PROVISION_REQUIRED -  shouldn\'t happen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_4
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "EVENT_UNKNOWN"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onManifestAvailable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 425
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getMovieId()Ljava/lang/Long;

    move-result-object v8

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDrmSessionMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManifestAvailable, however there is already a session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 433
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getAssocaitedPlayContext(J)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v6

    .line 434
    invoke-interface {v6}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v1

    .line 437
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 443
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getDrmHeader()[B

    move-result-object v5

    new-instance v7, Lcom/netflix/mediaclient/service/player/SessionParams;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mContext:Landroid/content/Context;

    .line 444
    invoke-static {v10}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v10

    invoke-direct {v7, v9, v6, v10}, Lcom/netflix/mediaclient/service/player/SessionParams;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/SessionParams;->getParams()Lorg/json/JSONObject;

    move-result-object v6

    .line 445
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLicenseLinkJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;[BLorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 447
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->getDrmSession(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/drm/NfDrmSession;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 449
    :cond_3
    if-eqz v3, :cond_5

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/Triple;

    .line 451
    iget-object v1, v0, Lcom/netflix/mediaclient/util/Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1, v8}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWaitToPrepareList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManifestAvailable, remove from waiting list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t create drm session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onManifestError(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 468
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string/jumbo v0, "NfPlayerDrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManifestError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    return-void
.end method

.method public onUiHidden()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll(Z)V

    .line 298
    return-void
.end method

.method public prepare(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/Triple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mDisableLicensePreftech:Z

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager$2;-><init>(Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManager;->clearAll()V

    .line 293
    return-void
.end method
