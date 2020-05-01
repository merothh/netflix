.class public Lcom/netflix/mediaclient/service/mdx/MediaSessionController;
.super Ljava/lang/Object;
.source "MediaSessionController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MDX_VOLUME_MULTIPLIER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "nf_media_session_controller"


# instance fields
.field private mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsPostPlay:Z

.field private mIsVolumeControlSupported:Z

.field private mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mPostponedState:I

.field private mRemoteControlVisible:Z

.field private mTitle:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mTitle:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    .line 52
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "Initializing MediaSessionController"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 56
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "MediaSession was not destroyed correctly! Destroying it now."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->destroy()V

    .line 62
    :cond_0
    new-instance v0, Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Netflix media session"

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->registerReceiver()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    return p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsVolumeControlSupported:Z

    return p1
.end method

.method private initVolumeProvider()V
    .locals 4

    .prologue
    .line 318
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;

    const/4 v1, 0x2

    const/16 v2, 0xa

    iget v3, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    div-int/lit8 v3, v3, 0xa

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$3;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 348
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->unregisterReceiver()V

    .line 352
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$4;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    return-void
.end method

.method public static sendVolumeUpdateBroadcast(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$Utils;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 226
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    if-eqz v1, :cond_1

    .line 227
    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 231
    :goto_0
    const-wide/16 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 234
    :cond_0
    return-void

    .line 229
    :cond_1
    const-wide/16 v2, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0
.end method

.method private shouldNotBeExecuted()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlLockScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mRemoteControlVisible:Z

    if-eqz v0, :cond_1

    .line 296
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "Lock screen is visible and lock screen is NOT enabled! Remove it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->stopMediaSession()V

    .line 299
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mCapabilitiesReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 307
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->unregisterReceiver()V

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    .line 312
    return-void
.end method

.method public getMediaSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public startMediaSession()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "startMediaSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mRemoteControlVisible:Z

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 141
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsVolumeControlSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->initVolumeProvider()V

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 187
    invoke-virtual {p0, v3, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    .line 188
    return-void
.end method

.method public stopMediaSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    const-string/jumbo v0, "nf_media_session_controller"

    const-string/jumbo v1, "stopMediaSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mRemoteControlVisible:Z

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->setState(I)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 199
    return-void
.end method

.method public updateCurrentVolume(IZ)V
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 257
    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    .line 259
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    if-le v0, v1, :cond_0

    .line 260
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    .line 263
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    if-gez v0, :cond_1

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->shouldNotBeExecuted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    :cond_2
    :goto_0
    return-void

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eqz v0, :cond_5

    .line 272
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    const-string/jumbo v0, "nf_media_session_controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolumeProvider:Landroid/media/VolumeProvider;

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 281
    :cond_5
    if-eqz p2, :cond_2

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mVolume:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->sendVolumeUpdateBroadcast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public updateMetadata(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "nf_media_session_controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMetadata() boxart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 113
    if-nez v1, :cond_2

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 115
    :goto_0
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 116
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 120
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    if-lez v0, :cond_1

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    .line 129
    :cond_1
    return-void

    .line 113
    :cond_2
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    goto :goto_0
.end method

.method public updateMetadata(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "nf_media_session_controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMetadata() title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; isPostPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mTitle:Ljava/lang/String;

    .line 90
    :cond_1
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 93
    if-nez v1, :cond_2

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 95
    :goto_0
    const-string/jumbo v1, "android.media.metadata.TITLE"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 96
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    if-eqz v1, :cond_3

    const v1, 0x7f080199

    .line 97
    :goto_1
    const-string/jumbo v2, "android.media.metadata.ALBUM"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 99
    return-void

    .line 93
    :cond_2
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 96
    :cond_3
    const v1, 0x7f080246

    goto :goto_1
.end method

.method public updateState(ZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 208
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string/jumbo v1, "nf_media_session_controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateState paused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; inPostPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    .line 214
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mIsPostPlay:Z

    if-eqz v1, :cond_1

    .line 215
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->mPostponedState:I

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p1, :cond_2

    .line 220
    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->setState(I)V

    goto :goto_0

    .line 218
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method
