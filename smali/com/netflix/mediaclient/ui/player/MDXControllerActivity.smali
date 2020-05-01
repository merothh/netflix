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

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$1;-><init>(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->showEpisodesData()V

    return-void
.end method

.method private static createIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static finishMDXController(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.player.MDXControllerActivity.ACTION_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method private setupPostplayViews()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f0f02a5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayViewGroup:Landroid/view/View;

    .line 149
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory;->createForMdx(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    .line 150
    return-void
.end method

.method private setupReceivers()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    const-string/jumbo v1, "com.netflix.mediaclient.ui.player.MDXControllerActivity.ACTION_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    :cond_0
    return-void
.end method

.method private showEpisodesData()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayViewGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayViewGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_is_episode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_1
    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 200
    :cond_1
    return-void

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_EPISODE_DETAILS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_get_details_EPISODE_DETAILS"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->videoId:Ljava/lang/String;

    goto :goto_0

    .line 197
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1
.end method

.method public static showMDXController(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;ZLcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->createIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v1, "extra_get_details_is_episode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "extra_shoe_mdx_controller"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;-><init>(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V

    return-object v0
.end method

.method protected getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->mdxPlayback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->postPlayController:Lcom/netflix/mediaclient/ui/player/PostPlay;

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->handleBack()V

    .line 120
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setResult(I)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 171
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setContentView(I)V

    .line 173
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setupPostplayViews()V

    .line 174
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->showEpisodesData()V

    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setupPostplayViews()V

    .line 104
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logDeviceDensity(Landroid/app/Activity;)V

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 112
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->pauseReporting(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPause()V

    .line 219
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->unregisterReceivers()V

    .line 220
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finish()V

    .line 223
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 212
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->setupReceivers()V

    .line 213
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStart()V

    .line 206
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onStop()V

    .line 229
    return-void
.end method

.method protected showMDXPostPlayOnResume()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
