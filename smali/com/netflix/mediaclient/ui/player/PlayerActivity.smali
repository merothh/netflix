.class public Lcom/netflix/mediaclient/ui/player/PlayerActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field static final EXTRA_GET_DETAILS_EPISODE_DETAILS:Ljava/lang/String; = "extra_get_details_EPISODE_DETAILS"

.field static final EXTRA_GET_DETAILS_IS_EPISODE:Ljava/lang/String; = "extra_get_details_is_episode"

.field static final EXTRA_GET_DETAILS_PLAY_CONTEXT_BUNDLE:Ljava/lang/String; = "extra_get_details_play_context_bundle"

.field static final EXTRA_GET_DETAILS_VIDEO_ID:Ljava/lang/String; = "extra_get_details_video_id"

.field static final EXTRA_GET_DETAILS_VIDEO_TYPE:Ljava/lang/String; = "extra_get_details_video_type"

.field public static final INTENT_PLAY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_PLAY"

.field private static final TAG:Ljava/lang/String; = "PlayerActivity"


# instance fields
.field private playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method public static createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "PlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Performing \'cold start\' - activity itself will get details for videoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "extra_get_details_video_type"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-interface {p3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->playContextToBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "extra_get_details_play_context_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method public static getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 2

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "Got null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/Asset;->fromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseVideoId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    const-string/jumbo v0, "playableid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "playableid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    const-string/jumbo v0, "extra_get_details_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const-string/jumbo v0, "extra_get_details_video_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    const-string/jumbo v0, "PlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t parse video id from intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldResumePreviousPlay(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 167
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->parseVideoId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->parseVideoId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected cleanupAndExit()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "extra_get_details_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string/jumbo v1, "extra_get_details_play_context_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "extra_get_details_video_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra_get_details_video_type"

    .line 136
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v2, v3, v1, v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createPlayerFragment(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 141
    :goto_0
    const-string/jumbo v1, "SeamlessMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "SeamlessMode"

    const-string/jumbo v3, "SeamlessMode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    :cond_0
    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "BookmarkSecondsFromStart"

    const-string/jumbo v3, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createPlayerFragment(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    goto :goto_0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f030061

    return v0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    return-object v0
.end method

.method public getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method protected hasEmbeddedToolbar()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->invalidateOptionsMenu()V

    .line 287
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "Check if MDX status is changed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setTargetSelection()V

    .line 292
    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method protected lockScreenOrientation()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->shouldResumePreviousPlay(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "Got same video ID - resuming the playback..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, "SPY-8343 - PlayerActivity received onNewIntent() prior to onCreate() - skipping to avoid crash"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v0, "extra_get_details_video_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string/jumbo v0, "extra_get_details_play_context_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const-string/jumbo v2, "extra_get_details_video_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra_get_details_video_type"

    .line 117
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setExternalBundle(Landroid/os/Bundle;)V

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getAssetFromIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setExternalBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onWindowFocusChanged(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->performUpAction()V

    .line 218
    :cond_0
    return-void
.end method

.method protected shouldAttachToolbar()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public showMdxInMenu()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 158
    return-void
.end method
