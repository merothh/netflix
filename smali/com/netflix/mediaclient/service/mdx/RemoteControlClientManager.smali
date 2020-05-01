.class public final Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;
.super Ljava/lang/Object;
.source "RemoteControlClientManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final KEEP_EXISTING_METADATA_VALUE:Z = false

.field private static final TAG:Ljava/lang/String; = "RemoteControlClientManager"


# instance fields
.field private mAlbumTitle:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBoxart:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private mInTransition:Z

.field private mIsPostPlay:Z

.field private mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mPaused:Z

.field private mPrevBoxart:Landroid/graphics/Bitmap;

.field private final mProxyReceiverComponentName:Landroid/content/ComponentName;

.field private final mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRemoteControlVisible:Z

.field private mTargetUUID:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mediaButtonIntentHandler:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$1;-><init>(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mediaButtonIntentHandler:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Creating RemoteControlClientManager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$MediaButtonIntentHandlerProxy;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mProxyReceiverComponentName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->createRemoteControlClient()Landroid/media/RemoteControlClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.mediaclient.service.mdx.MediaButtonIntentHandlerProxy"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mediaButtonIntentHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mIsPostPlay:Z

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mTargetUUID:Ljava/lang/String;

    return-object v0
.end method

.method private createRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Creating RemoteControlClient"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mProxyReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Landroid/media/RemoteControlClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method private static setupButtons(Landroid/media/RemoteControlClient;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0
.end method

.method private shouldNotBeExecuted()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlLockScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlVisible:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Lock screen is visible and lock screen is NOT enabled! Remove it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateMetadata()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Updating RemoteControlClient metadata"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mBoxart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mediaButtonIntentHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public isInTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mInTransition:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mPaused:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RemoteControlClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange gained "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RemoteControlClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange lost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->shouldNotBeExecuted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mPrevBoxart:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "setBoxart - handling new bitmap"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mPrevBoxart:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mBoxart:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->updateMetadata()V

    goto :goto_0
.end method

.method public setState(ZZZ)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->shouldNotBeExecuted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "RemoteControlClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState, paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", transitioning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", inPostPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mPaused:Z

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mInTransition:Z

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mIsPostPlay:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mPaused:Z

    if-nez v0, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0
.end method

.method public setTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->shouldNotBeExecuted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RemoteControlClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTitles - title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAlbumTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->updateMetadata()V

    goto :goto_0
.end method

.method public start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteControlClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start, isPostPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", episodeDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlLockScreenEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlVisible:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mProxyReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Can\'t gain audio focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mIsPostPlay:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mTargetUUID:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setupButtons(Landroid/media/RemoteControlClient;Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "stop - clearing all state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlVisible:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlVisible:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mProxyReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    :cond_0
    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mAlbumTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mPrevBoxart:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mBoxart:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mIsPostPlay:Z

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mEpisodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->mTargetUUID:Ljava/lang/String;

    return-void
.end method
