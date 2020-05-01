.class final Lcom/netflix/mediaclient/util/MdxUtils$2;
.super Ljava/lang/Object;
.source "MdxUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v1

    .line 421
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 422
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 423
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->stop(Z)V

    .line 425
    invoke-interface {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IMdx;->switchPlaybackFromTarget(Ljava/lang/String;I)V

    .line 426
    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->notifyPlayingBackLocal()V

    .line 428
    :cond_0
    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    .line 429
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/cast/CastAgent;

    .line 430
    if-eqz v0, :cond_1

    .line 431
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastAgent;->disconnectFromCast()V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "For Coppola - delegating MDX disconnect icon click to PlayerFragment"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->handleMDXIconClick()V

    .line 441
    :cond_3
    return-void
.end method
