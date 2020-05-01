.class public Lcom/netflix/mediaclient/ui/player/PlayerFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;
.implements Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;


# static fields
.field public static final ASSET_EXTRA:Ljava/lang/String; = "AssetExtra"

.field public static final BOOKMARK_SECONDS_FROM_START_PARAM:Ljava/lang/String; = "BookmarkSecondsFromStart"

.field private static final BROWSE_PLAY_END_MS:I = 0x1d4c0

.field private static final DELAY_POST:I = 0x3e8

.field public static final DETAILS_PLAY_CONTEXT_EXTRA_BUNDLE:Ljava/lang/String; = "VideoDetailsPlaycontextExtraBundle"

.field public static final DETAILS_VIDEO_ID_EXTRA:Ljava/lang/String; = "VideoDetailsIdExtra"

.field public static final DETAILS_VIDEO_TYPE_EXTRA:Ljava/lang/String; = "VideoDetailsTypeExtra"

.field public static final INACTIVITY_TIMEOUT:I = 0x1388

.field private static final INVALID_TRACK_INDEX:I = -0x1

.field private static final MEDIA_ERROR_CODE:Ljava/lang/String; = "Media Error"

.field private static final PAUSE_LOCK_SCREEN_TIMEOUT:I = 0x1d4c0

.field private static final PAUSE_TIMEOUT:J = 0xdbba0L

.field private static final PLAYREADY_CERT_REVOKED:J = 0x71L

.field public static final SEAMLESS_MODE:Ljava/lang/String; = "SeamlessMode"

.field private static final SKIP_DELTA_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "PlayerFragment"

.field public static final TRACK_ID_PREFIX_TAG:Ljava/lang/String; = "TRACK_ID: "

.field private static final VOLUME_TIMEOUT:I = 0x1f4


# instance fields
.field private allowCoppolaAutoplay:Z

.field private final allowScreenLockTimeout:Ljava/lang/Runnable;

.field private final audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final episodesListener:Landroid/view/View$OnClickListener;

.field exitButtonHandler:Ljava/lang/Runnable;

.field private language:Lcom/netflix/mediaclient/media/Language;

.field launched:Z

.field private mActionId12Count:I

.field private mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private final mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

.field private final mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

.field private mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

.field private mExternalBundle:Landroid/os/Bundle;

.field protected mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsAssetReady:Z

.field private mIsBufferingOnPause:Z

.field private mIsListening:Z

.field private mIsLoadingData:Z

.field private mIsSurfaceReady:Z

.field protected mIsTablet:Z

.field private mIsZoomedOut:Z

.field private mMaxStreamsReachedDialogId:Ljava/lang/String;

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

.field private mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

.field private mPlayerBackgrounded:Z

.field private final mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

.field private mPostponedPanelMenu:Landroid/view/Menu;

.field private mReloadOnAudioTrackChange:Z

.field private mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

.field private mRestartPlayback:Z

.field private mRootLayout:Landroid/view/ViewGroup;

.field private mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field private final mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

.field private mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

.field private mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

.field private mWasEndOfBrowsePlayreported:Z

.field private mWidth:I

.field private onBufferingComplete:Z

.field private final onEverySecond:Ljava/lang/Runnable;

.field private pausePlaybackOnPlayerBackgrounded:Z

.field private final pauseTimeout:Ljava/lang/Runnable;

.field private final playPauseListener:Landroid/view/View$OnClickListener;

.field private playPauseListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/ui/player/PlayPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field playWhenBufferingComplete:Z

.field private playedVideoCount:I

.field private postPlayed:Z

.field private reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

.field private secondsFromStart:I

.field private final skipBackListener:Landroid/view/View$OnClickListener;

.field private staticToolbarMenu:Landroid/view/Menu;

.field private final surfaceListener:Landroid/view/SurfaceHolder$Callback;

.field private final surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

.field private final tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

.field private final zoomListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 229
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    .line 230
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    .line 250
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    .line 255
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    .line 261
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    .line 272
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    .line 278
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 345
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    .line 357
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 777
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playWhenBufferingComplete:Z

    .line 973
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    .line 1348
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    .line 1701
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    .line 1722
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->episodesListener:Landroid/view/View$OnClickListener;

    .line 1783
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->zoomListener:Landroid/view/View$OnClickListener;

    .line 1803
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$5;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBackListener:Landroid/view/View$OnClickListener;

    .line 2061
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2408
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .line 2496
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    .line 2652
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    .line 2747
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3105
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    .line 3160
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$15;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    .line 3235
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    .line 3349
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$17;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$17;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3631
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    .line 3729
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->releaseLockOnScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;ZZ)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toBifAjustedProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWasEndOfBrowsePlayreported:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setProgress()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateMetadataIfNeeded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsSurfaceReady:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->completeInitIfReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->removeDialogFragmentIfShown()V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInteractivePostPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->canPlayerBeBackgrounded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->willstartPlaybackInAnotherActivity(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCoppolaSeekbarEnabled(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showEpisodesFrag()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBack()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method private addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 3909
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandler(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v8

    .line 3910
    if-eqz v8, :cond_2

    .line 3912
    invoke-interface {v8}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    .line 3913
    if-nez v1, :cond_0

    .line 3914
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Metadata does not exist, error should not be reported to an user"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    :goto_0
    return v0

    .line 3917
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v7

    move-object v0, p0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportStartPlayEnded(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 3919
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 3920
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3921
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 3923
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3926
    :cond_2
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We decided to ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 3932
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handlePlayReadyRevocation(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3933
    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v7

    move-object v0, p0

    move-object v1, p0

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportStartPlayEnded(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 3934
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playready certificate revocated, do not display error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->finish()V

    move v0, v13

    .line 3957
    :goto_0
    return v0

    .line 3939
    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandler(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    .line 3940
    if-eqz v1, :cond_3

    .line 3942
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v2

    .line 3943
    if-nez v2, :cond_1

    .line 3944
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Metadata does not exist, error should not be reported to an user"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3947
    :cond_1
    sget-object v7, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v8, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v12

    move-object v5, p0

    move-object v6, p0

    move-object v10, v4

    move-object v11, p1

    invoke-direct/range {v5 .. v12}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportStartPlayEnded(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 3949
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 3950
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3951
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    :cond_2
    move v0, v13

    .line 3953
    goto :goto_0

    .line 3956
    :cond_3
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We decided to ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static availableInMyDownloads(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 4156
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 4157
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canPlayerBeBackgrounded()Z
    .locals 2

    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    .line 2731
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->isPlayStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2732
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isBufferingCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2733
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInteractivePostPlay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2734
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayer2(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 2735
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 2736
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isSuspendPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2730
    :goto_0
    return v0

    .line 2736
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelBrowsePlayRunnable()V
    .locals 2

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2491
    :cond_0
    return-void
.end method

.method private completeInitIfReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 726
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsSurfaceReady:Z

    if-nez v0, :cond_1

    .line 727
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface not ready - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    if-nez v0, :cond_2

    .line 732
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Asset not ready - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_3

    .line 737
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Asset is null - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "completeInitIfReady()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 743
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCoppolaSeekbarEnabled(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    if-nez v0, :cond_6

    .line 749
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Autoplayback is turned off - waiting for user/timer to launch it to perform launchPlayback() call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola1ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 754
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launched:Z

    if-eqz v0, :cond_5

    .line 755
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    .line 756
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStopped()V

    .line 760
    :cond_4
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launched:Z

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showLaunchButtons()V

    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    goto/16 :goto_0

    .line 770
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto/16 :goto_0
.end method

.method private continueInitAfterPlayVerify()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 812
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Playback verified - completing init process..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 816
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getTitleForScreen(Lcom/netflix/mediaclient/servicemgr/Asset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTitle(Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 822
    :cond_0
    if-eqz v0, :cond_4

    .line 823
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v0

    .line 827
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v2

    if-nez v2, :cond_2

    .line 828
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setEpisodeSelectorVisibility(Z)V

    .line 831
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayStartIfNeeded()V

    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->loadVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 836
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private createListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 2

    .prologue
    .line 2346
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;-><init>()V

    .line 2347
    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2348
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->playPauseListener:Landroid/view/View$OnClickListener;

    .line 2349
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    .line 2350
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .line 2351
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2352
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    .line 2353
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBackListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->skipBackListener:Landroid/view/View$OnClickListener;

    .line 2354
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->zoomListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->zoomListener:Landroid/view/View$OnClickListener;

    .line 2355
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->episodesListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->episodeSelectorListener:Landroid/view/View$OnClickListener;

    .line 2356
    return-object v0
.end method

.method public static createPlayerFragment(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;-><init>()V

    .line 398
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 399
    return-object v0
.end method

.method public static createPlayerFragment(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;-><init>()V

    .line 412
    invoke-static {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 413
    return-object v0
.end method

.method private doPause(Z)V
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(ZZ)V

    .line 934
    return-void
.end method

.method private doPause(ZZ)V
    .locals 5

    .prologue
    const-wide/32 v2, 0x1d4c0

    const/4 v4, 0x1

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 939
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPause: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isVolumeChangeInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: volume up or down is pressed, do not pause..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isBufferingCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clearPendingUpdates()V

    .line 954
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 958
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    .line 959
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause, release awake clock after 2 minutes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 963
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause() remove reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cancelBrowsePlayRunnable()V

    .line 965
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    goto :goto_0

    .line 966
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isBufferingCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Problems reaching Netflix service. Screen lock needs to be released."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private doSeek(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1034
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 1035
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doSeek: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 1041
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout seek..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    .line 1046
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onSeek()V

    .line 1047
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1048
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==> seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 1051
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 1054
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekTo(IZ)V

    .line 1055
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    .line 1056
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->onSubtitleRemove()V

    .line 1059
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doSeek() - scheduling \"browse_play\" end reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->scheduleBrowsePlayRunnableIfNeeded(Z)V

    goto :goto_0
.end method

.method public static getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    const-string/jumbo v1, "AssetExtra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 454
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 424
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    const-string/jumbo v1, "VideoDetailsIdExtra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v1, "VideoDetailsTypeExtra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v1, "VideoDetailsPlaycontextExtraBundle"

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->playContextToBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 440
    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    .line 441
    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    :cond_0
    return-object v0
.end method

.method private getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1639
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 1640
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getJSonSafely(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 4048
    :try_start_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;->getData()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4052
    :goto_0
    return-object v0

    .line 4049
    :catch_0
    move-exception v0

    .line 4052
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOfflineErrorBuilderOrNullFromWatchState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f08026a

    const v4, 0x7f080267

    const v2, 0x7f080265

    const/4 v3, -0x1

    .line 3963
    .line 3965
    sget-object v5, Lcom/netflix/mediaclient/ui/player/PlayerFragment$21;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$WatchState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v1, v3

    move v2, v3

    .line 3997
    :goto_0
    if-eq v2, v3, :cond_0

    if-ne v1, v3, :cond_2

    .line 4007
    :cond_0
    :goto_1
    return-object v0

    .line 3967
    :pswitch_0
    const v2, 0x7f08027f

    .line 3969
    goto :goto_0

    .line 3972
    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3973
    const v1, 0x7f08025b

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v2

    move v2, v4

    .line 3977
    goto :goto_0

    :pswitch_2
    move v1, v2

    move v2, v4

    .line 3981
    goto :goto_0

    .line 3984
    :pswitch_3
    const v1, 0x7f080266

    move v7, v2

    move v2, v1

    move v1, v7

    .line 3985
    goto :goto_0

    .line 3988
    :pswitch_4
    const v1, 0x7f08026b

    move v7, v2

    move v2, v1

    move v1, v7

    .line 3989
    goto :goto_0

    .line 3992
    :pswitch_5
    const v2, 0x7f080269

    goto :goto_0

    .line 4000
    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4001
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4002
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4003
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const v3, 0x7f0801c0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4004
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    goto :goto_1

    .line 3965
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 1

    .prologue
    .line 4161
    if-eqz p0, :cond_0

    .line 4162
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 4164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    .prologue
    .line 3885
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3886
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v0

    .line 3888
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    goto :goto_0
.end method

.method private getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 3765
    if-nez v0, :cond_0

    .line 3766
    const/4 v0, 0x0

    .line 3768
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    goto :goto_0
.end method

.method private handleControlButtonPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2941
    const/16 v2, 0x60

    if-ne p1, v2, :cond_2

    .line 2942
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2964
    :cond_0
    :goto_0
    return v0

    .line 2945
    :cond_1
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "A button pressed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    .line 2947
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 2948
    goto :goto_0

    .line 2950
    :cond_2
    const/16 v2, 0x15

    if-eq p1, v2, :cond_3

    const/16 v2, 0x66

    if-ne p1, v2, :cond_4

    .line 2951
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v2, v3, :cond_0

    .line 2952
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    .line 2953
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBack()V

    move v0, v1

    .line 2954
    goto :goto_0

    .line 2957
    :cond_4
    const/16 v2, 0x16

    if-eq p1, v2, :cond_5

    const/16 v2, 0x67

    if-ne p1, v2, :cond_0

    .line 2958
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v2, v3, :cond_0

    .line 2959
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    .line 2960
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipForward()V

    move v0, v1

    .line 2961
    goto :goto_0
.end method

.method private handlePlayReadyRevocation(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4031
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    if-nez v0, :cond_0

    .line 4032
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Not action ID error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    :goto_0
    return v4

    .line 4036
    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    .line 4037
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getReasonCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x71

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4038
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playready certificate revocated, we do not have backup player, report an error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4040
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Regular error, handle as popup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3841
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 3843
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3877
    :goto_0
    return-void

    .line 3847
    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 3848
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Error loading video details for video playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080180

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3853
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3854
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Retrieved details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    :cond_3
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3857
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p4, v0, :cond_4

    .line 3858
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    .line 3859
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    .line 3858
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v0

    .line 3862
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 3863
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 3864
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iget v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v3

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 3867
    :cond_4
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 3869
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 3870
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 3875
    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    .line 3876
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->completeInitIfReady()V

    goto/16 :goto_0

    .line 3871
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_5

    .line 3873
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p2, p4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    goto :goto_1
.end method

.method private initSurfaceFixedSize(II)V
    .locals 1

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3088
    :goto_0
    return-void

    .line 3087
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method

.method private isCoppolaWithOldPlayer()Z
    .locals 1

    .prologue
    .line 3280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInteractivePostPlay()Z
    .locals 1

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2742
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2743
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2744
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2741
    :goto_0
    return v0

    .line 2744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOfflinePlayback()Z
    .locals 2

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeamless()Z
    .locals 3

    .prologue
    .line 2838
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SeamlessMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVolumeChangeInProgress()Z
    .locals 4

    .prologue
    .line 1695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-wide v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoomEnabledByPlayerType()Z
    .locals 1

    .prologue
    .line 3181
    const/4 v0, 0x1

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 3379
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3381
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3383
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "KEEP_SCREEN: ON"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3386
    return-void
.end method

.method private loadVideo()Z
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 843
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Do load Video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    :goto_0
    return v6

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 852
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Raising no connectivity warning"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->noConnectivityWarning()V

    goto :goto_0

    .line 861
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleConnectivityCheck()Z

    move-result v0

    if-nez v0, :cond_3

    .line 863
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Network check fails"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_4

    .line 868
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "asset is null, this should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v7, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    .line 876
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    .line 878
    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_7

    .line 879
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 880
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set JPlayerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setJPlayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V

    .line 886
    :cond_7
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    if-le v0, v3, :cond_a

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 888
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 890
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 891
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Do Play from position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Do Play asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_8
    if-gez v0, :cond_b

    .line 896
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Invalid bookmark, reset to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 900
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 901
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 904
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isBrowsePlay(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 905
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setBrowsePlay(Z)V

    .line 910
    :cond_9
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 911
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toLongSafe(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->open(JLcom/netflix/mediaclient/ui/common/PlayContext;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStart()V

    move v6, v7

    .line 919
    goto/16 :goto_0

    .line 886
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Exception in video preparation"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    const v3, 0x7f080180

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "handleActionId"

    const-string/jumbo v5, "ACTION_ID"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z

    goto/16 :goto_0

    :cond_b
    move v4, v0

    goto :goto_2
.end method

.method private moveToMDXPLayback()V
    .locals 2

    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 3286
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 3287
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 3288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 3289
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->transferPlaybackFromLocal()V

    .line 3290
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "MDX is currently connected so we need to skip local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    :goto_0
    return-void

    .line 3292
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "moveToMDXPLayback() was called in a bad state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private noConnectivityWarning()V
    .locals 5

    .prologue
    .line 3262
    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3263
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f0801c0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 3265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 3266
    return-void
.end method

.method private nonWifiPlayWarning(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3247
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 3248
    if-eqz p1, :cond_0

    const v0, 0x7f0801b9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3249
    :goto_0
    new-instance v3, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const v1, 0x7f0801c0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move-object v1, v2

    :goto_1
    invoke-direct {v3, v2, v0, v4, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 3251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 3252
    return-void

    .line 3248
    :cond_0
    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3249
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method private notifyPlayPauseToListener(Z)V
    .locals 3

    .prologue
    .line 4107
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4108
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotifyPlayPauseToListener() invoked with player paused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 4109
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4108
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4121
    :cond_1
    return-void

    .line 4116
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayPauseListener;

    .line 4117
    if-eqz v0, :cond_3

    .line 4118
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayPauseListener;->onPlaybackPaused(ZI)V

    goto :goto_0
.end method

.method private onSeek()V
    .locals 2

    .prologue
    .line 2824
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 2825
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onSeek"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showLoading()V

    .line 2827
    return-void
.end method

.method private releaseLockOnScreen()V
    .locals 2

    .prologue
    .line 3392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3395
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "KEEP_SCREEN: OFF"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    return-void
.end method

.method private removeDialogFragmentIfShown()V
    .locals 1

    .prologue
    .line 3724
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3725
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 3727
    :cond_0
    return-void
.end method

.method private reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4185
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 4188
    if-nez v0, :cond_1

    .line 4196
    :cond_0
    :goto_0
    return-void

    .line 4191
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 4192
    if-eqz v0, :cond_0

    .line 4193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, p1, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportCachedPlayEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private reportCachePlayStartIfNeeded()V
    .locals 6

    .prologue
    .line 4169
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4171
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 4172
    if-nez v5, :cond_1

    .line 4181
    :cond_0
    :goto_0
    return-void

    .line 4176
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v2

    .line 4177
    if-eqz v2, :cond_0

    .line 4178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getDuration()I

    move-result v3

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getLogicalStart()I

    move-result v4

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEndtime()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportCachedPlayStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private reportStartPlayEnded(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 6

    .prologue
    .line 4011
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getPlayStartInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4012
    const/4 v0, 0x0

    invoke-static {p6}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getJSonSafely(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createDebug(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    move-result-object v5

    .line 4013
    const-string/jumbo v0, "Media Error"

    const/4 v3, 0x1

    move-object v1, p3

    move-object v2, p4

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/StatusUtils;->createUiError(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v2

    .line 4014
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 4015
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4016
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    .line 4017
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-object v3, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 4020
    :cond_0
    return-void
.end method

.method private repostOnEverySecondRunnable(I)V
    .locals 4

    .prologue
    .line 2530
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2531
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repostOnEverySecondRunnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2535
    return-void
.end method

.method private requestDetailsIfNeededOffline(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    .line 2339
    const-string/jumbo v0, "VideoDetailsPlaycontextExtraBundle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 2340
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v2

    .line 2341
    if-eqz v2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 2342
    const/4 v0, 0x1

    return v0

    .line 2341
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method private requestDetailsIfNeededStreaming(Ljava/lang/String;Landroid/os/Bundle;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 2313
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2314
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Intent has EXTRA_GET_DETAILS_VIDEO_ID - fetching details..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const-string/jumbo v1, "VideoDetailsTypeExtra"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 2316
    const-string/jumbo v2, "VideoDetailsPlaycontextExtraBundle"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    .line 2317
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_0

    .line 2318
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 2333
    :goto_0
    return v0

    .line 2320
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_1

    .line 2321
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v3

    new-instance v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 2324
    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2325
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 2328
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid billboard video type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :cond_3
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 2332
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Regular playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleBrowsePlayRunnableIfNeeded(Z)V
    .locals 4

    .prologue
    .line 2473
    if-eqz p1, :cond_0

    .line 2474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWasEndOfBrowsePlayreported:Z

    .line 2476
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getBrowsePlay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWasEndOfBrowsePlayreported:Z

    if-nez v0, :cond_2

    .line 2477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2478
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    .line 2480
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2482
    :cond_2
    return-void
.end method

.method private setCoppolaSeekbarEnabled(Z)V
    .locals 2

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    const-string/jumbo v1, "PlayerFragment"

    if-eqz p1, :cond_2

    const-string/jumbo v0, "Enabling coppola seekbar"

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_1

    .line 1310
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setSeekbarEnabled(Z)V

    .line 1314
    :cond_1
    return-void

    .line 1305
    :cond_2
    const-string/jumbo v0, "Disabling coppola seekbar"

    goto :goto_0
.end method

.method private setFragmentContentView(I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 502
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "setFragmentContentView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 504
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 506
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    return-void
.end method

.method private setProgress()V
    .locals 5

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-eqz v0, :cond_2

    .line 2625
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2626
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress aborted. isDragging -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_1
    :goto_0
    return-void

    .line 2634
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v0

    .line 2635
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDuration()I

    move-result v1

    .line 2637
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->canUpdatePosition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2638
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2639
    const-string/jumbo v2, "PlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PA#setProgress:: Position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    goto :goto_0

    .line 2643
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2644
    const-string/jumbo v2, "PlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PA#setProgress:: Dragging in progress? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", duration: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSurface(II)V
    .locals 1

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2789
    :goto_0
    return-void

    .line 2787
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoWidth(I)V

    .line 2788
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoHeight(I)V

    goto :goto_0
.end method

.method private showEpisodesFrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1757
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    .line 1759
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    if-nez v0, :cond_3

    .line 1764
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1765
    :cond_2
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->create(Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 1766
    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    .line 1767
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1768
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 1769
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    const v2, 0x7f0b010f

    invoke-virtual {v0, v4, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 1772
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    if-eqz v0, :cond_4

    .line 1773
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->addEpisodeArguments(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 1777
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0

    .line 1765
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 1766
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    goto :goto_1
.end method

.method private showLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2830
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 2832
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V

    .line 2835
    :cond_0
    return-void
.end method

.method private skip(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1820
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    const-string/jumbo v0, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skip back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1824
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1825
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v0

    add-int/2addr v0, p1

    .line 1826
    if-gez v0, :cond_1

    .line 1827
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Go back to start, instead of trying to go minus!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1830
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    .line 1831
    return-void
.end method

.method private skipBack()V
    .locals 1

    .prologue
    .line 1812
    const/16 v0, -0x7530

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skip(I)V

    .line 1813
    return-void
.end method

.method private skipForward()V
    .locals 1

    .prologue
    .line 1816
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skip(I)V

    .line 1817
    return-void
.end method

.method private slowNetworkWarning()V
    .locals 5

    .prologue
    .line 3255
    const v0, 0x7f08020c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3256
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f0801c0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3257
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 3258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 3259
    return-void
.end method

.method private startScreenUpdate()V
    .locals 4

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2816
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 2818
    :cond_0
    return-void
.end method

.method private stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1603
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "stopPlayback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_1

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    .line 1607
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    .line 1608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 1609
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 1610
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->enableButtons(Z)V

    .line 1612
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_1

    .line 1613
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    .line 1616
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 1617
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    .line 1618
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    .line 1619
    return-void
.end method

.method private toBifAjustedProgress(I)I
    .locals 4

    .prologue
    .line 2043
    div-int/lit16 v0, p1, 0x2710

    .line 2044
    mul-int/lit16 v0, v0, 0x2710

    .line 2046
    if-ne v0, p1, :cond_1

    .line 2047
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2048
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Right on target, no need to ajust seekbar position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [ms]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_0
    :goto_0
    return v0

    .line 2051
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2052
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Progres : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [ms] vs. bif position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [ms]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 2388
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private toLongSafe(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 2368
    if-nez p1, :cond_1

    .line 2384
    :cond_0
    :goto_0
    return-wide v0

    .line 2371
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2372
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2379
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 2380
    :catch_0
    move-exception v2

    .line 2381
    const-string/jumbo v3, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got exception inside toLongSafe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryFinishActivity()V
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 568
    :cond_0
    return-void
.end method

.method private updateAssetWithCurrentPlayPosition()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 1345
    :cond_0
    return-void
.end method

.method private updateMetadataIfNeeded()V
    .locals 15

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ui.playeroverlay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2542
    if-nez v0, :cond_1

    .line 2543
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugDataVisibility(Z)V

    .line 2617
    :cond_0
    :goto_0
    return-void

    .line 2546
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugDataVisibility(Z)V

    .line 2549
    const/4 v3, 0x0

    .line 2550
    const/4 v2, 0x0

    .line 2551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2553
    const-string/jumbo v0, "N/A"

    .line 2554
    const-string/jumbo v1, "N/A"

    .line 2555
    const-string/jumbo v4, "N/A"

    .line 2556
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v7, :cond_0

    .line 2557
    const-string/jumbo v7, "Release"

    .line 2558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2559
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v9, v10

    .line 2561
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v10}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v10

    .line 2562
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2563
    if-eqz v10, :cond_7

    .line 2564
    const v0, 0x7f08015a

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v2, 0x2

    .line 2567
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    .line 2568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoResolution:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoResolution:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->mVideoDecoderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "Offline"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 2572
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getDrmInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2564
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2613
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v1, :cond_0

    .line 2614
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2575
    :cond_2
    if-eqz v10, :cond_6

    .line 2576
    iget v2, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->position:I

    const v3, 0xea60

    div-int v3, v2, v3

    .line 2577
    iget v2, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->duration:I

    const v4, 0xea60

    div-int/2addr v2, v4

    .line 2578
    iget v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    iget v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->targetBitRate:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    iget-boolean v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isSuperHD:Z

    if-eqz v4, :cond_4

    .line 2581
    const v4, 0x7f080221

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    :goto_2
    iget-object v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->language:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    invoke-virtual {v10}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    invoke-virtual {v10}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioTrackType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v4

    .line 2595
    if-eqz v4, :cond_3

    .line 2596
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2598
    :cond_3
    const-string/jumbo v4, "PlayerFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Subtitle config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v4

    .line 2600
    if-eqz v4, :cond_6

    .line 2601
    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    .line 2604
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    .line 2605
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 2607
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-static {v10}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManagerFactory;->getSubtitleManagerLabel(Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;)Ljava/lang/String;

    move-result-object v10

    .line 2609
    const v11, 0x7f080159

    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v7, 0x1

    aput-object v8, v12, v7

    const/4 v7, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "UI Version"

    aput-object v8, v12, v7

    const/4 v7, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v7

    const/4 v3, 0x5

    .line 2610
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v3

    const/4 v2, 0x6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/16 v2, 0x8

    aput-object v4, v12, v2

    const/16 v2, 0x9

    aput-object v1, v12, v2

    const/16 v1, 0xa

    aput-object v0, v12, v1

    const/16 v0, 0xb

    aput-object v10, v12, v0

    const/16 v0, 0xc

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getDrmInfo()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 2609
    invoke-virtual {p0, v11, v12}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2583
    :cond_4
    iget-boolean v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isHD:Z

    if-eqz v4, :cond_5

    .line 2584
    const v4, 0x7f080187

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2586
    :cond_5
    const v4, 0x7f0801f7

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_3

    :cond_7
    move-object v0, v4

    goto/16 :goto_1
.end method

.method private updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2180
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUI, details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 2183
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2184
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Wrong activity state, finishing activity "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 2283
    :goto_0
    return-void

    .line 2189
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getPostPlayType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    move-result-object v2

    .line 2190
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->resolveContentView(Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)I

    move-result v0

    .line 2191
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setFragmentContentView(I)V

    .line 2194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0295

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 2195
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->staticToolbarMenu:Landroid/view/Menu;

    .line 2196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 2198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 2199
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2200
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 2201
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflineErrorBuilderOrNullFromWatchState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 2202
    if-eqz v0, :cond_3

    .line 2203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0

    .line 2207
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    .line 2210
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 2211
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 2212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-nez v0, :cond_5

    .line 2213
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Unable to receive handle to player object, finishing activity "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    goto :goto_0

    .line 2222
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2223
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->cancelAllImageLoaderRequests()Z

    .line 2226
    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    move-result-object v0

    .line 2227
    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->createInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2228
    if-eqz p1, :cond_7

    .line 2229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    .line 2232
    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startSeamlessMode()V

    .line 2236
    :cond_8
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startSeamlessMode()V

    .line 2241
    :cond_9
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    goto/16 :goto_0

    .line 2246
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    .line 2247
    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    .line 2250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 2252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 2253
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2257
    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v2, :cond_c

    .line 2259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_1
    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v2, v3, v0, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideosIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 2263
    :cond_c
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x12

    if-le v0, v2, :cond_d

    .line 2264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setSecure(Z)V

    .line 2267
    :cond_d
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setTargetSelection()V

    .line 2269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2271
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    .line 2272
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2275
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    .line 2276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayerBase(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayer(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2278
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f028d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 2279
    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    .line 2282
    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    goto/16 :goto_0

    .line 2259
    :cond_10
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto/16 :goto_1
.end method

.method private static verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 5

    .prologue
    .line 3781
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3782
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "nf_pin PlayerActivity pinVerification skipped - ageProtected: %b, pinVerified:%b, pinProtected:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3783
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinVerified()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3782
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    .line 3791
    :goto_0
    return-void

    .line 3788
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 3789
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0
.end method

.method private willstartPlaybackInAnotherActivity(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z
    .locals 3

    .prologue
    .line 4199
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playableId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 4201
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v1

    .line 4202
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4203
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    .line 4204
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopPlayback()V

    .line 4205
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 4207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p1, v1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 4208
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    .line 4209
    const/4 v0, 0x1

    .line 4212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V
    .locals 1

    .prologue
    .line 4072
    if-nez p1, :cond_0

    .line 4082
    :goto_0
    return-void

    .line 4076
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    .line 4080
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3038
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 3039
    if-eqz p1, :cond_1

    .line 3040
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 3041
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    .line 3042
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3043
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Disable subtitles, none is selected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clear()V

    .line 3046
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->commit()V

    .line 3047
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3048
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Starting playback by seek with forceRebuffer to current position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    .line 3050
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onStalled()V

    .line 3053
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Language change should be completed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    return-void
.end method

.method protected cleanup()V
    .locals 3

    .prologue
    .line 1559
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleanup playerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_2

    .line 1563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->cancelNotification()V

    .line 1566
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    .line 1568
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_3

    .line 1569
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopPlayback()V

    .line 1572
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1573
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 1574
    return-void
.end method

.method public cleanupAndExit()V
    .locals 2

    .prologue
    .line 1577
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "cleanupAndExit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 1587
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanup()V

    .line 1590
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "cleanupAndExit calling finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1593
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 1595
    :cond_0
    return-void
.end method

.method public clearPanel()V
    .locals 4

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_0

    .line 2396
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen was not yet initialized - no need to clear the panel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :goto_0
    return-void

    .line 2400
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_1

    .line 2401
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "When in post play do NOT clear panel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2404
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->clearPanel()V

    goto :goto_0
.end method

.method createMdxTargetSelection([Landroid/util/Pair;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;"
        }
    .end annotation

    .prologue
    .line 3232
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 929
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(Z)V

    .line 930
    return-void
.end method

.method public doPlaying()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1351
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1353
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    .line 1354
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPlaying(), playedVideoCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    if-eqz v0, :cond_2

    .line 1359
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Dismissing buffering progress bar..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    .line 1361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    .line 1362
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 1363
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    .line 1364
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 1365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1367
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V

    .line 1368
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Remove bif image if it was visible. Only for phones!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    .line 1373
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdate()V

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setSeekbarTrackingEnabled(Z)V

    .line 1378
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCoppolaSeekbarEnabled(Z)V

    .line 1380
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    .line 1381
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    .line 1383
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1384
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "App is not in focus, pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 1403
    :cond_3
    :goto_0
    return-void

    .line 1387
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1388
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playWhenBufferingComplete:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    if-ne v0, v4, :cond_6

    .line 1392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1393
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1394
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not allowed to auto-play so pausing. allowCoppolaAutoplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", playWhenBufferingComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playWhenBufferingComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 1397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    goto :goto_0

    .line 1398
    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    .line 1400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    goto :goto_0
.end method

.method public doSeek(I)V
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    .line 1030
    return-void
.end method

.method public doUnpause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 984
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_2

    .line 989
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doUnpause: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0

    .line 994
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doUnpause: resume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 1001
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 1002
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_6

    .line 1003
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->onSubtitleRemove()V

    .line 1006
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    .line 1007
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    if-eqz v0, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->cancelNotification()V

    .line 1010
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pausePlaybackOnPlayerBackgrounded:Z

    if-eqz v0, :cond_5

    .line 1011
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause playback is true, so not resuming playback from player backgrounded case."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1014
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/16 v1, -0x1388

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekWithFuzzRange(II)V

    .line 1020
    :goto_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doUnpause() - scheduling \"browse_play\" end reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->scheduleBrowsePlayRunnableIfNeeded(Z)V

    goto/16 :goto_0

    .line 1016
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->unpause()V

    .line 1017
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    goto :goto_1
.end method

.method public doZoomIn()V
    .locals 3

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 1089
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doZoomIn: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doZoomOut: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 1097
    if-eqz v0, :cond_0

    .line 1098
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    goto :goto_0
.end method

.method public doZoomOut()V
    .locals 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

    .line 1070
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doZoomIn: Invalid state, exit...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doZoomIn: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 1080
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    goto :goto_0
.end method

.method public extendTimeoutTimer()V
    .locals 4

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 3173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 3174
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 698
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing the activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 707
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got wrong activity state so we will not finish the following activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 1

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;
    .locals 1

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    return-object v0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    .prologue
    .line 3628
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLanguage()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->language:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getPlayPauseListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    return-object v0
.end method

.method public getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
    .locals 1

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    return-object v0
.end method

.method getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
    .locals 1

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    return-object v0
.end method

.method public getSurface2()Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;
    .locals 1

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    return-object v0
.end method

.method public getTitleForScreen(Lcom/netflix/mediaclient/servicemgr/Asset;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2767
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2768
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802c2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2769
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getEpisodeNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2768
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2770
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2771
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802c3

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2776
    :cond_0
    :goto_0
    return-object v0

    .line 2774
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802c4

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;
    .locals 1

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 3754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inInterruptedOrPendingInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3755
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->moveFromInterruptedToPlaying()V

    .line 3756
    const/4 v0, 0x1

    .line 3758
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleConnectivityCheck()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3300
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v3, "Check connection"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3302
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "offline playback network is not needed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    :goto_0
    return v1

    .line 3305
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    .line 3307
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 3309
    goto :goto_0

    .line 3312
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3313
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->moveToMDXPLayback()V

    move v1, v2

    .line 3314
    goto :goto_0

    .line 3317
    :cond_2
    if-nez v0, :cond_3

    .line 3318
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "No internet connection. Since this is expected state on Verizons\' phones, skip"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3320
    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v0, v3, :cond_4

    .line 3321
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "2G only, alert"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->slowNetworkWarning()V

    move v1, v2

    .line 3323
    goto :goto_0

    .line 3324
    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v0, v3, :cond_5

    .line 3325
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "WiFi connection, do playback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3328
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isPlaybackInWifiOnly(Landroid/content/Context;)Z

    move-result v0

    .line 3329
    const-string/jumbo v3, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "3G Preference setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    if-eqz v0, :cond_9

    .line 3332
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v3, "We should warn user if he is on NON WIFI network!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "nf_play_user_no_wifi_warned_already"

    invoke-static {v0, v3, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 3335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_8

    .line 3336
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->nonWifiPlayWarning(Z)V

    .line 3337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "nf_play_user_no_wifi_warned_already"

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    :goto_2
    move v1, v2

    .line 3341
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 3336
    goto :goto_1

    .line 3339
    :cond_8
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "User was already notified regarding disabled auto-playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3343
    :cond_9
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Warning is not required, proceed with playback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleMdxClick()V
    .locals 1

    .prologue
    .line 3058
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isBufferingCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3061
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 3063
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_1

    .line 3064
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStopped()V

    .line 3066
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->moveToMDXPLayback()V

    .line 3078
    :cond_2
    :goto_0
    return-void

    .line 3067
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3071
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_5

    .line 3072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStarted()V

    .line 3075
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    .line 3076
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    goto :goto_0
.end method

.method public hideNavigationBar()V
    .locals 1

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 3903
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideNavigationBar()V

    .line 3905
    :cond_0
    return-void
.end method

.method public isCoppolaPlayback()Z
    .locals 1

    .prologue
    .line 3273
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContextForPlayer(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isInPortrait()Z
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListening()Z
    .locals 1

    .prologue
    .line 3774
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 3195
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    return v0
.end method

.method public isMDXTargetSelected()Z
    .locals 1

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3026
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-nez v1, :cond_1

    .line 3029
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPostPlayed()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->postPlayed:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-nez v0, :cond_0

    .line 3013
    const/4 v0, 0x0

    .line 3015
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    goto :goto_0
.end method

.method public isStalled()Z
    .locals 1

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    return v0
.end method

.method public launchPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 783
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    .line 785
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "launchPlayback()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 802
    :cond_1
    :goto_0
    return-void

    .line 788
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 789
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 790
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    .line 791
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    if-eqz v0, :cond_4

    .line 793
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_0

    .line 796
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Buffering not complete - can\'t unpause."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playWhenBufferingComplete:Z

    goto :goto_0
.end method

.method public notifyOthersOfPlayStart()V
    .locals 4

    .prologue
    .line 1647
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1649
    const-string/jumbo v0, "playbackType"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1651
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    const-string/jumbo v0, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating PlayerActivity\'s intent with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 1663
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1664
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Intent PLAYER_PLAY_START sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return-void

    .line 1657
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-eqz v0, :cond_2

    .line 1658
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    .line 1660
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "notifyOthersOfPlayStart() got unsupported activity type - skipping..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyOthersOfPlayStop()V
    .locals 3

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    .line 1626
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(Z)V

    .line 1628
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1629
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1630
    const-string/jumbo v1, "playbackType"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1632
    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 1633
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->fromAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v2

    .line 1632
    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    .line 1634
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Intent PLAYER_PLAY_STOP sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    return-void
.end method

.method public onAudioChange(I)V
    .locals 3

    .prologue
    .line 2978
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2979
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2983
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update the audio"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :cond_1
    :goto_0
    return-void

    .line 2987
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    if-eqz v0, :cond_1

    .line 2988
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Starting playback by seek with forceRebuffer to current position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    .line 2990
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    .prologue
    .line 2869
    packed-switch p1, :pswitch_data_0

    .line 2896
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown audio focus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2899
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2900
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioFocusChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_0
    return-void

    .line 2871
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_1

    .line 2872
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setAudioDuck(Z)V

    .line 2874
    :cond_1
    const-string/jumbo v0, "AUDIOFOCUS_GAIN"

    goto :goto_0

    .line 2877
    :pswitch_2
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    goto :goto_0

    .line 2880
    :pswitch_3
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_0

    .line 2883
    :pswitch_4
    const-string/jumbo v0, "AUDIOFOCUS_LOSS"

    goto :goto_0

    .line 2886
    :pswitch_5
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    goto :goto_0

    .line 2889
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_2

    .line 2890
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setAudioDuck(Z)V

    .line 2892
    :cond_2
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    goto :goto_0

    .line 2869
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBandwidthChange(I)V
    .locals 3

    .prologue
    .line 2807
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2808
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bandwidth changed to [Kbps]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 3

    .prologue
    .line 1439
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MP onBufferingUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Stopping local playback since we already started the remote one."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    .line 1447
    :cond_1
    return-void
.end method

.method public onCompletion()V
    .locals 4

    .prologue
    .line 1451
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCompletion, check if we are in postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    .line 1453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->canExitPlaybackEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 1459
    :goto_0
    return-void

    .line 1456
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "In PostPlay, allow screen to lock after timeout..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1108
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1109
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_4

    .line 1110
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "keyboard out"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 1117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v1, :cond_2

    .line 1118
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Scheduling playback when user rotated to landscape."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launchPlayback()V

    .line 1125
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v1, :cond_3

    .line 1126
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1128
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 1130
    :cond_3
    return-void

    .line 1111
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_0

    .line 1112
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "keyboard in"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1128
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 461
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 466
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logDeviceDensity(Landroid/app/Activity;)V

    .line 469
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->reset()V

    .line 473
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 479
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    .line 480
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->pauseReporting(Landroid/content/Context;)V

    .line 481
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreate done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 2148
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->staticToolbarMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_0

    .line 2162
    :goto_0
    return-void

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2156
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreateOptionsMenu() was triggered before UI was initialized. Scheduling panel menu update to be called later."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    goto :goto_0

    .line 2159
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 2160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 486
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 488
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setHasOptionsMenu(Z)V

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 661
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "====> Destroying PlayerFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldInjectPlayerFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 672
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->releaseLockOnScreen()V

    .line 674
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cancelBrowsePlayRunnable()V

    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->destroy()V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clear()V

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    if-eqz v0, :cond_4

    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    .line 690
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->resumeReporting(Landroid/content/Context;Z)V

    .line 692
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 694
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "====> Destroying PlayerFragment done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method public onGetTextureSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    .line 3153
    if-eqz v0, :cond_0

    .line 3154
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 3156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2905
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2906
    const-string/jumbo v2, "PlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 2910
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 2911
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 2913
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inInterruptedOrPendingInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2914
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Back used to dismiss interrupter overlay, send it back to framework"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_1
    :goto_0
    return v0

    .line 2917
    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Back..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleBackPressed()Z

    .line 2921
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    move v0, v1

    .line 2922
    goto :goto_0

    .line 2923
    :cond_3
    const/16 v2, 0x54

    if-ne p1, v2, :cond_4

    move v0, v1

    .line 2925
    goto :goto_0

    .line 2926
    :cond_4
    const/16 v2, 0x52

    if-ne p1, v2, :cond_5

    .line 2927
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 2928
    goto :goto_0

    .line 2929
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleControlButtonPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2930
    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onManagerReady() was called when activity is already not in valid state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_0
    :goto_0
    return-void

    .line 2106
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2107
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceManager ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 2110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    .line 2111
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->newInstance(Z)Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    .line 2115
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 2131
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2132
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->clear()V

    .line 2135
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 2118
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0300cc

    .line 2126
    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setFragmentContentView(I)V

    goto :goto_1

    .line 2123
    :cond_6
    const v0, 0x7f0300c8

    goto :goto_2
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 2142
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 2144
    return-void
.end method

.method public onMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)V
    .locals 3

    .prologue
    .line 1484
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    .line 1488
    return-void
.end method

.method public onNccpError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 3

    .prologue
    .line 1463
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nccp Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    if-eqz v0, :cond_2

    .line 1470
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    .line 1471
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getActionId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1472
    const-string/jumbo v0, "SPY-8915: Ignoring NCCP error, action ID 1 for Coppola autoplay cases"

    .line 1473
    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 1480
    :cond_1
    :goto_0
    return-void

    .line 1478
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z

    goto :goto_0
.end method

.method public onNrdFatalError()V
    .locals 5

    .prologue
    .line 3434
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onNrdFatalError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3437
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to show the error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    :goto_0
    return-void

    .line 3441
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v1, ""

    const v2, 0x7f080042

    .line 3442
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3454
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 3455
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    const/4 v0, 0x1

    .line 2169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 588
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause called..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isStalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_2

    .line 594
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen is on, just pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    .line 598
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_3

    .line 600
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onPause()V

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onPause()V

    .line 607
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPause called done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    .line 609
    return-void

    .line 591
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 5

    .prologue
    .line 3794
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "%s onPlayVerification vault: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 3795
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 3794
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3798
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    .line 3804
    :goto_0
    return-void

    .line 3801
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Age/Pin verification failed cannot proceed - stop playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method public onPlaybackError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 3

    .prologue
    .line 3513
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3514
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackError, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandlerForPlaybackError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    .line 3517
    if-eqz v0, :cond_1

    .line 3518
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    .line 3519
    if-eqz v1, :cond_1

    .line 3520
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 3521
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3522
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 3526
    :cond_1
    return-void
.end method

.method public declared-synchronized onPlaying()V
    .locals 3

    .prologue
    .line 1318
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPlaying()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_0

    .line 1320
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPlaying()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    :goto_0
    monitor-exit p0

    return-void

    .line 1322
    :cond_0
    :try_start_1
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaying not in correct state, ActivityState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepared(Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 4

    .prologue
    .line 1156
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPrepared called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_4

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoPrepared:Z

    .line 1162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    .line 1163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    .line 1165
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 1166
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "====> width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setSurface(II)V

    .line 1171
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->initSurfaceFixedSize(II)V

    .line 1172
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->play()V

    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isZoomEnabledByPlayerType()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomEnabledByPlayertype(Z)V

    .line 1177
    :cond_1
    if-eqz p1, :cond_3

    .line 1178
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Watermark found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->addWatermark(Lcom/netflix/mediaclient/media/Watermark;)V

    .line 1186
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->selectInitialTracks()V

    .line 1195
    :goto_1
    return-void

    .line 1184
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Watermark not found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Failed to start player"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_1

    .line 1192
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepared not in correct state, ActivityState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume: back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onResume()V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onResume()V

    .line 584
    :cond_2
    return-void
.end method

.method public onRetryRequested()V
    .locals 4

    .prologue
    .line 1835
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onRetryRequested()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 1839
    instance-of v1, v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-eqz v1, :cond_3

    .line 1840
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1841
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling onRetryRequested for fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_1
    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 1850
    :cond_2
    :goto_0
    return-void

    .line 1846
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1847
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "frag does not implement ErrorWrapper.Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSeekComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1329
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "MP onSeekComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    .line 1332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 1333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPlaying()V

    .line 1334
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    .line 1339
    :goto_0
    return-void

    .line 1336
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSeekComplete not in correct state, ActivityState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method public declared-synchronized onStalled()V
    .locals 3

    .prologue
    .line 1407
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout stalled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1411
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout stalled, clear pending updates"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clearPendingUpdates()V

    .line 1414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    if-eqz v0, :cond_2

    .line 1415
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Seek in progress..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1419
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 1420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    .line 1421
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1424
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    .line 1425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 1428
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    if-eqz v0, :cond_5

    .line 1429
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Enabled Toast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080190

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1433
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 515
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 517
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onStart()V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onStart()V

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 531
    if-eqz v0, :cond_4

    .line 532
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    .line 538
    :goto_1
    if-nez v0, :cond_6

    .line 539
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "This should NEVER happen, bundle is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    .line 561
    :cond_3
    :goto_2
    return-void

    .line 534
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager not found. Unable to ask for audio focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 543
    :cond_6
    const-string/jumbo v1, "AssetExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 544
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 545
    const-string/jumbo v1, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asset received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_7
    if-eqz v0, :cond_8

    .line 549
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 554
    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "BookmarkSecondsFromStart"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    .line 556
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onStart done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    const-string/jumbo v1, "PlayerFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TRACK_ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_9

    const-string/jumbo v0, "n/a"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method public declared-synchronized onStarted()V
    .locals 6

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Playout started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    .line 1244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v0

    .line 1247
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDuration()I

    move-result v1

    .line 1248
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1249
    const-string/jumbo v2, "PlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "========> Duration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->initProgress(I)V

    .line 1253
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    const-string/jumbo v2, "PlayerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Position: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", duration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v1, v3, v5}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZZ)I

    .line 1258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    .line 1259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->removeSplashScreen()V

    .line 1260
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdate()V

    .line 1261
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/player/PostPlay;->fetchPostPlayVideosIfNeeded(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;)V

    .line 1268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStarted()V

    .line 1271
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCoppola1ABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_THREE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launched:Z

    .line 1277
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    .line 1280
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onStarted() - scheduling \"browse_play\" end reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->scheduleBrowsePlayRunnableIfNeeded(Z)V

    .line 1283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->createAdvisories()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    :goto_1
    monitor-exit p0

    return-void

    .line 1266
    :cond_3
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    .line 1285
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1286
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStarted not in correct state, ActivityState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1290
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v1, v3, v5}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    .line 1291
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1294
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PlayerActivity::onStop called "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onStop()V

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onStop()V

    .line 626
    :cond_2
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 627
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 628
    if-eqz v0, :cond_4

    .line 629
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 634
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->canPlayerBeBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 635
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PlayerActivity::onStop done, player is backbrounded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_1
    return-void

    .line 631
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager not found. Unable to abandon audio focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 639
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Start play is in progress and user canceled playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    .line 641
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMaxStreamsReachedDialogId:Ljava/lang/String;

    .line 645
    if-eqz v0, :cond_7

    .line 646
    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Report max stream reach dialog ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 651
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldInjectPlayerFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 652
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 655
    :cond_8
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PlayerActivity::onStop done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    .prologue
    .line 3401
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3402
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update the subtitles"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :goto_0
    return-void

    .line 3406
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3407
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update subtitles "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V

    goto :goto_0
.end method

.method public onSubtitleFailed()V
    .locals 2

    .prologue
    .line 3416
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3424
    :goto_0
    return-void

    .line 3420
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "We failed to change subtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurface2Visibility(Z)V
    .locals 3

    .prologue
    .line 3120
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3121
    const-string/jumbo v1, "PlayerFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set surface2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "visible"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    :cond_0
    if-eqz p1, :cond_2

    .line 3124
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3144
    :goto_1
    return-void

    .line 3121
    :cond_1
    const-string/jumbo v0, "invisible"

    goto :goto_0

    .line 3134
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$14;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onUpdatePts(I)V
    .locals 2

    .prologue
    .line 3499
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3500
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity is already not in valid state - skpping onUpdatePts()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    :goto_0
    return-void

    .line 3504
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->updatePlaybackPosition(I)Z

    .line 3505
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_1

    .line 3506
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(Z)V

    .line 3508
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateAssetWithCurrentPlayPosition()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update video size"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_0
    return-void

    .line 1139
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1140
    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid aspect ratio width("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") or aspect ratio height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1143
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1144
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MP onVideoSizeChanged: aspect ratio width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", aspect ratio height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_3
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    .line 1149
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    .line 1150
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setSurface(II)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 2842
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2843
    const-string/jumbo v0, "PlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "====> In focus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2864
    :cond_1
    :goto_0
    return-void

    .line 2850
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2851
    if-eqz v0, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    if-ne v1, v0, :cond_4

    .line 2852
    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "UI is not in focus on splash screen. Do NOT pause, ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2856
    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Alert from some other activity is in front of us. Pause."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 4

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1500
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarBackButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 1501
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    .line 1504
    :cond_0
    return-void
.end method

.method public playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)V
    .locals 6

    .prologue
    .line 3545
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V

    .line 3546
    return-void
.end method

.method public playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3558
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity already destroyed, ignore next!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    :goto_0
    return-void

    .line 3564
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_4

    .line 3565
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3566
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Current Asset is null for request to play next video."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    move v0, v1

    .line 3595
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    .line 3597
    invoke-static {p1, p2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->createForPostPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v4

    .line 3599
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isAdvisoryDisabled()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 3601
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3602
    const-string/jumbo v5, "PlayerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Is post play episode from same show? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Was advisory notice disabled? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 3607
    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->setAdvisoryDisabled(Z)V

    .line 3610
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3611
    const-string/jumbo v0, "PlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset to play next: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_3
    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3615
    const-string/jumbo v0, "PlayableId is null - skip playback"

    .line 3616
    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3569
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isExemptFromInterrupterLimit()Z

    move-result v2

    .line 3570
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3571
    const-string/jumbo v0, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playNextVideo: Current playable video exempt from interrupter limit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    :cond_5
    if-eqz p3, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v0

    .line 3576
    if-nez v2, :cond_6

    .line 3577
    add-int/lit8 v0, v0, 0x1

    .line 3581
    :cond_6
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3582
    const-string/jumbo v2, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Play next video, count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", from auto play "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", no user interaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    :cond_7
    if-nez p1, :cond_8

    .line 3586
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3587
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v4, "Video is null for postplay next playable video."

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto/16 :goto_1

    .line 3590
    :cond_8
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    .line 3591
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    goto/16 :goto_1

    :cond_9
    move v2, v1

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 3599
    goto/16 :goto_2

    .line 3622
    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3624
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0, v4, v3, p4, p5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    goto/16 :goto_0

    :cond_d
    move v3, v1

    .line 3622
    goto :goto_4

    :cond_e
    move v2, v1

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v2, v1

    move v0, v1

    goto/16 :goto_1
.end method

.method public playbackClosed()V
    .locals 2

    .prologue
    .line 1539
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "playbackClosed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    if-eqz v0, :cond_0

    .line 1541
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Reloading Video to start playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->loadVideo()Z

    .line 1543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    .line 1545
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "episodes"

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setExternalBundle(Landroid/os/Bundle;)V

    .line 369
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    .line 371
    :cond_0
    return-void

    .line 368
    :cond_1
    const-string/jumbo v0, "movies"

    move-object v1, v0

    goto :goto_0
.end method

.method public removePlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V
    .locals 1

    .prologue
    .line 4090
    if-nez p1, :cond_1

    .line 4099
    :cond_0
    :goto_0
    return-void

    .line 4094
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4098
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    .prologue
    .line 2293
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "requestDetailsIfNeeded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 2297
    :goto_0
    const-string/jumbo v1, "VideoDetailsIdExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2298
    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->availableInMyDownloads(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v2

    .line 2300
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2301
    const-string/jumbo v3, "PlayerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestDetailsIfNeeded videoId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasBeenDownloaded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_1
    if-eqz v2, :cond_3

    .line 2306
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeededOffline(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 2308
    :goto_1
    return v0

    .line 2296
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 2308
    :cond_3
    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeededStreaming(Ljava/lang/String;Landroid/os/Bundle;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 495
    return-void
.end method

.method public resetCurrentPlayback()V
    .locals 2

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_0

    .line 3716
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    .line 3717
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    .line 3719
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    .line 3720
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showLoading()V

    .line 3721
    return-void
.end method

.method public restartPlayback(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1515
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Restarting playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to restart the playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :goto_0
    return-void

    .line 1522
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    .line 1523
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    if-le v0, v2, :cond_1

    .line 1524
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z

    goto :goto_0

    .line 1526
    :cond_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    .line 1527
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    goto :goto_0
.end method

.method public restorePlaybackAfterSnap()V
    .locals 4

    .prologue
    .line 1671
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "restorePlaybackAfterSnap."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    .line 1674
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    .line 1676
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 1677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    .line 1678
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    .line 1685
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    .line 1686
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3148
    return-void
.end method

.method public selectInitialTracks()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 1199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    .line 1200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    .line 1201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v4

    .line 1203
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Create localization manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    new-instance v0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;-><init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Z)V

    .line 1207
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialLanguage()Lcom/netflix/mediaclient/util/LanguageChoice;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    .line 1210
    if-eqz v1, :cond_2

    .line 1211
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1212
    const-string/jumbo v4, "PlayerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Changing initial audio to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v6

    .line 1219
    :goto_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 1221
    if-eqz v0, :cond_3

    .line 1222
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1223
    const-string/jumbo v4, "PlayerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Changing initial subtitle to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v8

    .line 1226
    const/4 v9, 0x1

    .line 1232
    :goto_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4, v1, v0, v10}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    .line 1234
    new-instance v4, Lcom/netflix/mediaclient/media/Language;

    move-object v5, v3

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    .line 1235
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 1236
    return-void

    .line 1216
    :cond_2
    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "No need to set initial audio source"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_0

    .line 1228
    :cond_3
    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "No need to set initial subtitle"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    move v9, v10

    goto :goto_1
.end method

.method public setExternalBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    .line 511
    return-void
.end method

.method public setLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    .prologue
    .line 2794
    if-nez p1, :cond_0

    .line 2795
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Language is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :goto_0
    return-void

    .line 2799
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Sets language"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->language:Lcom/netflix/mediaclient/media/Language;

    .line 2802
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    goto :goto_0
.end method

.method public setMaxStreamsReachedDialogId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3490
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMaxStreamsReachedDialogId:Ljava/lang/String;

    .line 3491
    return-void
.end method

.method public setOnStartedPlaybackListener(Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    .line 389
    return-void
.end method

.method public setPauseOnPlayerBackgrounded(Z)V
    .locals 0

    .prologue
    .line 4128
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pausePlaybackOnPlayerBackgrounded:Z

    .line 4129
    return-void
.end method

.method public setPostPlayed(Z)V
    .locals 0

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->postPlayed:Z

    .line 379
    return-void
.end method

.method public setSubtitleVisiblity(Z)V
    .locals 2

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    if-nez v0, :cond_1

    .line 4138
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4139
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "setSubtitleVisiblity: subtitleManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    :cond_0
    :goto_0
    return-void

    .line 4144
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    goto :goto_0
.end method

.method public setTargetSelection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3204
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Skipping setTargetSelection()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :goto_0
    return-void

    .line 3208
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 3209
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3210
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0

    .line 3214
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v1

    .line 3215
    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 3216
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0

    .line 3220
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    .line 3221
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v2

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createMdxTargetSelection([Landroid/util/Pair;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0
.end method

.method public setUserInteraction()V
    .locals 2

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    if-eqz v0, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    .line 4062
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Set user interaction to true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    :cond_0
    return-void
.end method

.method public showControlScreenOverlay(Z)V
    .locals 2

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 2969
    if-eqz v0, :cond_0

    .line 2970
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onTap(Z)V

    .line 2974
    :goto_0
    return-void

    .line 2972
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNavigationBar()V
    .locals 1

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 3897
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    .line 3899
    :cond_0
    return-void
.end method

.method public startScreenUpdateTask()V
    .locals 2

    .prologue
    .line 3363
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    .line 3364
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "===>> Screen update thread started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    return-void
.end method

.method public stopScreenUpdateTask()V
    .locals 2

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3372
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "===>> Screen update thread canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    return-void
.end method

.method public wasBufferingComplete()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    return v0
.end method
