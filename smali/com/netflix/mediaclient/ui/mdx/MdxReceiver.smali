.class public final Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdxReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Receiver created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private cancelPin()V
    .locals 2

    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "cancelPin on PIN_VERIFICATION_NOT_REQUIRED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->dismissPinVerification()V

    return-void
.end method

.method private hideMdxController(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_HIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishMDXController(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showFirstEpisodeInNextSeries(Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;)V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    iget v2, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    new-instance v4, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;

    const-string/jumbo v5, "nf_mdx"

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_0
    return-void
.end method

.method private showMdxController(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "postplayState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInCountdown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->showNextEpisodeInSeries(Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->showFirstEpisodeInNextSeries(Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->showMDXController(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;ZLcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method

.method private showNextEpisodeInSeries(Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoIdsPostplay()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;

    const-string/jumbo v4, "nf_mdx"

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v3, v4, v5}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :cond_0
    return-void
.end method

.method private verifyPinAndNotify(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf_pin"

    const-string/jumbo v2, "verifyPinAndNotify on PIN_VERIFICATION_SHOW"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 2

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Get filter called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_NOT_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MDX broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAddMdxToMenu()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Ignore MDX broadcast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "MDX is NOT ready, invalidate action bar"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "MDX is ready, invalidate action bar"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "MDX is ready, got target list update, invalidate action bar"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateTargetSelectionDialog()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "MDX PIN show dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->verifyPinAndNotify(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_NOT_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "MDX cancel pin dialog - verified on other controller"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->cancelPin()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->showMdxController(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->abortBroadcast()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->hideMdxController(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->hideMdxController(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "MDX is connected, invalidate action bar to finish animation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
