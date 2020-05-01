.class public Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;
.super Ljava/lang/Object;
.source "OfflineAgentListenerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offlineAgent"


# instance fields
.field private mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

.field private final mOfflineAgentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->removeDeadListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->takePartialWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->releasePartialWakeLock()V

    return-void
.end method

.method private releasePartialWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->releasePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V

    :cond_0
    return-void
.end method

.method private removeDeadListeners()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;->isListenerDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "nf_offlineAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "...removing deadListener... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private takePartialWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixPowerManager;->acquirePartialWakeLockFor(Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOfflineAgentListener before listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$11;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$11;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public agentDestroying()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->releasePartialWakeLock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-void
.end method

.method public onAllPlayablesDeleted(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAllDeleted status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$7;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateRequestResponse(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadCompleted(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadCompleted playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadResumedByUser(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadResumedByUser playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$5;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$5;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadStopped(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadStopped playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendError status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$8;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$8;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLicenseRefreshDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLicenseRefreshDone status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$9;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$9;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOfflinePlayableDeleted(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadDeleted playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$6;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOfflinePlayableProgress(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayWindowRenewDone(Landroid/os/Handler;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPlayWindowRenewDone status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$10;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeOfflineAgentListener(Landroid/os/Handler;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOfflineAgentListener before listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mOfflineAgentListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper$12;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setNetflixPowerManager(Lcom/netflix/mediaclient/service/NetflixPowerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListenerHelper;->mNetflixPowerManager:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    return-void
.end method
