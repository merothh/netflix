.class public abstract Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NetflixActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListenerProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag$MessageResponseProvider;
.implements Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final ACTION_BAR_VISIBILITY_CHECK_DELAY_MS:J = 0x3e8L

.field public static final ACTION_CS_CALL_ENDED:Ljava/lang/String; = "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

.field public static final ACTION_CS_CALL_STARTED:Ljava/lang/String; = "com.netflix.mediaclient.ui.cs.ACTION_CALL_STARTED"

.field public static final ACTION_DISPLAY_ERROR:Ljava/lang/String; = "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

.field private static final ACTION_FINISH_ALL_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

.field public static DL_REQUEST_CODE:I = 0x0

.field public static final EXPAND_MINI_PLAYER_DELAY_MS:J = 0x190L

.field public static final EXTRA_DL_PLAYABLE_ID:Ljava/lang/String; = "playableId"

.field public static final EXTRA_DL_VIDEO_TYPE:Ljava/lang/String; = "videoTYpe"

.field public static final EXTRA_ENABLE_TRANSITION_ANIMATION:Ljava/lang/String; = "com.netflix.mediaclient._TRANSITION_ANIMATION"

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field private static final EXTRA_IS_MDX_CONNECTING:Ljava/lang/String; = "mdx_connecting"

.field protected static final EXTRA_MDX_EXPAND_MINIPLAYER:Ljava/lang/String; = "expandMinPlayer"

.field public static final EXTRA_PARAM_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_PARAM_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_PARAM_URL:Ljava/lang/String; = "url"

.field private static final EXTRA_SHOULD_EXPAND_MINI_PLAYER:Ljava/lang/String; = "mini_player_expanded"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final FRAG_DIALOG_TAG:Ljava/lang/String; = "frag_dialog"

.field private static final INSTANCE_STATE_SAVED_TAG:Ljava/lang/String; = "NetflixActivity_instanceState"

.field private static final PRINT_LOADING_STATUS:Z = false

.field private static final TAG:Ljava/lang/String; = "NetflixActivity"

.field private static hasShownEndpointLatch:Z

.field private static isTutorialOn:Z


# instance fields
.field private actionBarHeight:I

.field activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

.field private final autoUnregisterLocalReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final autoUnregisterReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final autokillReceiver:Landroid/content/BroadcastReceiver;

.field private final closeMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private final expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

.field protected handler:Landroid/os/Handler;

.field protected final instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isVisible:Z

.field private final localBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

.field protected mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mConnectingToTarget:Z

.field protected mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field private mErrorDialogId:Ljava/lang/String;

.field private mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

.field protected mHelpMenuItem:Landroid/view/MenuItem;

.field protected mIsTablet:Z

.field protected mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field private mNoNetworkOverlay:Landroid/widget/RelativeLayout;

.field private final mPendingServiceManagerRunnable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

.field private netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

.field private final panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field private final printLoadingStatusRunnable:Ljava/lang/Runnable;

.field private serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private shouldExpandMiniPlayer:Z

.field protected slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

.field private tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field private final updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

.field private final userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected visibleDialog:Landroid/app/Dialog;

.field protected final visibleDialogLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasShownEndpointLatch:Z

    const/4 v0, 0x3

    sput v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->DL_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->EMPTY:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autokillReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$5;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$7;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->localBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showEndpointPathDebugToast(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/offline/TutorialHelper;)Lcom/netflix/mediaclient/ui/offline/TutorialHelper;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupDownloadButtonListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxEndOfPostPlay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->collapseSlidingPanel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleDisplayToken(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleErrorDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleCustomerSupportCallEnded()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandMiniPlayer:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandMiniPlayer:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addMdxReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addUserAgentUpdateReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateHelpInMenuStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addFab()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayNoNetworkOverlay()V

    return-void
.end method

.method private declared-synchronized addFab()V
    .locals 4

    monitor-enter p0

    :try_start_0
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCustomerSupportCallInProgress()Z

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FAB existed, make it visible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add FAB to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FAB anchor is NULL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCustomerSupportCallInProgress()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Customer support call is NOT in progress for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    const v1, 0x7f0f0124

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_7

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Fab is not found in root layout! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/16 v2, 0x50

    iput v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private addMdxReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity does not required MDX, skipping add of MDX receiver."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Listen to updated from MDX service, add"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Listen to updated from MDX service, added"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addNoNetworkOverlay()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showNoNetworkOverlayIfNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Add No network overlay to %s "

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FAB anchor is NULL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    const v1, 0x7f0f023c

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_4

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "No network overlay is not found in root layout! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private addUserAgentUpdateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private collapseSlidingPanel()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Collapsing sliding panel..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->collapsePane()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onPanelCollapsed()V

    :cond_1
    return-void
.end method

.method private displayErrorDialogIfExist()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->getCurrentError()Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "NetflixActivity"

    const-string/jumbo v3, "Display error dialog"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$17;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$17;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/error/ErrorDescriptor;->getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->errorDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->activateLinkIfExist(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Unable to display an error dialog, data not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized displayNoNetworkOverlay()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addNoNetworkOverlay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static finishAllActivities(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSlidingRightInTransition()I
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040011

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04000e

    goto :goto_0
.end method

.method private getSlidingRightOutTransition()I
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040012

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f04000f

    goto :goto_0
.end method

.method private handleCustomerSupportCallEnded()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Customer support call ended, remove FAB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeFab()V

    return-void
.end method

.method private handleDisplayToken(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private handleErrorDialog()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Display error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Not visible, can not display error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasMiniPlayerFrag()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomerSupportCallInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isCallInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTutorialOn()Z
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn:Z

    return v0
.end method

.method private notifyMdxEndOfPostPlay()V
    .locals 2

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "MDX end of postplay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hidePane()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideMiniPlayer()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$8;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private onFromBackground()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMDXPostPlayOnResume()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->uiComingFromBackground()V

    return-void
.end method

.method private overridePendingTransitionAnimation(II)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->isTransitionAnimationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->allowTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking overridePendingTransition animation on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method private postActionBarUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeDownloadButtonListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    goto :goto_0
.end method

.method private declared-synchronized removeFab()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Unable to remove FAB!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Hiding FAB..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setAssistBlocked(Landroid/view/View;Z)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setAssistBlocked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t execute setAssistBlocked method. Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setInstanceStateSaved(Z)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity_instanceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instanceStateSaved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setTutorialOn(Z)V
    .locals 0

    return-void
.end method

.method private setupDownloadButtonListener()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requiresDownloadButtonListener()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDownloadButtonListener()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(Z)V

    :cond_2
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(Z)V

    goto :goto_0
.end method

.method private shouldDismissVisibleDialog()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    if-nez v2, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->$SwitchMap$com$netflix$mediaclient$android$activity$NetflixActivity$DismissingDialogConfig:[I

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showEndpointPathDebugToast(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    sget-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasShownEndpointLatch:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasShownEndpointLatch:Z

    goto :goto_0
.end method

.method private updateHelpInMenuStatus()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDebugOverlay()V
    .locals 0

    return-void
.end method

.method protected allowTransitionAnimation()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canShowSnackBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/KubrickKidsActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/KubrickKidsActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    invoke-static {}, Lcom/netflix/mediaclient/util/MdxUtils;->isMediaSessionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialog(Landroid/support/v7/app/AlertDialog$Builder;)Landroid/app/Dialog;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public displayDialog(Landroid/app/Dialog;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v2, "Error dualog is displayed, do not remove it!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected displayErrorDialog(Ljava/lang/String;IZ)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "%s ( %d )"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :goto_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const/4 v1, 0x0

    const v2, 0x7f0801c0

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetflixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "displayServiceAgentDialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isCritical"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    monitor-exit v1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "NetflixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "displayServiceAgentDialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "NetflixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "displayServiceAgentDialog, no dialog  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayServiceAgentDialog, Dialog visible, skipping  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected expandMiniPlayerIfVisible()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity is visible, checking for MDX mini player to see if it can be expanded..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NetflixActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MDX frag showing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxMiniPlayerShown(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public finish()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": finish has been called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    const v0, 0x7f04000b

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    return-void
.end method

.method public getActionBarHeight()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    return v0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    const v0, 0x1020002

    return v0
.end method

.method protected getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogFragment()Landroid/app/DialogFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "frag_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    return-object v0
.end method

.method public getDismissingDialogConfiguration()Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    return-object v0
.end method

.method public getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object v0
.end method

.method public getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method public getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method protected getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    return-object v0
.end method

.method public getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    return-object v0
.end method

.method public abstract getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected handleAccountDeactivated()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->create(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    instance-of v0, p0, Lcom/netflix/mediaclient/ui/login/LogoutActivity;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Account deactivated, leave to LogoutActivity to complete transition..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0
.end method

.method protected handleActionOnNoNetworkOverlay()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->recreate()V

    return-void
.end method

.method protected handleBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INVALID_COUNRTY:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "User accessing Netflix in a not supported country. Show alert and kill self"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INSUFFICIENT_CONTENT:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Insufficient content for this profile - cant show lolomo. Show alert and go to profile selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const v1, 0x7f0800fa

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method protected handleInvalidCurrentProfile()V
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected handleNetworkErrorDialog()V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method protected handleProfileActivated()V
    .locals 0

    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 0

    return-void
.end method

.method protected handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected handleProfilesListUpdated()V
    .locals 0

    return-void
.end method

.method public handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;
    .locals 9

    const v8, 0x7f080239

    const v7, 0x7f0801ab

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v1, ""

    sget-object v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080243

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "%s ( %d )"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "%s ( %d )"

    new-array v1, v6, [Ljava/lang/Object;

    const v2, 0x7f0800f4

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p0, v0, v1, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OBSOLETE_APP_VERSION:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-object v0, v1

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "%s ( %d )"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :pswitch_4
    const v0, 0x7f08023a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :pswitch_5
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v2, "going to signup activity"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->isSignUpEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowWithNewCookiesIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected hasUpAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hideMiniPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    :cond_0
    const v0, 0x7f0f01f4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    :cond_1
    return-void
.end method

.method protected initSlidingPanel()V
    .locals 5

    const/4 v3, 0x0

    const v0, 0x7f0f0118

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasMiniPlayerFrag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a0026

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldApplyPaddingToSlidingPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f0a01d5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    goto :goto_1
.end method

.method protected initToolbar()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-void
.end method

.method isComingFromBackground()Z
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground()Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isComingFromBackground(), wasinBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public isConnectingToTarget()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    return v0
.end method

.method public isDialogFragmentVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstanceStateSaved()Z
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMdxPlayerShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanelExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    return v0
.end method

.method protected lockScreenOrientation()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getPhoneOrientation(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_TWO:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->shouldLockActivitiesToPortrait(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldForcePortraitInMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public notifyMdxEndOfPlayback()V
    .locals 2

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "MDX end of playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hidePane()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideMiniPlayer()V

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    :cond_1
    return-void
.end method

.method public notifyMdxMiniPlayerHidden()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "MDX frag hidden"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "user_flow_mdx_legacy"

    :goto_0
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->endUserflow(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->collapseSlidingPanel()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideMiniPlayer()V

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "user_flow_mdx_memento_%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "user_flow_mdx_memento2_%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyMdxMiniPlayerShown(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "MDX frag shown"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "user_flow_mdx_legacy"

    :goto_0
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->beginUserflow(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMiniPlayer()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->expandPane()Z

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "user_flow_mdx_memento_%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "user_flow_mdx_memento2_%d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyMdxShowDetailsRequest()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    sget v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->DL_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "playableId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videoTYpe"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v2

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v2, v0, v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->requestOfflineViewing(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": back button pressed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->handleBackPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isPaneVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "DialogFragment is visible, closing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "MDX mini player sliding panel was expanded, collapsing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->collapsePane()Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->backButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->getDefaultActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Creating activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldShowKidsBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f0e00fc

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    if-eqz p1, :cond_6

    const-string/jumbo v0, "mini_player_expanded"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandMiniPlayer:Z

    if-eqz p1, :cond_2

    const-string/jumbo v0, "mdx_connecting"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Should expand mini player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandMiniPlayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectingToTarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v0, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_EXPAND_MDX_MINI_PLAYER"

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.netflix.mediaclient.service.ACTION_CLOSE_MINI_PLAYER"

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->localBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLastKnownLocale()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupServicemanager()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setAssistBlocked(Landroid/view/View;Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lockScreenOrientation()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightInTransition()I

    move-result v0

    const v1, 0x7f04000a

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    const-string/jumbo v1, "NetflixActivity"

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addItems(Landroid/view/Menu;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showHelpInMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "source"

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "entry"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->releaseCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->release()V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->destroyAll()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEVICE_WITH_MENU_BUTTON_BUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEVICE_WITH_MENU_BUTTON_BUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->openOptionsMenu()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Received new intent:"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldSetIntentOnNewIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setIntent(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPlayVerified vault: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMenuItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->handleHomeButtonSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->activityPaused()V

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->releaseCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->startActivityTransitionTimer()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDownloadButtonListener()V

    return-void
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPlayVerified vault: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": onPostCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->onResumeFragments()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->dumpToDisk(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponse: User selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->sendDialogResponse(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->activityResumed()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isComingFromBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onFromBackground()V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->setCurrentActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->printLoadingStatusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->stopActivityTransitionTimer()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addFab()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayNoNetworkOverlay()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupDownloadButtonListener()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "mini_player_expanded"

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "mdx_connecting"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSlidingPanelCollapsed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onSlidingPanelExpanded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "mini_player"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initSlidingPanel()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldReportNavigationActionEndedOnStop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v1, v4}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldDismissVisibleDialog()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Report end of error dialog ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->errorDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mErrorDialogId:Ljava/lang/String;

    :cond_3
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "NetflixActivity"

    const-string/jumbo v3, "Failed to dismiss dialog!"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public performUpAction()V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->upButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const v0, 0x7f04000b

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->createShowIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autokillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public removeDialogFrag()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public removeNoNetworkOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public removeVisibleDialog()V
    .locals 2

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetflixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Report UI modeless view session ended for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in portrait: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". Dialog id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->endUiModelessViewSession(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NetflixActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Report UI modeless view session started for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in portrait: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Dialog id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v1, v2, p1, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiModelessViewSession(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NetflixActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Report UI view change for  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in portrait: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->uiViewChanged(ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    :cond_1
    return-void
.end method

.method public requestDownloadButtonRefresh(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-virtual {v0, p1, p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method protected requiresDownloadButtonListener()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public runInUiThread(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;->run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setConnectingToTarget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAttachToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initToolbar()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addDebugOverlay()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAttachToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initToolbar()V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addDebugOverlay()V

    return-void
.end method

.method public setDismissingDialogConfiguration(Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-void
.end method

.method public setLifeCycleListener(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method

.method public setSlidingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setupServicemanager()V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isComingFromBackground()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;Z)V

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-void
.end method

.method public final shouldAddMdxToMenu()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Activity does not required MDX."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Service manager is null or service manager is not ready."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "User is not logged in, not adding MDX icon"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isAnyMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/IMdx;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldFinishOnManagerError()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldReportNavigationActionEndedOnStop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSetIntentOnNewIntent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldShowKidsBackground()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showAboutInMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAccountInMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showCallInProgressFloatingActionButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showContactUsInSlidingMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetflixActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Showing toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public showDialog(Landroid/app/DialogFragment;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-10201, Dialog fragment already visible ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") while trying to display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". There should only be one visible at time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetflixActivity"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Instance state has been saved - skipping showing dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v1, v2, Landroid/app/DialogFragment;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v7, "Dismissing previous dialog"

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    check-cast v0, Landroid/app/DialogFragment;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_4
    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v7, "Removing previous dialog"

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-string/jumbo v1, "NetflixActivity"

    const-string/jumbo v2, "Showing dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "frag_dialog"

    invoke-static {p1, v1, v6, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->safeShowDialogFragment(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    move v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to show dialog, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NetflixActivity"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    monitor-exit v5

    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public showFetchErrorsToast()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->areFetchErrorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Fetch errors ENABLED"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "Fetch errors DISABLED"

    goto :goto_0
.end method

.method protected showHelpInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showMDXPostPlayOnResume()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->getPostplayState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoIdsPostplay()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-lez v3, :cond_3

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "id"

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.RDP_CLOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->sendShowAndDisableIntent(Landroid/content/Context;)V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->finishMDXController(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    if-lez v2, :cond_0

    iget v0, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->showMDXController(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;ZLcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showMiniPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0a0026

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->showPane()V

    const v0, 0x7f0f01f4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_3
    instance-of v0, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRDP()Z

    check-cast v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->hideRelatedGroup()V

    goto :goto_0

    :cond_4
    const v0, 0x7f0a01d5

    goto :goto_1
.end method

.method protected showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOfflineInMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startLaunchActivityIfVisible()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity is visible, starting launch activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "startLaunchActivityIfVisible()"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "Activity is not visible, skipping launch of new activity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTargetSelectionDialog()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxFrag:Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public updateVisibleDialog(Landroid/app/Dialog;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
