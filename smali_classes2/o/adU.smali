.class public Lo/adU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adU$Activity;
    }
.end annotation


# static fields
.field private static final a:Lo/adU$Activity;

.field public static final b:Ljava/util/UUID;

.field private static c:Ljava/lang/String; = "MediaDrmUtils"

.field private static d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/lang/String;

.field private static j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->WIDEVINE_SCHEME:Ljava/util/UUID;

    sput-object v0, Lo/adU;->b:Ljava/util/UUID;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lo/adU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Lo/adU$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/adU$Activity;-><init>(Lo/adU$5;)V

    sput-object v0, Lo/adU;->a:Lo/adU$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1041
    :cond_0
    sget-object v1, Lo/adU$5;->b:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return-object v0

    .line 1043
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object p0

    .line 1042
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object p0
.end method

.method public static a(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;)V
    .locals 3

    .line 868
    sget-object v0, Lo/LegacyErrorStrings;->w:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-eq p0, v0, :cond_0

    return-void

    .line 872
    :cond_0
    invoke-static {}, Lo/qZ;->c()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 876
    :cond_1
    invoke-static {}, Lo/adk;->g()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 880
    :cond_2
    const-class p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    invoke-static {p0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    if-eqz p0, :cond_4

    .line 882
    sget-object v0, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 883
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cG:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p0, p1, v0, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 885
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cI:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p0, p1, v0, v2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static a(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 389
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    const-string v1, "Forcing L3 security level..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "securityLevel"

    const-string v1, "L3"

    .line 390
    invoke-interface {p0, v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object p0, Lo/adU;->a:Lo/adU$Activity;

    invoke-virtual {p0}, Lo/adU$Activity;->b()V

    return-void

    .line 386
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDrm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[B)V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 119
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->b(Lo/adU$Activity;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "nf_disable_widevine_l3_v3"

    const/4 v1, 0x0

    .line 186
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Lo/ds;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 580
    :cond_0
    invoke-interface {p1}, Lo/ds;->h()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-interface {p1}, Lo/ds;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 585
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "Cached ESN is same as existing ESN"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 588
    :cond_1
    sget-object v3, Lo/adU;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p0

    aput-object p1, v1, v2

    const-string p0, "Cached ESN %s is NOT same as existing ESN: %s"

    invoke-static {v3, p0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :cond_2
    if-nez v0, :cond_3

    .line 594
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "We do NOT have old ESN, new installation..."

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_3
    invoke-static {}, Lo/adU;->l()V

    .line 599
    sget-object p1, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-nez p1, :cond_4

    return p0

    .line 603
    :cond_4
    sget-object p1, Lo/adU;->g:Ljava/lang/String;

    invoke-static {p1}, Lo/adU;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 604
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "Previous DRM is legacy, ESN is changed"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 608
    :cond_5
    sget-object p1, Lo/adU;->a:Lo/adU$Activity;

    invoke-virtual {p1}, Lo/adU$Activity;->e()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lo/adU;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 610
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "Widevine System ID changed, ESN is changed"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 615
    :cond_6
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "Widevine System ID is NOT changed, verify if security level is changed"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object p1, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v0, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne p1, v0, :cond_7

    .line 618
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p0

    const-string v0, "Same crypto provider %s. No change!"

    invoke-static {p1, v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0

    .line 621
    :cond_7
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p0

    sget-object p0, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Crypto provider is changed from %s to %s"

    invoke-static {p1, p0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lo/cz;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 6

    const-class v0, Lo/adU;

    monitor-enter v0

    .line 252
    :try_start_0
    invoke-static {}, Lo/adU;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "getCryptoProvider: Widevine is NOT supported on this device."

    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 259
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lo/cz;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const-string v2, "Widevine L1 is enabled, check if we failed before"

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {p0}, Lo/adU;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const-string v2, "Widevine L1 was whitelisted, but it failed on this device, see fallback option."

    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lo/adU;->i()V

    goto :goto_0

    .line 271
    :cond_1
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const-string v2, "Widevine L1 did not failed on this device and L1 was whitelisted, check if device really supports L1. PlayerRequiredAdaptivePlayback : %b"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    invoke-static {}, Lo/adU;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    invoke-static {p1}, Lo/adU;->b(Lo/cz;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 276
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "getCryptoProvider:Widevine L3 will be used, keeping on already used Widevine L3."

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 280
    :cond_2
    :try_start_2
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "getCryptoProvider:Widevine L1 will be used"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 285
    :cond_3
    :try_start_3
    invoke-static {}, Lo/adU;->i()V

    .line 286
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const-string v2, "getCryptoProvider:Widevine L1 is not supported on device or it has problem in playback, go for fallback"

    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_4
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const-string v2, "Widevine L1 is NOT enabled, see fallback option."

    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    invoke-static {p0}, Lo/adU;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 296
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "Widevine L3 failed on this device, fallback to MGK."

    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    :cond_5
    invoke-static {p1}, Lo/adU;->c(Lo/cz;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 301
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "getCryptoProvider: for kitkat: Widevine L3"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 304
    :cond_6
    :try_start_4
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string p1, "getCryptoProvider: use legacy crypto because KK device can not support L3!"

    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_1
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 522
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "systemId"

    .line 525
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo/ds;)Ljava/lang/String;
    .locals 11

    const-string v0, "Failed to close opened crypto session!"

    const-string v1, "Failed to close MediaDrm. It should NOT happen."

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1008
    :try_start_0
    invoke-static {v3, v2, p0}, Lo/adU;->d(ILcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1009
    :try_start_1
    sget-object v4, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {p0, v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1010
    :try_start_2
    sget-object v6, Lo/dc;->g:[B

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    invoke-interface/range {v4 .. v9}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v4

    .line 1011
    invoke-interface {v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lo/adU;->b([B)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v10, :cond_0

    .line 1019
    :try_start_3
    invoke-interface {p0, v10}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 1021
    sget-object v5, Lo/adU;->c:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v0, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1025
    :cond_0
    :goto_0
    :try_start_4
    invoke-interface {p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 1027
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catchall_2
    move-exception v4

    goto :goto_1

    :catchall_3
    move-exception v4

    move-object v10, v2

    goto :goto_1

    :catchall_4
    move-exception v4

    move-object p0, v2

    move-object v10, p0

    .line 1014
    :goto_1
    :try_start_5
    sget-object v5, Lo/adU;->c:Ljava/lang/String;

    const-string v6, "Failed to get CAD challenge"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz p0, :cond_2

    if-eqz v10, :cond_1

    .line 1019
    :try_start_6
    invoke-interface {p0, v10}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v4

    .line 1021
    sget-object v5, Lo/adU;->c:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v0, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1025
    :cond_1
    :goto_2
    :try_start_7
    invoke-interface {p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception p0

    .line 1027
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_3
    return-object v2

    :catchall_7
    move-exception v2

    if-eqz p0, :cond_4

    if-eqz v10, :cond_3

    .line 1019
    :try_start_8
    invoke-interface {p0, v10}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v4

    .line 1021
    sget-object v5, Lo/adU;->c:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v0, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1025
    :cond_3
    :goto_4
    :try_start_9
    invoke-interface {p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception p0

    .line 1027
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1030
    :cond_4
    :goto_5
    throw v2
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "[null]"

    return-object p0

    .line 473
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string p0, "[empty]"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    .line 476
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 635
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-virtual {v0}, Lo/adU$Activity;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_drm_system_id"

    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v0, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_drm_crypto_provider"

    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 631
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->e(Lo/adU$Activity;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lo/cz;)Z
    .locals 3

    .line 1067
    invoke-static {p0}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 1068
    invoke-static {p1}, Lo/adU;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    move-result-object p1

    .line 1069
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v0, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1071
    invoke-static {p2}, Lo/adU;->d(Lo/cz;)Z

    move-result p0

    return p0

    .line 1073
    :cond_0
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "Limit to SD content for playable: %s"

    invoke-static {p1, p0, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method public static b(Lo/cz;)Z
    .locals 3

    .line 316
    invoke-interface {p0}, Lo/cz;->j()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 317
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string v1, "Device should be on L3, we should not end here"

    invoke-static {p0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 321
    :cond_0
    invoke-static {}, Lo/adU;->l()V

    .line 322
    sget-object p0, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne p0, v1, :cond_1

    .line 323
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string v1, "Previous crypto was L3, by configuration L1 is enabled, keep L3."

    invoke-static {p0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 327
    :cond_1
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Previous crypto was %s, by configuration L1 is enabled, go for L1."

    invoke-static {p0, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method

.method public static c(Landroid/media/MediaDrm;Ljava/lang/String;I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 985
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 986
    sget-object v3, Lo/adU;->c:Ljava/lang/String;

    const-string v4, "MediaDrm string property: %s = \'%s\'"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v3, v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 987
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 990
    sget-object v3, Lo/adU;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Failed to get MediaDrm int property: %s. Returning default value: %d"

    invoke-static {v3, p0, p1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return p2
.end method

.method public static c(Landroid/media/MediaDrm;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 965
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 966
    sget-object v3, Lo/adU;->c:Ljava/lang/String;

    const-string v4, "MediaDrm string property: %s = \'%s\'"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-static {v3, v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 969
    sget-object v3, Lo/adU;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    const-string p1, "Failed to get MediaDrm string property: %s. Returning default value: %s"

    invoke-static {v3, p0, p1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object p2
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "disable_widevine"

    .line 642
    invoke-static {p0, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "nf_disable_widevine_l3_v3"

    .line 643
    invoke-static {p0, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V
    .locals 0

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 104
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->e(Lo/adU$Activity;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Lo/ds;)Z
    .locals 0

    .line 569
    invoke-static {p0, p1}, Lo/adU;->a(Landroid/content/Context;Lo/ds;)Z

    move-result p1

    .line 570
    invoke-static {p0}, Lo/adU;->b(Landroid/content/Context;)V

    return p1
.end method

.method public static c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Z
    .locals 2

    .line 1051
    invoke-static {p0}, Lo/aev;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 1052
    invoke-static {p1}, Lo/adU;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    move-result-object p0

    .line 1053
    sget-object p1, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p0, v0, p2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->a(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Z

    move-result p0

    return p0
.end method

.method private static c(Lo/cz;)Z
    .locals 6

    .line 139
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->c(Lo/adU$Activity;)Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "MediaDrm system ID is: %s"

    invoke-static {v1, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const-string v1, "4266"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 149
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0}, Lo/cz;->P()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Device is using Widevine L3 4266! Valid %b per config"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    invoke-interface {p0}, Lo/cz;->P()Z

    move-result p0

    return p0

    .line 152
    :cond_1
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "Device is using Widevine L3 4266! Not valid, config is missing! Go with allowed."

    invoke-static {p0, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 157
    :cond_2
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    .line 161
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-le p0, v0, :cond_4

    return v4

    .line 165
    :cond_4
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "Valid System ID."

    invoke-static {p0, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static d(ILcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 1

    .line 428
    sget-object v0, Lo/adU;->b:Ljava/util/UUID;

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createInstance(ILjava/util/UUID;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p0, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->setOnEventListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V

    .line 433
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getMediaDrmType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 434
    invoke-static {p0}, Lo/adU;->d(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V

    goto :goto_0

    .line 436
    :cond_1
    sget-object p1, Lo/adU;->c:Ljava/lang/String;

    const-string p2, "Creating an instance of Embedded Widevine, no need to set L3."

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    invoke-static {p0}, Lo/adU;->j(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Ljava/lang/Long;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 2

    .line 418
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result p2

    .line 419
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lo/adU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 420
    :cond_0
    invoke-static {p2, p1, p3}, Lo/adU;->d(ILcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 2

    .line 409
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result v0

    .line 410
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lo/adU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 411
    :cond_0
    invoke-static {v0, p1, p2}, Lo/adU;->d(ILcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V
    .locals 2

    .line 371
    invoke-static {}, Lo/dd;->c()Lo/dc;

    move-result-object v0

    invoke-interface {v0}, Lo/dc;->x_()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    .line 372
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v0, v1, :cond_0

    .line 373
    invoke-static {p0}, Lo/adU;->a(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V

    :cond_0
    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;)V
    .locals 3

    .line 1086
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "disable_widevine"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1087
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "disable_widevine_l1_reason"

    invoke-static {v0, v1, p0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 2

    .line 342
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "flo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "deb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "nf_drm_acckeymap"

    .line 669
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "nf_msl_store_json"

    .line 675
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 676
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;Lo/cz;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 652
    invoke-interface {p1}, Lo/cz;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 656
    :cond_0
    invoke-static {p0}, Lo/adU;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 538
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FORCE_LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "M_PLUS_MGK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Lo/cz;)Z
    .locals 1

    .line 1079
    invoke-static {}, Lo/adU;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lo/cz;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()I
    .locals 1

    .line 91
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-virtual {v0}, Lo/adU$Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-virtual {v0}, Lo/adU$Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->a:I

    return v0

    .line 96
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->a:I

    return v0

    .line 99
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    iget v0, v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->a:I

    return v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;Lo/cz;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 2

    const-class v0, Lo/adU;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-nez v1, :cond_0

    .line 219
    invoke-static {p0, p1}, Lo/adU;->b(Landroid/content/Context;Lo/cz;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object p0

    sput-object p0, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 221
    :cond_0
    sget-object p0, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;)V
    .locals 1

    .line 1095
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;->e:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;

    if-ne p0, v0, :cond_0

    .line 1096
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;->e:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;

    invoke-static {p0}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;)V

    goto :goto_0

    .line 1097
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;->b:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager$CryptoFailbackCause;

    if-ne p0, v0, :cond_1

    .line 1098
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;->d:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;

    invoke-static {p0}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineL1ForcedFallbackReason;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "disable_widevine"

    const/4 v1, 0x0

    .line 176
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)[B
    .locals 2

    if-nez p0, :cond_0

    .line 503
    sget-object p0, Lo/adU;->c:Ljava/lang/String;

    const-string v0, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {p0, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "deviceUniqueId"

    .line 506
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 512
    :cond_1
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    const-string v1, "MediaDrm device ID is null! It should NOT happen!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static f()Z
    .locals 3

    .line 849
    sget-object v0, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 853
    :cond_0
    invoke-static {}, Lo/qZ;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 857
    :cond_1
    invoke-static {}, Lo/adk;->g()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static g()Z
    .locals 3

    .line 895
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->b(Lo/adU$Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 899
    :cond_0
    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->c(Lo/adU$Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SYSTEMID_GET_FAILURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lo/adU;->a:Lo/adU$Activity;

    invoke-static {v0}, Lo/adU$Activity;->d(Lo/adU$Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SECURITY_LEVEL_GET_FAILURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 904
    :cond_1
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    const-string v2, "Widevine is not supported."

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 900
    :cond_2
    :goto_0
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    const-string v1, "isPluginInBadState:: we failed to retrieve property, plugin is in bad state."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static h()Z
    .locals 2

    .line 945
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 951
    :cond_0
    const-class v0, Lo/bY;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bY;

    sget-object v1, Lo/bY$TaskDescription;->d:Lo/bY$TaskDescription;

    invoke-interface {v0, v1}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v0

    return v0
.end method

.method private static i()V
    .locals 5

    .line 226
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lo/Plugin;->f()Z

    move-result v0

    .line 227
    sget-object v1, Lo/adU;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "App started by user: %b"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Background launch:: Widevine L1 not supported by device even if it should be!"

    .line 231
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 232
    invoke-interface {v0}, Lo/SpinnerAdapter;->a()V

    .line 234
    invoke-static {}, Lo/hn;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedWhenExpectedException;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedWhenExpectedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static j(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V
    .locals 2

    .line 396
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v0, "appId"

    .line 398
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lo/CarrierIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "WidevineMediaDrm"

    const-string v1, "ignore exceptions"

    .line 400
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static final l()V
    .locals 5

    .line 546
    sget-object v0, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    const-string v1, "This should not be called twice, we already found previous DRM!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "nf_drm_system_id"

    .line 552
    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lo/adU;->g:Ljava/lang/String;

    const-string v2, "nf_drm_crypto_provider"

    .line 553
    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    sput-object v0, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 555
    sget-object v0, Lo/adU;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lo/adU;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const-string v4, "N/A"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lo/adU;->j:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v4

    :cond_2
    aput-object v4, v1, v2

    const-string v2, "currentDrmSystem: %s, previousDrmSystem: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
