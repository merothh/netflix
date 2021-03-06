.class public Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;
.source "LoLoMoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
        ">;"
    }
.end annotation


# static fields
.field public static final HOME_LOLOMO_GENRE_ID:Ljava/lang/String; = "lolomo"

.field protected static final TAG:Ljava/lang/String; = "LoLoMoAdapter"


# instance fields
.field private requestId:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 1

    const-string/jumbo v0, "lolomo"

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->requestId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->handlePrefetchComplete(Z)V

    return-void
.end method

.method private handlePrefetchComplete(Z)V
    .locals 2

    const-string/jumbo v0, "LoLoMoAdapter"

    const-string/jumbo v1, "handlePrefetchComplete()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->logCurrentThreadName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshData()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onLolomoPrefetchComplete(Z)V

    return-void
.end method


# virtual methods
.method protected isGenreList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    return-void
.end method

.method public refreshData()V
    .locals 14

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LoLoMoAdapter"

    const-string/jumbo v1, "Service man is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "LoLoMoAdapter"

    const-string/jumbo v3, "Prefetching lolomo..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->requestId:J

    iget-wide v12, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->requestId:J

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadExtraCharacterLeaves()Z

    move-result v7

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v8

    new-instance v10, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;

    const-string/jumbo v3, "LoLoMoAdapter"

    invoke-direct {v10, p0, v3, v12, v13}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;Ljava/lang/String;J)V

    move v3, v1

    move v5, v1

    move v9, v1

    invoke-interface/range {v0 .. v10}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->initLoadingState()V

    goto :goto_0
.end method

.method protected updateLoMoData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->updateLoMoData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/Coppola2Utils;->checkAndLogLolomo(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
