.class public Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
.super Landroid/content/BroadcastReceiver;
.source "RemotePlayer.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;


# static fields
.field private static final SHOW_MINI_PLAYER_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_BACK_TIME_SECONDS:I = -0x1e

.field private static final STATUS_AUTO_ADVANCE:Ljava/lang/String; = "AUTO_ADVANCE"

.field private static final STATUS_END_PLAYBACK:Ljava/lang/String; = "END_PLAYBACK"

.field private static final STATUS_PAUSE:Ljava/lang/String; = "PAUSE"

.field private static final STATUS_PLAY:Ljava/lang/String; = "PLAY"

.field private static final STATUS_PLAYING:Ljava/lang/String; = "PLAYING"

.field private static final STATUS_PREPAUSE:Ljava/lang/String; = "prepause"

.field private static final STATUS_PREPLAY:Ljava/lang/String; = "preplay"

.field private static final STATUS_PRESEEK:Ljava/lang/String; = "preseek"

.field private static final STATUS_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field private static final STATUS_STALLED:Ljava/lang/String; = "STALLED"

.field private static final STATUS_STOP:Ljava/lang/String; = "STOP"

.field private static final TAG:Ljava/lang/String; = "mdx_remote_player"


# instance fields
.field private final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

.field private final mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

.field private mCapabilities:Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

.field private mDuration:I

.field private final mMdxEventFactory:Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

.field private mPositionInSeconds:I

.field private mReady:Z

.field private mReceiverIsRegistered:Z

.field private mRequestForLanguageDataSent:Z

.field private mState:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeControllEnabled:Z

.field private userDidPlayPause:Z

.field private userDidSeek:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->SHOW_MINI_PLAYER_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mMdxEventFactory:Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

    .line 101
    const-string/jumbo v0, "PLAY"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Remote player created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    if-nez p2, :cond_1

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "owner can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 161
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->registerReceiver()V

    .line 163
    return-void
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_AUDIOSUB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGCANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGSHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADATA_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 179
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReceiverIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v1, "mdx_remote_player"

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetLanguageData()V
    .locals 2

    .prologue
    .line 657
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Resetting language data..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mRequestForLanguageDataSent:Z

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    .line 660
    return-void
.end method

.method private skip(I)V
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SKIP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_1

    .line 296
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 299
    :cond_1
    const-string/jumbo v0, "PLAY"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 300
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReceiverIsRegistered:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReceiverIsRegistered:Z

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string/jumbo v1, "mdx_remote_player"

    const-string/jumbo v2, "Failed to unregister "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->cancelDialog()V

    .line 476
    return-void
.end method

.method public changeLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 218
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Language is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_2

    .line 223
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Language selected audio is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_3

    .line 228
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Language selected subtitle is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 234
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETAUDIOSUB"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v1, "audioTrackId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v1, "subtitleTrackId"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->unregisterReceiver()V

    .line 409
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->error(ILjava/lang/String;)V

    .line 555
    return-void
.end method

.method public getCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCapabilities:Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mDuration:I

    return v0
.end method

.method public getLanguage()Lcom/netflix/mediaclient/media/Language;
    .locals 3

    .prologue
    .line 493
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLanguage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method public getPositionInSeconds()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mPositionInSeconds:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 417
    const-string/jumbo v0, "PAUSE"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "prepause"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 413
    const-string/jumbo v0, "PLAYING"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "preplay"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReady:Z

    return v0
.end method

.method public isStalled()Z
    .locals 2

    .prologue
    .line 421
    const-string/jumbo v0, "PLAY"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PROGRESS"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "STALLED"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 425
    const-string/jumbo v0, "STOP"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVolumeControllEnabled()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolumeControllEnabled:Z

    return v0
.end method

.method public mdxStateChanged(Z)V
    .locals 1

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mReady:Z

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->mdxStateChanged(Z)V

    .line 535
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 448
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 450
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mMdxEventFactory:Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->getHandler(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_1

    .line 455
    invoke-interface {v0, p0, p2}, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;->handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Event not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 276
    const-string/jumbo v0, "PAUSE"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    .line 278
    return-void
.end method

.method public play(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;Z)Z

    move-result v0

    .line 246
    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    .line 251
    const-string/jumbo v0, "preplay"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    goto :goto_0
.end method

.method public requestAudioAndSubtitleData()V
    .locals 2

    .prologue
    .line 642
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Sending request for subtitle/audio data..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETAUDIOSUB"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mRequestForLanguageDataSent:Z

    .line 645
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    const-string/jumbo v0, "PLAYING"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    .line 271
    return-void
.end method

.method public seek(I)V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Seek to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SEEK"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 314
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 317
    :cond_1
    const-string/jumbo v0, "PLAY"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public sendDialogResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_DIALOGRESP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_1

    .line 332
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 335
    :cond_1
    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .prologue
    const/16 v0, 0x64

    .line 344
    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    if-gtz v1, :cond_1

    if-gtz p1, :cond_1

    .line 345
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Volume is already less than 0 and it can not be turned down more. Do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    if-lt v1, v0, :cond_2

    if-lt p1, v0, :cond_2

    .line 350
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Volume is already more than 100 and it can not be turned up more. Do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_2
    if-le p1, v0, :cond_5

    .line 358
    :goto_1
    if-gez v0, :cond_3

    .line 359
    const/4 v0, 0x0

    .line 363
    :cond_3
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    .line 365
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_4
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    .line 371
    const-string/jumbo v1, "volume"

    iget v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_5
    move v0, p1

    goto :goto_1
.end method

.method public shouldIgnorePlayPauseUpdates()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidSeek:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldIgnoreVideoPositionUpdates()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidSeek:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V

    .line 526
    return-void
.end method

.method public skipBackThirtySeconds()V
    .locals 1

    .prologue
    .line 281
    const/16 v0, -0x1e

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->skip(I)V

    .line 282
    return-void
.end method

.method public stop(Z)V
    .locals 2

    .prologue
    .line 256
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "stop sending..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "stop sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string/jumbo v0, "STOP"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 264
    :cond_0
    return-void
.end method

.method public sync()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETCAPABILITY"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_GETSTATE"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    return-void
.end method

.method public targetListChanged()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->targetListChanged()V

    .line 564
    return-void
.end method

.method public updateDuration(I)V
    .locals 1

    .prologue
    .line 542
    iput p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mDuration:I

    .line 543
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateDuration(I)V

    .line 545
    return-void
.end method

.method public updateLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .prologue
    .line 513
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLanguage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCachedLanguage:Lcom/netflix/mediaclient/media/Language;

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 518
    return-void
.end method

.method public updateState(Ljava/lang/String;II)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 572
    const-string/jumbo v0, "END_PLAYBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "DESTROY: end of playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->resetLanguageData()V

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->endOfPlayback()V

    .line 631
    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mState:Ljava/lang/String;

    .line 632
    iput p2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mPositionInSeconds:I

    .line 633
    iput p3, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mVolume:I

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->SHOW_MINI_PLAYER_STATES:Ljava/util/Set;

    const-string/jumbo v1, "END_PLAYBACK"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_0
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;

    .line 638
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isPaused()Z

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->isStalled()Z

    move-result v3

    iget v5, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mDuration:I

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->SHOW_MINI_PLAYER_STATES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;-><init>(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;ZZIIIZLcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;)V

    .line 637
    invoke-interface {v9, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateUi(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V

    .line 639
    :cond_1
    :goto_1
    return-void

    .line 577
    :cond_2
    const-string/jumbo v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 579
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->shouldIgnorePlayPauseUpdates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PLAYING: Do nothing, user just did trickplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 582
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mRequestForLanguageDataSent:Z

    if-nez v0, :cond_4

    .line 583
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    goto :goto_0

    .line 585
    :cond_4
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Video is playing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_5
    const-string/jumbo v0, "PAUSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 590
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->shouldIgnorePlayPauseUpdates()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 591
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PAUSE: Do nothing, user just did trickplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    :cond_6
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Paused..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 597
    :cond_7
    const-string/jumbo v0, "prepause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 599
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PREPAUSE: Start listening to play/pause from target again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    goto :goto_1

    .line 603
    :cond_8
    const-string/jumbo v0, "preplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 605
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PREPLAY: Start listening to play/pause from target again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidPlayPause:Z

    goto :goto_1

    .line 609
    :cond_9
    const-string/jumbo v0, "preseek"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 611
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "PRESEEK: Start listening to video position updates from target again"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->userDidSeek:Z

    goto/16 :goto_1

    .line 615
    :cond_a
    const-string/jumbo v0, "PLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 616
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Play, do nothing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 618
    :cond_b
    const-string/jumbo v0, "PROGRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 619
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Progress..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 621
    :cond_c
    const-string/jumbo v0, "STALLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 622
    const-string/jumbo v0, "mdx_remote_player"

    const-string/jumbo v1, "Stalled..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 625
    :cond_d
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const-string/jumbo v0, "mdx_remote_player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not supported state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Do nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V
    .locals 1

    .prologue
    .line 504
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCapabilities:Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V

    .line 506
    return-void
.end method

.method public updateVideoMetadata()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->mCallback:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;->updateVideoMetadata()V

    .line 654
    return-void
.end method
