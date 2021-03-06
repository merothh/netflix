.class public Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;


# static fields
.field public static CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String; = null

.field private static final ENABLE_PROGRESS_IN_CODE:Z = true

.field public static EXTRA_ERROR_CODE:Ljava/lang/String;

.field public static EXTRA_ERROR_MESSAGE:Ljava/lang/String;

.field public static EXTRA_PLAYABLE_ID:Ljava/lang/String;

.field public static STOP_DOWNLOAD_ERROR:Ljava/lang/String;

.field public static STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

.field public static STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppSessionId:Ljava/lang/String;

.field mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

.field private mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

.field private final mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

.field private mPdsDownloadSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;",
            ">;"
        }
    .end annotation
.end field

.field mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mSessionsLock:Ljava/lang/Object;

.field private mUserSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.PDSLOG_DOWNLOAD"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LICENSE_ERROR"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MANIFEST_EXPIRED"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DOWNLOAD_ERROR"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    const-string/jumbo v0, "errorCode"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_CODE:Ljava/lang/String;

    const-string/jumbo v0, "errorMessage"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_ERROR_MESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "playableId"

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->EXTRA_PLAYABLE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$4;-><init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mAppSessionId:Ljava/lang/String;

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getUserSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mUserSessionId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->registerReceiver(Landroid/content/Context;)V

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "inited download session manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->handleProgressMessage(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->handleDownloadComplete(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private addDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 7

    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mAppSessionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mUserSessionId:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;)V

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setDownloadContext(Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setLinks(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->addDownloadSession(Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V

    return-object v0
.end method

.method private dumpSessions()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "is mPdsDownloadSessionsEmpty :%b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "keySet : %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private fetchPersistedManifest(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setManifestFetchInProgress(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$3;-><init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;->requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V

    return-void
.end method

.method private getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    goto :goto_0
.end method

.method private getDownloadSessionForEvent(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;
    .locals 6

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDxId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->createDownloadContext(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDownloadComplete(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V
    .locals 1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendDownloadCompleteMessage()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->removeDownloadSession(Ljava/lang/String;)V

    return-void
.end method

.method private handleProgressMessage(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setPaused(Z)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendDownloadResumeMessage()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendDownloadProgressMessage(I)V

    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Register receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_ERROR:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_MANIFEST_EXPIRED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->STOP_DOWNLOAD_LICENSE_ERROR:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->CATEGORY_NF_PDSLOG_DOWNLOAD:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private removeAllDownloadSessions()V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeDownloadSession(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->mPdsDownloadEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->unregisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public isListenerDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->removeAllDownloadSessions()V

    return-void
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->getDownloadSessionForEvent(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->needToFetchManifest()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$2;-><init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->fetchPersistedManifest(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->handleDownloadComplete(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V

    goto :goto_0
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    return-void
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->getDownloadSession(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$5;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$StopReason:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " onDownloadStopped stopReason: %s, no-op"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->setPaused(Z)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendDownloadPauseMessage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->removeDownloadSession(Ljava/lang/String;)V

    return-void
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->getDownloadSessionForEvent(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->needToFetchManifest()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;-><init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;I)V

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->fetchPersistedManifest(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->handleProgressMessage(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;I)V

    goto :goto_1
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public setOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->removeDownloadSession(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDownloadOfFirstTimeOfflineManifest playableId: %s, oxid: %s, dxid: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->createDownloadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;->sendStartDownloadMessage()V

    return-void
.end method
