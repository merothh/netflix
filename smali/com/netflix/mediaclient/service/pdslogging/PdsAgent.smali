.class public Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "PdsAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;
.implements Lcom/netflix/mediaclient/service/pdslogging/PdsPlayInterface;


# instance fields
.field private mDownloadManager:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

.field mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;)Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->mDownloadManager:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    return-object v0
.end method

.method private registerWithOfflineAgent()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$1;-><init>(Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method private unregisterWithOfflineAgent()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent$2;-><init>(Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method


# virtual methods
.method public createPdsPlaySession(Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/ui/common/PlayContext;)Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySessionInterface;
    .locals 11

    .prologue
    .line 68
    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getUserSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/pdslogging/PdsPlaySession;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 68
    return-object v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->unregisterWithOfflineAgent()V

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->mDownloadManager:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->destroy(Landroid/content/Context;)V

    .line 39
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 40
    return-void
.end method

.method protected doInit()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->mOfflinePlaybackInterface:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->mDownloadManager:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->registerWithOfflineAgent()V

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 33
    return-void
.end method

.method public onDownloadOfFirstTimeOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsAgent;->mDownloadManager:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->setOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method
