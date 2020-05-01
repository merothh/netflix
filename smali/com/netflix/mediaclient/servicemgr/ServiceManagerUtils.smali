.class public Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;
.super Ljava/lang/Object;
.source "ServiceManagerUtils.java"


# static fields
.field public static PREFETCH_PRIORITY_CW:I = 0x0

.field public static PREFETCH_PRIORITY_DEFAULT:I = 0x0

.field public static PREFETCH_PRIORITY_DETIAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ServiceManagerUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->PREFETCH_PRIORITY_CW:I

    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->PREFETCH_PRIORITY_DETIAL:I

    .line 21
    const/16 v0, 0x64

    sput v0, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->PREFETCH_PRIORITY_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castPrefetchAndCacheManifestIfEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 63
    const-string/jumbo v0, "ServiceManagerUtils"

    const-string/jumbo v1, "manager is null - can\'t prefetch manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    const-string/jumbo v0, "ServiceManagerUtils"

    const-string/jumbo v1, "no connectivity - can\'t prefetch manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableToStream()Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const-string/jumbo v0, "ServiceManagerUtils"

    const-string/jumbo v1, "video is not available for streaming - can\'t prefetch manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDisableCastFaststart()Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->attemptMdxPrefetch(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V

    .line 85
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-nez v0, :cond_5

    .line 86
    const-string/jumbo v0, "ServiceManagerUtils"

    const-string/jumbo v1, "player is null - can\'t cache manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_4
    const-string/jumbo v0, "ServiceManagerUtils"

    const-string/jumbo v1, "CastFaststart is disabled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isManifestCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    const-string/jumbo v1, "ServiceManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule manifest pre-fectiion for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_6
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 98
    const/4 v1, 0x1

    new-array v8, v1, [Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;

    .line 99
    const/4 v9, 0x0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;-><init>(JJJ)V

    aput-object v1, v8, v9

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPreviewContentEnabled()Z

    move-result v2

    .line 104
    new-instance v3, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2, v1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Z)V

    .line 105
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getManifestCache()Lcom/netflix/mediaclient/servicemgr/IManifestCache;

    move-result-object v0

    invoke-interface {v0, v8, v3}, Lcom/netflix/mediaclient/servicemgr/IManifestCache;->cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/javabridge/invoke/media/AuthorizationParams;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string/jumbo v1, "ServiceManagerUtils"

    const-string/jumbo v2, "schedule manifest pre-fectiion gets invalid playableId, ignored"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 24
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-string/jumbo v0, "ServiceManagerUtils"

    const-string/jumbo v1, "Service manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string/jumbo v0, ""

    .line 51
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v3

    .line 32
    if-eqz v3, :cond_1

    array-length v0, v3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-nez v2, :cond_3

    .line 33
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const-string/jumbo v0, "ServiceManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No devices, current device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 39
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_6

    .line 40
    aget-object v0, v3, v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    const-string/jumbo v4, "ServiceManagerUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Friendly name "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v0, v3, v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " found for current device "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_4
    aget-object v0, v3, v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 39
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 48
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    const-string/jumbo v0, "ServiceManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No match found for current device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_7
    const-string/jumbo v0, ""

    goto/16 :goto_0
.end method

.method public static isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 1

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
