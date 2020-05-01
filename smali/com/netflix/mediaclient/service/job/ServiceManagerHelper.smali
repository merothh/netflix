.class Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;
.super Ljava/lang/Object;
.source "ServiceManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_job_svcmgr_helper"


# instance fields
.field private final mManagerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private final mServiceManagerHelperListener:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

.field private mState:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->WaitingForResult:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mState:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$1;-><init>(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mManagerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    .line 103
    sget-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->WaitingForResult:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mState:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mManagerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 105
    iput-object p2, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManagerHelperListener:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mState:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManagerHelperListener:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerHelperListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->release()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 83
    :cond_0
    return-void
.end method

.method public isServiceManagerFailed()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mState:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceManagerReady()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mState:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerReady:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->startJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 89
    :cond_0
    return-void
.end method

.method public stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->stopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 95
    :cond_0
    return-void
.end method
