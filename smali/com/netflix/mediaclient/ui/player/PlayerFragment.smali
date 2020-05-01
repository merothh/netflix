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

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playWhenBufferingComplete:Z

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$2;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$3;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->episodesListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$4;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->zoomListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$5;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBackListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$6;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$7;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$8;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$9;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$12;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$15;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$16;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$17;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$17;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$19;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$20;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->releaseLockOnScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toBifAjustedProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWasEndOfBrowsePlayreported:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setProgress()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateMetadataIfNeeded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsSurfaceReady:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->completeInitIfReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->removeDialogFragmentIfShown()V

    return-void
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInteractivePostPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->canPlayerBeBackgrounded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->willstartPlaybackInAnotherActivity(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCoppolaSeekbarEnabled(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    return-void
.end method

.method static synthetic access$3500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showEpisodesFrag()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    return v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsZoomedOut:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBack()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method private addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandler(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Metadata does not exist, error should not be reported to an user"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

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

    const/4 v13, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handlePlayReadyRevocation(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v7

    move-object v0, p0

    move-object v1, p0

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportStartPlayEnded(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/lang/Integer;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playready certificate revocated, do not display error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->finish()V

    move v0, v13

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandler(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Metadata does not exist, error should not be reported to an user"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    :cond_2
    move v0, v13

    goto :goto_0

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

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

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

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->isPlayStarted()Z

    move-result v0

    if-eqz v0, :cond_2

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

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInteractivePostPlay()Z

    move-result v0

    if-eqz v0, :cond_2

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

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDeviceLowMem()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isSuspendPlaybackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelBrowsePlayRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private completeInitIfReady()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsSurfaceReady:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Surface not ready - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Asset not ready - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_3

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Asset is null - cannot complete init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "completeInitIfReady()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCoppolaSeekbarEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Autoplayback is turned off - waiting for user/timer to launch it to perform launchPlayback() call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launched:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStopped()V

    :cond_4
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launched:Z

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showLaunchButtons()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto/16 :goto_0
.end method

.method private continueInitAfterPlayVerify()V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Playback verified - completing init process..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getTitleForScreen(Lcom/netflix/mediaclient/servicemgr/Asset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isNonMemberPlayback()Z

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v2

    if-nez v2, :cond_2

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

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayStartIfNeeded()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->loadVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private createListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$VideoPositionListener;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->playPauseListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceListener:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->tapListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->audioPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBackListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->skipBackListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->zoomListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->zoomListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->episodesListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->episodeSelectorListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static createPlayerFragment(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;-><init>()V

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static createPlayerFragment(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private doPause(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(ZZ)V

    return-void
.end method

.method private doPause(ZZ)V
    .locals 5

    const-wide/32 v2, 0x1d4c0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isVolumeChangeInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: volume up or down is pressed, do not pause..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause: paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isBufferingCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clearPendingUpdates()V

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause, release awake clock after 2 minutes."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doPause() remove reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cancelBrowsePlayRunnable()V

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isBufferingCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Problems reaching Netflix service. Screen lock needs to be released."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private doSeek(IZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout seek..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onSeek()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekTo(IZ)V

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->onSubtitleRemove()V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doSeek() - scheduling \"browse_play\" end reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->scheduleBrowsePlayRunnableIfNeeded(Z)V

    goto :goto_0
.end method

.method public static getBundle(Lcom/netflix/mediaclient/servicemgr/Asset;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "AssetExtra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;I)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "VideoDetailsIdExtra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "VideoDetailsTypeExtra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "VideoDetailsPlaycontextExtraBundle"

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/common/PlayContext;->playContextToBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    const-string/jumbo v1, "BookmarkSecondsFromStart"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

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

    :try_start_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;->getData()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOfflineErrorBuilderOrNullFromWatchState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 8

    const/4 v0, 0x0

    const v1, 0x7f08026a

    const v4, 0x7f080267

    const v2, 0x7f080265

    const/4 v3, -0x1

    sget-object v5, Lcom/netflix/mediaclient/ui/player/PlayerFragment$21;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$WatchState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v1, v3

    move v2, v3

    :goto_0
    if-eq v2, v3, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :pswitch_0
    const v2, 0x7f08027f

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08025b

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v2

    move v2, v4

    goto :goto_0

    :pswitch_2
    move v1, v2

    move v2, v4

    goto :goto_0

    :pswitch_3
    const v1, 0x7f080266

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :pswitch_4
    const v1, 0x7f08026b

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    :pswitch_5
    const v2, 0x7f080269

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const v3, 0x7f0801c0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    goto :goto_1

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

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflinePlayableData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->UNKNOWN:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    goto :goto_0
.end method

.method private getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    goto :goto_0
.end method

.method private handleControlButtonPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x60

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "A button pressed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x15

    if-eq p1, v2, :cond_3

    const/16 v2, 0x66

    if-ne p1, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipBack()V

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x16

    if-eq p1, v2, :cond_5

    const/16 v2, 0x67

    if-ne p1, v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showControlScreenOverlay(Z)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skipForward()V

    move v0, v1

    goto :goto_0
.end method

.method private handlePlayReadyRevocation(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Not action ID error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getReasonCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x71

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playready certificate revocated, we do not have backup player, report an error!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Regular error, handle as popup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Error loading video details for video playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080180

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne p4, v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iget v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEndtime()I

    move-result v3

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/util/TimeUtils;->computePlayPos(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    :cond_4
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->completeInitIfReady()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p2, p4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    goto :goto_1
.end method

.method private initSurfaceFixedSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method

.method private isCoppolaWithOldPlayer()Z
    .locals 1

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInPostPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOfflinePlayback()Z
    .locals 2

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

    const/4 v0, 0x1

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "KEEP_SCREEN: ON"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadVideo()Z
    .locals 8

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Raising no connectivity warning"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->noConnectivityWarning()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleConnectivityCheck()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Network check fails"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "asset is null, this should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v7, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

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

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setJPlayerListener(Lcom/netflix/mediaclient/media/JPlayer/JPlayer$JplayerListener;)V

    :cond_7
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    if-le v0, v3, :cond_a

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_8

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

    :cond_8
    if-gez v0, :cond_b

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

    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isBrowsePlay(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setBrowsePlay(Z)V

    :cond_9
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStart()V

    move v6, v7

    goto/16 :goto_0

    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Exception in video preparation"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->transferPlaybackFromLocal()V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "MDX is currently connected so we need to skip local playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "moveToMDXPLayback() was called in a bad state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private noConnectivityWarning()V
    .locals 5

    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f0801c0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    return-void
.end method

.method private nonWifiPlayWarning(Z)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    if-eqz p1, :cond_0

    const v0, 0x7f0801b9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const v1, 0x7f0801c0

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move-object v1, v2

    :goto_1
    invoke-direct {v3, v2, v0, v4, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    return-void

    :cond_0
    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method private notifyPlayPauseToListener(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

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

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayPauseListener;->onPlaybackPaused(ZI)V

    goto :goto_0
.end method

.method private onSeek()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onSeek"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showLoading()V

    return-void
.end method

.method private releaseLockOnScreen()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "KEEP_SCREEN: OFF"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeDialogFragmentIfShown()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    :cond_0
    return-void
.end method

.method private reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, p1, v2}, Lcom/netflix/mediaclient/util/log/OfflineLogUtils;->reportCachedPlayEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    goto :goto_0
.end method

.method private reportCachePlayStartIfNeeded()V
    .locals 6

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v2

    if-eqz v2, :cond_0

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

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getPlayStartInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p6}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getJSonSafely(Lcom/netflix/mediaclient/event/nrdp/media/MediaEvent;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createDebug(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    move-result-object v5

    const-string/jumbo v0, "Media Error"

    const/4 v3, 0x1

    move-object v1, p3

    move-object v2, p4

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/StatusUtils;->createUiError(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-object v3, p5

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    :cond_0
    return-void
.end method

.method private repostOnEverySecondRunnable(I)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestDetailsIfNeededOffline(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    const-string/jumbo v0, "VideoDetailsPlaycontextExtraBundle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleVideoDetailsResponse(Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method private requestDetailsIfNeededStreaming(Ljava/lang/String;Landroid/os/Bundle;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Intent has EXTRA_GET_DETAILS_VIDEO_ID - fetching details..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "VideoDetailsTypeExtra"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    const-string/jumbo v2, "VideoDetailsPlaycontextExtraBundle"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_0

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v3, :cond_1

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v3

    new-instance v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;

    invoke-direct {v3, p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$FetchVideoDetailsForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-interface {v1, p1, v5, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

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

    :cond_3
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Regular playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleBrowsePlayRunnableIfNeeded(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWasEndOfBrowsePlayreported:Z

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getBrowsePlay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWasEndOfBrowsePlayreported:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$EndOfBrowsePlayRunnable;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportBrowsePlayEndRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private setCoppolaSeekbarEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "PlayerFragment"

    if-eqz p1, :cond_2

    const-string/jumbo v0, "Enabling coppola seekbar"

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getDecorator()Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setSeekbarEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "Disabling coppola seekbar"

    goto :goto_0
.end method

.method private setFragmentContentView(I)V
    .locals 4

    const/4 v2, -0x1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "setFragmentContentView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setProgress()V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->canUpdatePosition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

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

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZ)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoWidth(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoHeight(I)V

    goto :goto_0
.end method

.method private showEpisodesFrag()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->create(Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    const v2, 0x7f0b010f

    invoke-virtual {v0, v4, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->addEpisodeArguments(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodesFrag:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

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

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V

    :cond_0
    return-void
.end method

.method private skip(I)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Go back to start, instead of trying to go minus!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    return-void
.end method

.method private skipBack()V
    .locals 1

    const/16 v0, -0x7530

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skip(I)V

    return-void
.end method

.method private skipForward()V
    .locals 1

    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->skip(I)V

    return-void
.end method

.method private slowNetworkWarning()V
    .locals 5

    const v0, 0x7f08020c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v2, 0x0

    const v3, 0x7f0801c0

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->exitButtonHandler:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    return-void
.end method

.method private startScreenUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    :cond_0
    return-void
.end method

.method private stopPlayback()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "stopPlayback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->removePlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->enableButtons(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyOthersOfPlayStop()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsAssetReady:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    return-void
.end method

.method private toBifAjustedProgress(I)I
    .locals 4

    div-int/lit16 v0, p1, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

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

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private toLongSafe(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->toLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private updateAssetWithCurrentPlayPosition()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    :cond_0
    return-void
.end method

.method private updateMetadataIfNeeded()V
    .locals 15

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "ui.playeroverlay"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugDataVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugDataVisibility(Z)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "N/A"

    const-string/jumbo v1, "N/A"

    const-string/jumbo v4, "N/A"

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v7, :cond_0

    const-string/jumbo v7, "Release"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v9, v10

    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v10}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;

    move-result-object v10

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v10, :cond_7

    const v0, 0x7f08015a

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v2, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

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

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getDrmInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setDebugData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v10, :cond_6

    iget v2, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->position:I

    const v3, 0xea60

    div-int v3, v2, v3

    iget v2, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->duration:I

    const v4, 0xea60

    div-int/2addr v2, v4

    iget v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->instantBitRate:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->targetBitRate:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isSuperHD:Z

    if-eqz v4, :cond_4

    const v4, 0x7f080221

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->language:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/media/PlayoutMetadata;->getAudioTrackType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleConfiguration()Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

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

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleProfileFromMetadata()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-static {v10}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManagerFactory;->getSubtitleManagerLabel(Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;)Ljava/lang/String;

    move-result-object v10

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

    invoke-virtual {p0, v11, v12}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    iget-boolean v4, v10, Lcom/netflix/mediaclient/media/PlayoutMetadata;->isHD:Z

    if-eqz v4, :cond_5

    const v4, 0x7f080187

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

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

    const/4 v5, 0x1

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Wrong activity state, finishing activity "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay;->getPostPlayType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->resolveContentView(Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setFragmentContentView(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0f0295

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->staticToolbarMenu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->OfflinePlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflineErrorBuilderOrNullFromWatchState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getPlayer(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Unable to receive handle to player object, finishing activity "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->cancelAllImageLoaderRequests()Z

    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->createListeners()Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->createInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startSeamlessMode()V

    :cond_8
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isSeamless()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startSeamlessMode()V

    :cond_9
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->addPlayerListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;)V

    iput-boolean v5, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_b
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->StreamingPlayback:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v2, :cond_c

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

    :cond_c
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x12

    if-le v0, v2, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSurfaceView()Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setSecure(Z)V

    :cond_d
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setTargetSelection()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayerBase(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isJPlayer(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f028d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;-><init>(Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_SRVCMNGR_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto/16 :goto_1
.end method

.method private static verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 5

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "nf_pin PlayerActivity pinVerification skipped - ageProtected: %b, pinVerified:%b, pinProtected:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

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

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isAgeProtected()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier;->verifyAgeAndPinToPlay(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V

    goto :goto_0
.end method

.method private willstartPlaybackInAnotherActivity(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Z
    .locals 3

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getOfflinePlayableData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->willPlayOffline(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopPlayback()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p1, v1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Disable subtitles, none is selected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clear()V

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->commit()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Starting playback by seek with forceRebuffer to current position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onStalled()V

    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Language change should be completed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected cleanup()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->cancelNotification()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopPlayback()V

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    return-void
.end method

.method public cleanupAndExit()V
    .locals 2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "cleanupAndExit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanup()V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "cleanupAndExit calling finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    :cond_0
    return-void
.end method

.method public clearPanel()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen was not yet initialized - no need to clear the panel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "When in post play do NOT clear panel."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause(Z)V

    return-void
.end method

.method public doPlaying()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playedVideoCount:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Dismissing buffering progress bar..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsBufferingOnPause:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Remove bif image if it was visible. Only for phones!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdate()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setSeekbarTrackingEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setCoppolaSeekbarEnabled(Z)V

    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

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

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "App is not in focus, pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_6

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

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

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    goto :goto_0
.end method

.method public doSeek(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    return-void
.end method

.method public doUnpause()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_2

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doUnpause: resume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->onSubtitleRemove()V

    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerSuspendNotification:Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerSuspendNotification;->cancelNotification()V

    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pausePlaybackOnPlayerBackgrounded:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Pause playback is true, so not resuming playback from player backgrounded case."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/16 v1, -0x1388

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekWithFuzzRange(II)V

    :goto_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doUnpause() - scheduling \"browse_play\" end reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->scheduleBrowsePlayRunnableIfNeeded(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->unpause()V

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    goto :goto_1
.end method

.method public doZoomIn()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doZoomOut: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    goto :goto_0
.end method

.method public doZoomOut()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-eq v0, v1, :cond_1

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "doZoomIn: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomImage(Z)V

    goto :goto_0
.end method

.method public extendTimeoutTimer()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    return-void
.end method

.method public finish()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mDialogCancedledListener:Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    return-object v0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mEpisodeRowListener:Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLanguage()Lcom/netflix/mediaclient/media/Language;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->language:Lcom/netflix/mediaclient/media/Language;

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    return-object v0
.end method

.method public getPlayPauseListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    return-object v0
.end method

.method public getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    return-object v0
.end method

.method getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    return-object v0
.end method

.method public getSurface2()Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    return-object v0
.end method

.method public getTitleForScreen(Lcom/netflix/mediaclient/servicemgr/Asset;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

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

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    :goto_0
    return-object v0

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->moveFromInterruptedToPlaying()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleConnectivityCheck()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v3, "Check connection"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "offline playback network is not needed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaWithOldPlayer()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->moveToMDXPLayback()V

    move v1, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "No internet connection. Since this is expected state on Verizons\' phones, skip"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v0, v3, :cond_4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "2G only, alert"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->slowNetworkWarning()V

    move v1, v2

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v0, v3, :cond_5

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "WiFi connection, do playback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isPlaybackInWifiOnly(Landroid/content/Context;)Z

    move-result v0

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

    if-eqz v0, :cond_9

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v3, "We should warn user if he is on NON WIFI network!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "nf_play_user_no_wifi_warned_already"

    invoke-static {v0, v3, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_8

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "nf_play_user_no_wifi_warned_already"

    invoke-static {v0, v3, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    :goto_2
    move v1, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "User was already notified regarding disabled auto-playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Warning is not required, proceed with playback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleMdxClick()V
    .locals 1

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

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->reportCachePlayEndedIfNeeded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStopped()V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->moveToMDXPLayback()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStarted()V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    goto :goto_0
.end method

.method public hideNavigationBar()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideNavigationBar()V

    :cond_0
    return-void
.end method

.method public isCoppolaPlayback()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaContextForPlayer(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isInPortrait()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsListening:Z

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsLoadingData:Z

    return v0
.end method

.method public isMDXTargetSelected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-nez v1, :cond_1

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

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->postPlayed:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    goto :goto_0
.end method

.method public isStalled()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    return v0
.end method

.method public launchPlayback()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowCoppolaAutoplay:Z

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "launchPlayback()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isNewPlayerExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->verifyPlayToContinue(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->showCountdownTimer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Buffering not complete - can\'t unpause."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playWhenBufferingComplete:Z

    goto :goto_0
.end method

.method public notifyOthersOfPlayStart()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    const-string/jumbo v0, "playbackType"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Intent PLAYER_PLAY_START sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->updateIntent(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "notifyOthersOfPlayStart() got unsupported activity type - skipping..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyOthersOfPlayStop()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->toIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "playbackType"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackType:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/netflix/mediaclient/media/BookmarkStore;->getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->fromAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Intent PLAYER_PLAY_STOP sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAudioChange(I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update the audio"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Starting playback by seek with forceRebuffer to current position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mReloadOnAudioTrackChange:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionMs()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doSeek(IZ)V

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

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

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setAudioDuck(Z)V

    :cond_1
    const-string/jumbo v0, "AUDIOFOCUS_GAIN"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "AUDIOFOCUS_LOSS"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->setAudioDuck(Z)V

    :cond_2
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    goto :goto_0

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

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isMDXTargetSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Stopping local playback since we already started the remote one."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->resetCurrentPlayback()V

    :cond_1
    return-void
.end method

.method public onCompletion()V
    .locals 4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCompletion, check if we are in postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->stopScreenUpdateTask()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->canExitPlaybackEndOfPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "In PostPlay, allow screen to lock after timeout..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_4

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "keyboard out"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isCoppolaPlayback()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

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

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Scheduling playback when user rotated to landscape."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launchPlayback()V

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    :cond_3
    return-void

    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "keyboard in"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logDeviceDensity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->reset()V

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

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->pauseReporting(Landroid/content/Context;)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreate done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->staticToolbarMenu:Landroid/view/Menu;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

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

    :cond_1
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreateOptionsMenu() was triggered before UI was initialized. Scheduling panel menu update to be called later."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onCreateOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPostponedPanelMenu:Landroid/view/Menu;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldInjectPlayerFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->releaseLockOnScreen()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cancelBrowsePlayRunnable()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pauseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->allowScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->resumeReporting(Landroid/content/Context;Z)V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "====> Destroying PlayerFragment done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetTextureSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSurface2:Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

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

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->inInterruptedOrPendingInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Back used to dismiss interrupter overlay, send it back to framework"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Back..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleBackPressed()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x54

    if-ne p1, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x52

    if-ne p1, v2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->handleControlButtonPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onManagerReady() was called when activity is already not in valid state - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mIsTablet:Z

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->newInstance(Z)Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mResources:Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateUI(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->clear()V

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0300cc

    :goto_2
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setFragmentContentView(I)V

    goto :goto_1

    :cond_6
    const v0, 0x7f0300c8

    goto :goto_2
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    return-void
.end method

.method public onMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addMediaError(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    return-void
.end method

.method public onNccpError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isAutoplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getActionId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "SPY-8915: Ignoring NCCP error, action ID 1 for Coppola autoplay cases"

    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z

    goto :goto_0
.end method

.method public onNrdFatalError()V
    .locals 5

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onNrdFatalError"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to show the error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v1, ""

    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$18;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen is on, just pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPause()V

    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onPause()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onPause()V

    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPause called done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 5

    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "%s onPlayVerification vault: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->continueInitAfterPlayVerify()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Age/Pin verification failed cannot proceed - stop playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method public onPlaybackError(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/PlayerErrorDialogDescriptorFactory;->getHandlerForPlaybackError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackError;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized onPlaying()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPlaying()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPlaying()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepared(Lcom/netflix/mediaclient/media/Watermark;)V
    .locals 4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onPrepared called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoPrepared:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setSurface(II)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->initSurfaceFixedSize(II)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->play()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isZoomEnabledByPlayerType()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoomEnabledByPlayertype(Z)V

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->addWatermark(Lcom/netflix/mediaclient/media/Watermark;)V

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->selectInitialTracks()V

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Watermark not found..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Failed to start player"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_1

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onResume()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onResume()V

    :cond_2
    return-void
.end method

.method public onRetryRequested()V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onRetryRequested()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

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

    const/4 v2, 0x0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "MP onSeekComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iput-boolean v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doPlaying()V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->notifyPlayPauseToListener(Z)V

    :goto_0
    return-void

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    goto :goto_0
.end method

.method public declared-synchronized onStalled()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout stalled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Playout stalled, clear pending updates"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->clearPendingUpdates()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Seek in progress..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Enabled Toast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080190

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setBufferingOverlayVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onStart()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onStart()V

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    :goto_1
    if-nez v0, :cond_6

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "This should NEVER happen, bundle is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->tryFinishActivity()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager not found. Unable to ask for audio focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "AssetExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_7

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

    :cond_7
    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    :cond_8
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "BookmarkSecondsFromStart"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->secondsFromStart:I

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onStart done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_PLAYER_READY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentProgress()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getDuration()I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

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

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->initProgress(I)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

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

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v1, v3, v5}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setProgress(IIZZ)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->removeSplashScreen()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdate()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;->onPlaybackStarted()V

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->launched:Z

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isInPortrait()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setZoom(Z)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "onStarted() - scheduling \"browse_play\" end reporting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->scheduleBrowsePlayRunnableIfNeeded(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->createAdvisories()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

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

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v1, v3, v5}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPostPlaySafely()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->onStop()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onStop()V

    :cond_2
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayerBackgrounded:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->canPlayerBeBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PlayerActivity::onStop done, player is backbrounded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Audio manager not found. Unable to abandon audio focus!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Start play is in progress and user canceled playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v5

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMaxStreamsReachedDialogId:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v1, "PlayerFragment"

    const-string/jumbo v2, "Report max stream reach dialog ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldInjectPlayerFragment(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    :cond_8
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "PlayerActivity::onStop done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update the subtitles"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V

    goto :goto_0
.end method

.method public onSubtitleFailed()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "We failed to change subtitle"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurface2Visibility(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "invisible"

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$14;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onUpdatePts(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity is already not in valid state - skpping onUpdatePts()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPostPlay()Lcom/netflix/mediaclient/ui/player/PostPlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->updatePlaybackPosition(I)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->updateAssetWithCurrentPlayPosition()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to update video size"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

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

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mWidth:I

    iput p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHeight:I

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setSurface(II)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->Loading:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v0

    if-ne v1, v0, :cond_4

    :cond_3
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "UI is not in focus on splash screen. Do NOT pause, ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Alert from some other activity is in front of us. Pause."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment$11;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public performUpAction()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->actionBarBackButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V

    return-void
.end method

.method public playNextVideo(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;ZIZ)V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity already destroyed, ignore next!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v2, "Current Asset is null for request to play next video."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->cleanupAndExit()V

    invoke-static {p1, p2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->createForPostPlay(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;IZ)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isAdvisoryDisabled()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_1

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

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/servicemgr/Asset;->setAdvisoryDisabled(Z)V

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "PlayableId is null - skip playback"

    const-string/jumbo v1, "PlayerFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isExemptFromInterrupterLimit()Z

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

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

    :cond_5
    if-eqz p3, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->noUserInteraction()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v0

    if-nez v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_7

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

    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v4, "Video is null for postplay next playable video."

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto/16 :goto_1

    :cond_8
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mAsset:Lcom/netflix/mediaclient/servicemgr/Asset;

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

    goto/16 :goto_2

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

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0, v4, v3, p4, p5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;ZIZ)V

    goto/16 :goto_0

    :cond_d
    move v3, v1

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

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "playbackClosed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Reloading Video to start playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->loadVideo()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 3

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

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "movies"

    move-object v1, v0

    goto :goto_0
.end method

.method public removePlayPauseListener(Lcom/netflix/mediaclient/ui/player/PlayPauseListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->playPauseListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDetailsIfNeeded(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "requestDetailsIfNeeded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "VideoDetailsIdExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->availableInMyDownloads(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_1

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

    :cond_1
    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeededOffline(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->requestDetailsIfNeededStreaming(Ljava/lang/String;Landroid/os/Bundle;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public resetCurrentPlayback()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->showLoading()V

    return-void
.end method

.method public restartPlayback(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Restarting playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Activity isn\'t already in a valid state - no need to restart the playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mActionId12Count:I

    if-le v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->addError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRestartPlayback:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->close()V

    goto :goto_0
.end method

.method public restorePlaybackAfterSnap()V
    .locals 4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "restorePlaybackAfterSnap."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->keepScreenOn()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setLastActionTime(J)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->startScreenUpdateTask()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->changeActionState(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->doUnpause()V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public selectInitialTracks()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move-result-object v4

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Create localization manager"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;-><init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Z)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialLanguage()Lcom/netflix/mediaclient/util/LanguageChoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

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

    :cond_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v6

    :goto_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

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

    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v8

    const/4 v9, 0x1

    :goto_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlayer:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v4, v1, v0, v10}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z

    new-instance v4, Lcom/netflix/mediaclient/media/Language;

    move-object v5, v3

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setLanguage(Lcom/netflix/mediaclient/media/Language;)V

    return-void

    :cond_2
    const-string/jumbo v4, "PlayerFragment"

    const-string/jumbo v5, "No need to set initial audio source"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_0

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

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mExternalBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Language is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Sets language"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->language:Lcom/netflix/mediaclient/media/Language;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    goto :goto_0
.end method

.method public setMaxStreamsReachedDialogId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mMaxStreamsReachedDialogId:Ljava/lang/String;

    return-void
.end method

.method public setOnStartedPlaybackListener(Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mPlaybackStateListener:Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;

    return-void
.end method

.method public setPauseOnPlayerBackgrounded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->pausePlaybackOnPlayerBackgrounded:Z

    return-void
.end method

.method public setPostPlayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->postPlayed:Z

    return-void
.end method

.method public setSubtitleVisiblity(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "setSubtitleVisiblity: subtitleManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mSubtitleManager:Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/SafeSubtitleManager;->setSubtitleVisibility(Z)V

    goto :goto_0
.end method

.method public setTargetSelection()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Skipping setTargetSelection()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTopPanel()Lcom/netflix/mediaclient/ui/player/TopPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mState:Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction()V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Set user interaction to true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public showControlScreenOverlay(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->onTap(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "Screen is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNavigationBar()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showNavigationBar()V

    :cond_0
    return-void
.end method

.method public startScreenUpdateTask()V
    .locals 2

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->repostOnEverySecondRunnable(I)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "===>> Screen update thread started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopScreenUpdateTask()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "===>> Screen update thread canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wasBufferingComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onBufferingComplete:Z

    return v0
.end method
