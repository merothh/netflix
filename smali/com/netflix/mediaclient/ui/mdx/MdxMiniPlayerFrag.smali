.class public Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "MdxMiniPlayerFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;


# static fields
.field private static final DISABLED:Z = false

.field private static final EXTRA_SAVED_POSITION_SECONDS:Ljava/lang/String; = "saved_position_seconds"

.field public static final FORCE_SHOW_WITH_DUMMY_DATA:Z = false

.field private static final NOTIFY_SHOW_AND_DISABLE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

.field private static final SEEKBAR_UPDATE_DELAY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MdxMiniPlayerFrag"

.field private static final state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;


# instance fields
.field private activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field private draggingInProgress:Z

.field private dummyMdx:Lcom/netflix/mediaclient/servicemgr/IMdx;

.field private final handler:Landroid/os/Handler;

.field private isEndOfPlayback:Z

.field private isInBackground:Z

.field private isShowing:Z

.field private languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field private final languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

.field private mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

.field private final mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

.field private mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

.field private final mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

.field private parentActivityClass:Ljava/lang/String;

.field private remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

.field private final remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

.field private savedPositionSeconds:I

.field private simulatedCurrentTimelinePositionMs:J

.field private simulatedVideoPositionTimeFiredMs:J

.field private final updateSeekBarRunnable:Ljava/lang/Runnable;

.field private views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->handler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$3;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    .line 639
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$4;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    .line 668
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$5;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    .line 853
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$6;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    .line 1018
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$7;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->showAndDisable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateLanguage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isEndOfPlayback:Z

    return p1
.end method

.method static synthetic access$1600()Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;ZZ)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->stopSimulatedVideoPositionUpdate()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;J)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->startSimulatedVideoPositionUpdate(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isInBackground:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateVolumeState(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->draggingInProgress:Z

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->draggingInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedVideoPositionTimeFiredMs:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;J)J
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedVideoPositionTimeFiredMs:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;J)J
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private hideDialogFragmentIfNecessary()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    .line 458
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$MdxMiniPlayerDialog;

    if-eqz v1, :cond_0

    .line 459
    const-string/jumbo v1, "MdxMiniPlayerFrag"

    const-string/jumbo v2, "MDX mini player dialog frag currently shown - hiding"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 462
    :cond_0
    return-void
.end method

.method private declared-synchronized hideSelf()V
    .locals 2

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "hideSelf()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing:Z

    .line 422
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->shouldShowSelf:Z

    .line 423
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->stopSimulatedVideoPositionUpdate()V

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    .line 426
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    const-string/jumbo v0, "Frag is in BG - should just hide self on resume"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelfInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hideSelfInternal()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Hiding MDX Player frag (internal)"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 445
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 447
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideDialogFragmentIfNecessary()V

    .line 451
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideVisibleDialogIfNecessary()V

    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxMiniPlayerHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideVisibleDialogIfNecessary()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 466
    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$MdxMiniPlayerDialog;

    if-eqz v0, :cond_0

    .line 467
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "MDX dialog currently shown - hiding"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 470
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 610
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->parentActivityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    return-void
.end method

.method public static sendShowAndDisableIntent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private showAndDisable()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->showSelf()V

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->stopSimulatedVideoPositionUpdate()V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 201
    return-void
.end method

.method private declared-synchronized showSelf()V
    .locals 2

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "showSelf()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing:Z

    .line 475
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->shouldShowSelf:Z

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateMdxMenu()V

    .line 478
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isInBackground:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_0
    const-string/jumbo v0, "Frag is in BG - should just show self on resume"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 483
    :cond_2
    :try_start_1
    const-string/jumbo v0, "Showing MDX Player frag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 488
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 490
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxMiniPlayerShown(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startSimulatedVideoPositionUpdate(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    mul-long v0, p1, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedCurrentTimelinePositionMs:J

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedVideoPositionTimeFiredMs:J

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    const-string/jumbo v0, "Simulated position update +started+"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method

.method private stopSimulatedVideoPositionUpdate()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    const-string/jumbo v0, "Simulated position update -stopped-"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 515
    :cond_0
    return-void
.end method

.method private updateLanguage()V
    .locals 2

    .prologue
    .line 496
    const-string/jumbo v0, "updateLanguage()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isLanguageReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setLanguageButtonEnabled(Z)V

    .line 498
    return-void
.end method

.method private updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating metadata: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", hash: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v3, :cond_3

    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateTitleText(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v3, 0x7f080170

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 548
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 547
    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v3, 0x7f080171

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateSubtitleText(Ljava/lang/String;)V

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    .line 561
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->getCurrentDeviceFriendlyName(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateDeviceNameText(Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setEpisodesButtonVisibile(Z)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting seek bar max: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgressMax(I)V

    .line 571
    const-string/jumbo v3, "updating seek pos - remote pos: %d, playable bookmark pos: %d, saved pos: %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-nez v0, :cond_5

    move v0, v2

    .line 572
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 573
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->savedPositionSeconds:I

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 571
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 576
    iget v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->savedPositionSeconds:I

    .line 577
    const/4 v1, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->savedPositionSeconds:I

    .line 578
    if-gtz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-nez v0, :cond_6

    move v0, v2

    .line 580
    :goto_3
    if-gtz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    .line 585
    :cond_1
    if-lez v0, :cond_2

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting seek progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_7

    .line 594
    const-string/jumbo v0, "Video is instance of EpisodeDetails, fetching episodes..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$FetchSeasonDetailsCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$FetchSeasonDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 601
    :goto_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateLanguage()V

    .line 602
    return-void

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateTitleText(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateSubtitleText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 562
    goto/16 :goto_1

    .line 571
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 572
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    goto/16 :goto_2

    .line 579
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    goto :goto_3

    .line 598
    :cond_7
    const-string/jumbo v0, "Video is not instance of EpisodeDetails"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateVisibility(ZZ)V
    .locals 2

    .prologue
    .line 518
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVisibility, frag isVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 522
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing:Z

    if-eq v0, p1, :cond_1

    .line 523
    if-eqz p1, :cond_2

    .line 524
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->showSelf()V

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    .line 534
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updatePlayPauseButton(Z)V

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->isVolumeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setVolumeButtonVisibility(Z)V

    .line 536
    return-void

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelf()V

    goto :goto_0
.end method

.method private updateVolumeState(Z)V
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->isVolumeEnabled:Z

    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setVolumeButtonVisibility(Z)V

    .line 607
    return-void
.end method


# virtual methods
.method public attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->attachMenuItem(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V

    .line 205
    return-void
.end method

.method public destroyed()Z
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->handleKeyEvent(Landroid/view/KeyEvent;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z

    move-result v0

    return v0
.end method

.method public getCurrentPositionMs()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->simulatedCurrentTimelinePositionMs:J

    return-wide v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isPlayingRemotely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    return-object v0
.end method

.method public getSlidingPanelDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTargetSelection()Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getTargetList()[Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getPlaybackConfiguration()Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/PlaybackConfiguration;->isLocalPlaybackEnabled()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;-><init>([Landroid/util/Pair;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->mostRecentVolume:I

    return v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public initMdxComponents()V
    .locals 3

    .prologue
    .line 368
    const-string/jumbo v0, "initMdxComponents()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_2

    .line 371
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    .line 373
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateVideoMetadata(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 374
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v2, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 375
    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->shouldShowSelf:Z

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->isPaused()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->updateVisibility(ZZ)V

    .line 378
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remoteTargetUiListener:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    if-eqz v0, :cond_1

    .line 382
    const-string/jumbo v0, "Controls are enabled & mini player is showing. Requesting subs and dubs..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    .line 386
    :cond_1
    const-string/jumbo v0, "Syncing with remote player..."

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sync()V

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->languageSelectorCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->createInstance(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->languageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 395
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public isMdxMenuEnabled()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->computeMdxMenuEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isPlayingLocally()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingRemotely()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isEndOfPlayback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isShowing:Z

    return v0
.end method

.method public notifyPlayingBackLocal()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelf()V

    .line 264
    return-void
.end method

.method public notifyPlayingBackRemote()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 269
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 118
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->parentActivityClass:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 121
    const-string/jumbo v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 123
    if-nez p1, :cond_0

    move v0, v1

    .line 124
    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->savedPositionSeconds:I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savedPositionSeconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->savedPositionSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;)V

    const-string/jumbo v2, "com.netflix.mediaclient.ui.mdx.NOTIFY_SHOW_AND_DISABLE_INTENT"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxKeyEventCallbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxKeyEventHandler:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    const-string/jumbo v1, "MdxMiniPlayerFrag"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxErrorHandler:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    .line 140
    return-void

    .line 123
    :cond_0
    const-string/jumbo v0, "saved_position_seconds"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->mdxMiniPlayerViewCallbacks:Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    invoke-direct {v0, v1, v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Updating to empty state, controls enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateToEmptyState(Z)V

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->destroy()V

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 195
    return-void
.end method

.method public onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideDialogFragmentIfNecessary()V

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 413
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 337
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    const-string/jumbo v0, "Activity is null or destroyed - bailing early"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0225

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    .line 345
    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 349
    :cond_2
    const-string/jumbo v0, "manager ready"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->initMdxComponents()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->destroy()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateToEmptyState(Z)V

    .line 406
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelf()V

    .line 407
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onPanelCollapsed()V

    .line 323
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isEndOfPlayback:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isEndOfPlayback:Z

    .line 325
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelf()V

    .line 327
    :cond_0
    return-void
.end method

.method public onPanelExpanded()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onPanelExpanded()V

    .line 319
    return-void
.end method

.method public onPanelSlide(F)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onPanelSlide(F)V

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->onResume()V

    .line 156
    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "onResumeFragments"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isInBackground:Z

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelfInternal()V

    .line 179
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on resume - currentVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shouldShowSelf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->shouldShowSelf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->log(Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->currentVideo:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->shouldShowSelf:Z

    if-nez v0, :cond_3

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->hideSelf()V

    goto :goto_0

    .line 176
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->showSelf()V

    goto :goto_0
.end method

.method public declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string/jumbo v0, "saved_position_seconds"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->views:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->isInBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDialogResponse(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->sendDialogResponse(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->state:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;

    iput p1, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->mostRecentVolume:I

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag;->remotePlayer:Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->setVolume(I)V

    .line 311
    :cond_0
    return-void
.end method
