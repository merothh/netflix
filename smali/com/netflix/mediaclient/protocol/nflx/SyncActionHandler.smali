.class Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;
.source "SyncActionHandler.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "targetid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->extractJustUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Sync action is required, MDX agent is null. This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "NflxHandler"

    const-string/jumbo v3, "Sync action is required, target is available, sync"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setDialUuidAsCurrentTarget(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set dial uuid as current target was success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Sync action is required, target not available, do nothing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method
