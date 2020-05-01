.class public Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "MDXControllerActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final ACTION_FINISH_ACTIVITY:Ljava/lang/String; = "com.netflix.mediaclient.ui.player.MDXControllerActivity.ACTION_FINISH"

.field private static final EXTRA_SHOW_MDX_CONTROLLER:Ljava/lang/String; = "extra_shoe_mdx_controller"


# instance fields
.field private final finishReceiver:Landroid/content/BroadcastReceiver;

.field private postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field private postPlayViewGroup:Landroid/view/View;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;-><init>(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->showEpisodesData()V

    return-void
.end method

.method private static createIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static finishMDXController(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.player.MDXControllerActivity.ACTION_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupPostplayViews()V
    .locals 1

    const v0, 0x7f0f02a5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayViewGroup:Landroid/view/View;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory;->createForMdx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    return-void
.end method

.method private setupReceivers()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.netflix.mediaclient.ui.player.MDXControllerActivity.ACTION_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private showEpisodesData()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayViewGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayViewGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_is_episode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_1
    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_EPISODE_DETAILS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_EPISODE_DETAILS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1
.end method

.method public static showMDXController(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;ZLcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->createIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_get_details_is_episode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "extra_shoe_mdx_controller"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;-><init>(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V

    return-object v0
.end method

.method protected getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->mdxPlayback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->handleBack()V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setResult(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setupPostplayViews()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->showEpisodesData()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setupPostplayViews()V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logDeviceDensity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->pauseReporting(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPause()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->unregisterReceivers()V

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setupReceivers()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStop()V

    return-void
.end method

.method protected showMDXPostPlayOnResume()V
    .locals 0

    return-void
.end method
