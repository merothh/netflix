.class public final Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final TAG:Ljava/lang/String; = "NetflixMediaDrmFactory"

.field private static sInAppUsage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sInAppWidevineMediaDrm:Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createInAppWidevineMediaDrmInstance(Lo/ds;)Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppWidevineMediaDrm:Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 81
    sget-object p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const-string v1, "NetflixMediaDrmFactory"

    const-string v4, "InApp Widevine instance was already created, return it. Currently used %d times."

    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    sget-object p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppWidevineMediaDrm:Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    .line 86
    :cond_0
    :try_start_1
    invoke-static {}, Lo/adU;->h()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    :try_start_2
    const-string v1, "com.netflix.widevine.EmbeddedWidevineMediaDrm"

    .line 89
    invoke-interface {p0}, Lo/ds;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo/aeo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    sput-object p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppWidevineMediaDrm:Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    .line 90
    sget-object p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppUsage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const-string v1, "NetflixMediaDrmFactory"

    const-string v5, "InApp Widevine instance created first time, return it. Currently used %d times."

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    sget-object p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->sInAppWidevineMediaDrm:Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    const-string v1, "NetflixMediaDrmFactory"

    const-string v2, "Failed to instantiate InApp Widewine, report and default to platform."

    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    invoke-static {v1, p0, v2, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    sget-object p0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v1, "InApp Widevine is installed, but we failed to instantiate it!"

    invoke-virtual {p0, v1}, Lcom/netflix/cl/ExtLogger;->logError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    monitor-exit v0

    return-object v4

    :cond_1
    :try_start_4
    const-string p0, "NetflixMediaDrmFactory"

    const-string v1, "InApp Widevine was requested, but it is not installed!"

    .line 99
    invoke-static {p0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object p0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v1, "InApp Widevine was requested, but it is not installed!"

    invoke-virtual {p0, v1}, Lcom/netflix/cl/ExtLogger;->logError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    monitor-exit v0

    return-object v4

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createInstance(ILjava/util/UUID;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 2

    const-class v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    const-string p0, "NetflixMediaDrmFactory"

    const-string p2, ""

    .line 53
    invoke-static {p0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createPlatformMediaDrm(Ljava/util/UUID;)Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p0, :cond_2

    .line 59
    :try_start_1
    invoke-static {p2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createInAppWidevineMediaDrmInstance(Lo/ds;)Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "NetflixMediaDrmFactory"

    const-string p2, "InApp Widevine is available."

    .line 62
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    const-string p0, "NetflixMediaDrmFactory"

    const-string p2, "InApp Widevine is NOT available"

    .line 66
    invoke-static {p0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createPlatformMediaDrm(Ljava/util/UUID;)Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    if-nez p0, :cond_3

    .line 72
    :try_start_3
    invoke-static {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createPlatformMediaDrm(Ljava/util/UUID;)Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 74
    :cond_3
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We do NOT support media drm type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static createPlatformMediaDrm(Ljava/util/UUID;)Lcom/netflix/mediaclient/drm/PlatformMediaDrm;
    .locals 2

    .line 114
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;-><init>(Ljava/util/UUID;)V

    return-object v0

    .line 116
    :cond_0
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;-><init>(Ljava/util/UUID;)V

    return-object v0

    .line 118
    :cond_1
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    .line 119
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;-><init>(Ljava/util/UUID;)V

    return-object v0

    .line 121
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi28;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public static final declared-synchronized isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
