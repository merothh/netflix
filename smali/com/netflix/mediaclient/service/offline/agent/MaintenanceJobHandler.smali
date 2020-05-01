.class Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;
.super Ljava/lang/Object;
.source "MaintenanceJobHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_MaintenanceJob"


# instance fields
.field private final mActivePlayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;

.field private final mDeletedPlaybles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;",
            ">;"
        }
    .end annotation
.end field

.field private final mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

.field private final mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

.field private mPendingDeleteCount:I

.field private mPendingMaintenanceCount:I

.field private final mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Ljava/util/List;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;",
            "Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;",
            ">;",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingMaintenanceCount:I

    .line 33
    iput v1, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingDeleteCount:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    .line 41
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mCallback:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->getAllDeletedPlayable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mDeletedPlaybles:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mActivePlayables:Ljava/util/List;

    .line 45
    return-void
.end method

.method private processPendingDelete()V
    .locals 5

    .prologue
    .line 81
    const-string/jumbo v0, "nf_MaintenanceJob"

    const-string/jumbo v1, "processPendingDelete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mDeletedPlaybles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 84
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->DeleteComplete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removeFromDeletedList(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 92
    const-string/jumbo v0, "nf_MaintenanceJob"

    const-string/jumbo v2, "processPendingDelete not calling onAllMaintenanceJobDone"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingDeleteCount:I

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    .line 95
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    const/4 v3, 0x0

    invoke-static {v2, v0, p0, v3}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->deleteLicense(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableDeleteCompleteCallBack;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mCallback:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;->onAllMaintenanceJobDone()V

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->syncActiveLicensesToServer()V

    .line 103
    return-void
.end method

.method private syncActiveLicensesToServer()V
    .locals 4

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mActivePlayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mActivePlayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 108
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getOfflineViewablePersistentData()Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mLicenseData:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData$LicenseData;->mLinkDeactivate:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineLicenseManager:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;->trySyncActiveLicensesToServer(Ljava/util/List;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onDeleteCompleted(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "nf_MaintenanceJob"

    const-string/jumbo v1, "onDeleteCompleted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mOfflineRegistry:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removeFromDeletedList(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 65
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingDeleteCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingDeleteCount:I

    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingDeleteCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mCallback:Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler$MaintenanceJobHandlerCallback;->onAllMaintenanceJobDone()V

    .line 69
    :cond_0
    return-void
.end method

.method public onMaintenanceJobDone(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "nf_MaintenanceJob"

    const-string/jumbo v1, "onMaintenanceJobDone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingMaintenanceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingMaintenanceCount:I

    .line 76
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingMaintenanceCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->processPendingDelete()V

    .line 79
    :cond_0
    return-void
.end method

.method startMaintenanceJob()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "nf_MaintenanceJob"

    const-string/jumbo v1, "startMaintenanceJob"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mActivePlayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mActivePlayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mPendingMaintenanceCount:I

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mActivePlayables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;

    .line 52
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->doMaintenanceWork(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableMaintenanceCallBack;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->processPendingDelete()V

    .line 57
    :cond_1
    return-void
.end method

.method terminate()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    return-void
.end method
