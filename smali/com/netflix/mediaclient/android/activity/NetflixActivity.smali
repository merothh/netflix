.class public abstract Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.super Lo/DateSorter;
.source ""

# interfaces
.implements Lo/Du$Application;
.implements Lo/JsDialogHelper;
.implements Lo/Ms$ActionBar;
.implements Lo/acQ$Application;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/activity/NetflixActivity$StateListAnimator;,
        Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;,
        Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;,
        Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;,
        Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_VISIBILITY_CHECK_DELAY_MS:J = 0x3e8L

.field private static final ACTION_FINISH_ALL_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

.field public static final CAST_PLAYER_FRAG_TAG:Ljava/lang/String; = "cast_player"

.field public static final EXTRA_DL_PLAYABLE_ID:Ljava/lang/String; = "extra_download_playableId"

.field public static final EXTRA_DL_VIDEO_TYPE_STRING:Ljava/lang/String; = "extra_download_videoType_string"

.field public static final EXTRA_ENABLE_TRANSITION_ANIMATION:Ljava/lang/String; = "com.netflix.mediaclient._TRANSITION_ANIMATION"

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field public static final EXTRA_EPISODE_ID:Ljava/lang/String; = "extra_episode_id"

.field public static final EXTRA_EXPAND_CAST_PLAYER:Ljava/lang/String; = "expandCastPlayer"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field private static final EXTRA_IS_MDX_CONNECTING:Ljava/lang/String; = "mdx_connecting"

.field public static final EXTRA_PLAYER_ID:Ljava/lang/String; = "extra_player_id"

.field public static final EXTRA_PLAY_CONTEXT:Ljava/lang/String; = "extra_play_context"

.field private static final EXTRA_SHOULD_EXPAND_CAST_PLAYER:Ljava/lang/String; = "cast_player_expanded"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "extra_video_id"

.field public static final EXTRA_VIDEO_TYPE_STRING_VALUE:Ljava/lang/String; = "extra_video_type_string_value"

.field public static final FRAG_DIALOG_TAG:Ljava/lang/String; = "frag_dialog"

.field public static final FULL_SCREEN_DIALOG_TAG:Ljava/lang/String; = "FullScreenDialogTag"

.field private static final INSTANCE_STATE_SAVED_TAG:Ljava/lang/String; = "NetflixActivity_instanceState"

.field private static final PREPARE_HELPER_NO_OP:Lo/Ag;

.field private static final TAG:Ljava/lang/String; = "NetflixActivity"

.field public static final WINDOW_FOCUS_DELAY_MS:J = 0x64L

.field private static isTutorialOn:Z


# instance fields
.field private actionBarHeight:I

.field activityPageOfflineAgentListener:Lo/PS;

.field private final autoUnregisterLocalReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final autoUnregisterReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final autokillReceiver:Landroid/content/BroadcastReceiver;

.field private castFabPresenter:Lo/LS;

.field private castPlayerFrag:Lo/LU;

.field private final closeCastPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private currentTrackerId:Ljava/lang/String;

.field private final expandCastPlayerReceiver:Landroid/content/BroadcastReceiver;

.field protected fragmentHelper:Lo/Ih;

.field public handler:Landroid/os/Handler;

.field private hasSavedInstance:Z

.field protected final instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isVisible:Z

.field private keyboardState:Lo/RecoverySystem;

.field private lastWindowInsets:Landroid/view/WindowInsets;

.field private final localBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mActivityDestroy:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUpdateHandler:Lo/CG;

.field private mBackToCustomerSupportCallFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private mConnectingToTarget:Z

.field protected mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field private mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field protected mHelpMenuItem:Landroid/view/MenuItem;

.field protected mIsTablet:Z

.field protected mLoadingStatusCallback:Lo/JsDialogHelper$Activity;

.field private mMdxStatusUpdated:Z

.field private mNoNetworkOverlay:Landroid/widget/RelativeLayout;

.field private final mPendingServiceManagerRunnable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareHelper:Lo/Ag;

.field protected mPresentationSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryDisplay:Lo/Tp;

.field private final mShownPopupMenus:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/widget/PopupMenu;",
            ">;"
        }
    .end annotation
.end field

.field public managerStatusListener:Lo/zT;

.field private netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

.field protected netflixBottomNavBar:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

.field private netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

.field private final panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

.field private renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

.field private final serviceManager:Lo/Am;

.field private shakeDetector:Lo/afZ;

.field private shouldExpandCastPlayer:Z

.field protected slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

.field protected statusBarBackground:Lo/QuickContactBadge;

.field protected systemNavBarBackground:Lo/ExpandableListPosition;

.field protected systemNavBarHeight:I

.field private tutorialHelper:Lo/Se;

.field private final updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

.field private final userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected visibleDialog:Landroid/app/Dialog;

.field protected final visibleDialogLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    new-instance v0, Lo/CX;

    invoke-direct {v0}, Lo/CX;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->PREPARE_HELPER_NO_OP:Lo/Ag;

    const/4 v0, 0x1

    .line 330
    sput-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 223
    invoke-direct {p0}, Lo/DateSorter;-><init>()V

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    .line 277
    const-class v0, Lo/DS;

    .line 278
    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DS;

    invoke-virtual {v0}, Lo/DS;->e()Lo/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    .line 316
    sget-object v0, Lo/Ih;->a:Lo/Ih;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    const-string v0, ""

    .line 320
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    .line 331
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->PREPARE_HELPER_NO_OP:Lo/Ag;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPrepareHelper:Lo/Ag;

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->keyboardState:Lo/RecoverySystem;

    .line 345
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    .line 347
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->r()Lo/Tp;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mSecondaryDisplay:Lo/Tp;

    .line 360
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 365
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 377
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    .line 382
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDialogCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 392
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    .line 397
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    .line 418
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPresentationSessionMap:Ljava/util/Map;

    .line 424
    sget-object v0, Lo/Se;->b:Lo/Se;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lo/Se;

    .line 429
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    .line 431
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    .line 514
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    .line 2446
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$3;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autokillReceiver:Landroid/content/BroadcastReceiver;

    .line 2456
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 2473
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 3146
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 3326
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    .line 3433
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    .line 3661
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->localBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lambda$initWindowInsetView$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCollapsedCastHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->irisRefresh(Lo/Am;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addUserAgentUpdateReceiver()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateHelpInMenuStatus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addFab()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayNoNetworkOverlay()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupOfflineAgentListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$1600()Lo/Ag;
    .locals 1

    .line 223
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->PREPARE_HELPER_NO_OP:Lo/Ag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerEndOfPostPlay()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->collapseSlidingPanel()V

    return-void
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LS;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castFabPresenter:Lo/LS;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleDisplayToken(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LS;)Lo/LS;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castFabPresenter:Lo/LS;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 0

    .line 223
    iget p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    return p0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideActionBar()V

    return-void
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showActionBar()V

    return-void
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/android/activity/NetflixActivity;F)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->applySlidePanelOffsetToBottomBar(F)V

    return-void
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleErrorDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleCustomerSupportCallEnded()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Ag;)Lo/Ag;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPrepareHelper:Lo/Ag;

    return-object p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Se;)Lo/Se;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lo/Se;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LU;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandCastPlayer:Z

    return p0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandCastPlayer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addMdxReceiver()V

    return-void
.end method

.method private declared-synchronized addFab()V
    .locals 5

    monitor-enter p0

    .line 2312
    :try_start_0
    instance-of v0, p0, Lo/acV;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2313
    monitor-exit p0

    return-void

    .line 2316
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCustomerSupportCallInProgress()Z

    move-result v0

    .line 2317
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    monitor-exit p0

    return-void

    .line 2329
    :cond_1
    :try_start_2
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2330
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 2334
    monitor-exit p0

    return-void

    :cond_2
    if-nez v0, :cond_3

    :try_start_3
    const-string v0, "NetflixActivity"

    .line 2338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Customer support call is NOT in progress for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2339
    monitor-exit p0

    return-void

    .line 2342
    :cond_3
    :try_start_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2343
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->B:I

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2344
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->F:I

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_4

    const-string v0, "NetflixActivity"

    const-string v1, "Fab is not found in root layout! This should NOT happen!"

    .line 2346
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2347
    monitor-exit p0

    return-void

    .line 2350
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    const/16 v2, 0x51

    .line 2351
    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->e:I

    .line 2352
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBarHeight()I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->systemNavBarHeight:I

    add-int/2addr v2, v3

    .line 2353
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 2354
    invoke-virtual {v1, v3, v3, v3, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->setMargins(IIII)V

    .line 2355
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2357
    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$5;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2369
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 2370
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2371
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addMdxReceiver()V
    .locals 3

    .line 1928
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    const-string v1, "NetflixActivity"

    if-nez v0, :cond_0

    const-string v0, "Activity does not required MDX, skipping add of MDX receiver."

    .line 1929
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Listen to updated from MDX service, add"

    .line 1933
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    new-instance v0, Lo/Mg;

    invoke-direct {v0, p0}, Lo/Mg;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1935
    invoke-virtual {v0}, Lo/Mg;->b()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "Listen to updated from MDX service, added"

    .line 1936
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addNoNetworkOverlay()V
    .locals 5

    .line 2244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showNoNetworkOverlayIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2248
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "NetflixActivity"

    const-string v3, "Add No network overlay to %s "

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2250
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 2251
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Z)V

    return-void

    .line 2255
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2256
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_2

    return-void

    .line 2263
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2264
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->de:I

    iget-object v4, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2265
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ll:I

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    .line 2266
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    const-string v0, "No network overlay is not found in root layout! This should NOT happen!"

    .line 2267
    invoke-static {v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2271
    :cond_3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    const/16 v1, 0x50

    .line 2272
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;->e:I

    .line 2273
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2275
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$30;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$30;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addUserAgentUpdateReceiver()V
    .locals 2

    .line 1952
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->userAgentUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/yn;->d()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private applySlidePanelOffsetToBottomBar(F)V
    .locals 1

    .line 3427
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3428
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(F)V

    .line 3430
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    return-void
.end method

.method private collapseSlidingPanel()V
    .locals 2

    .line 2648
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetflixActivity"

    const-string v1, "Collapsing sliding panel..."

    .line 2649
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2655
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_1

    .line 2656
    invoke-interface {v0}, Lo/LU;->N()V

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lambda$initWindowInsetView$1(Landroid/view/View;I)V

    return-void
.end method

.method private dismissFullScreenDialog()Z
    .locals 3

    .line 2755
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2760
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v2, "FullScreenDialogTag"

    invoke-virtual {v0, v2}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/WebChromeClient;

    if-eqz v0, :cond_2

    .line 2762
    invoke-virtual {v0}, Lo/WebChromeClient;->m()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2766
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    invoke-virtual {v1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    .line 2767
    invoke-virtual {v1, v0}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 2768
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->e()V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private displayErrorDialogIfExist(Lo/Am;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 3719
    invoke-virtual {p1}, Lo/Am;->s()Lo/zF;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 3724
    :cond_0
    invoke-interface {v1}, Lo/zF;->e()Lo/hR;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3728
    :cond_1
    invoke-interface {v1}, Lo/hR;->d()Lo/hK;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "NetflixActivity"

    const-string v3, "Display error dialog"

    .line 3729
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    new-instance v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;

    invoke-direct {v2, p0, p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$19;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/hR;)V

    .line 3736
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-interface {v1}, Lo/hR;->d()Lo/hK;

    move-result-object v1

    invoke-static {p0, p1, v1, v2}, Lo/CalendarViewLegacyDelegate;->b(Landroid/content/Context;Landroid/os/Handler;Lo/hK;Ljava/lang/Runnable;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 3737
    sget-object v1, Lcom/netflix/cl/model/AppView;->errorDialog:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportPresentationSessionStart(Lcom/netflix/cl/model/AppView;)V

    .line 3739
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3740
    :try_start_0
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3741
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v0

    .line 3745
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 3746
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3749
    :cond_3
    invoke-virtual {p1}, Lo/ScrollBarDrawable$ActionBar;->e()Lo/ScrollBarDrawable;

    move-result-object p1

    .line 3750
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 3752
    invoke-static {p1}, Lo/CalendarViewLegacyDelegate;->c(Landroid/app/Dialog;)V

    .line 3754
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 3755
    :try_start_2
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 3757
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->filterDeadObjectException(Ljava/lang/Throwable;)V

    .line 3758
    monitor-exit v1

    return v0

    :catchall_1
    move-exception p1

    .line 3761
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    const-string p1, "NetflixActivity"

    const-string v1, "Unable to display an error dialog, data not found!"

    .line 3763
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method private declared-synchronized displayNoNetworkOverlay()V
    .locals 1

    monitor-enter p0

    .line 2232
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V

    goto :goto_0

    .line 2235
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addNoNetworkOverlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private filterDeadObjectException(Ljava/lang/Throwable;)V
    .locals 4

    .line 3771
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3772
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NetflixActivity"

    const-string v3, "Failed to show error dialog. Dead object: %b"

    invoke-static {v2, p1, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez v0, :cond_0

    .line 3774
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static finishAllActivities(Landroid/content/Context;)V
    .locals 2

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getCollapsedCastHeight()I
    .locals 3

    .line 2603
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/LU;->E()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2604
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2605
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getExitTransitionAnimation()I
    .locals 1

    .line 544
    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->a:I

    return v0
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 1

    .line 2419
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p0, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez p0, :cond_0

    .line 2421
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p0

    const-string v0, "getImageLoader passed a non activity context"

    invoke-interface {p0, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2424
    :cond_0
    iget-object p0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {p0}, Lo/Am;->g()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p0

    return-object p0
.end method

.method private getMdxTargetCallback()Lo/Mh;
    .locals 1

    .line 1728
    invoke-static {}, Lo/kD;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v0, :cond_0

    .line 1729
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->p()Lo/Mh;

    move-result-object v0

    return-object v0

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    return-object v0
.end method

.method public static getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;
    .locals 0

    .line 3815
    invoke-static {p0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3817
    invoke-virtual {p0}, Lo/Am;->q()Lo/nS;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getReEnterTransitionAnimation()I
    .locals 1

    .line 549
    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->c:I

    return v0
.end method

.method private getSlidingRightInTransition()I
    .locals 1

    .line 3800
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->b:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->e:I

    :goto_0
    return v0
.end method

.method private getSlidingRightOutTransition()I
    .locals 1

    .line 3796
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->f:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->d:I

    :goto_0
    return v0
.end method

.method private handleCustomerSupportCallEnded()V
    .locals 0

    .line 3697
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeFab()V

    return-void
.end method

.method private handleDisplayToken(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private handleErrorDialog()V
    .locals 2

    .line 3702
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    const-string v1, "NetflixActivity"

    if-eqz v0, :cond_0

    const-string v0, "Display error dialog"

    .line 3703
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()Z

    return-void

    :cond_0
    const-string v0, "Not visible, can not display error dialog"

    .line 3705
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasCastPlayerFrag()Z
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/LU;->I()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideActionBar()V
    .locals 1

    const/4 v0, 0x1

    .line 3393
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideActionBar(Z)V

    return-void
.end method

.method private hideActionBar(Z)V
    .locals 2

    .line 3397
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3401
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    :cond_1
    return-void
.end method

.method private initWindowInsetView()V
    .locals 2

    .line 841
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rP:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 842
    invoke-static {}, Lo/kD;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tH:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 848
    new-instance v1, Lo/CookieManager;

    invoke-direct {v1, p0}, Lo/CookieManager;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 853
    new-instance v1, Lo/DownloadListener;

    invoke-direct {v1, p0, v0}, Lo/DownloadListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1
    return-void
.end method

.method private irisRefresh(Lo/Am;)V
    .locals 2

    .line 1173
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/ep;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->irisRefreshImpl(Lo/Am;)V

    goto :goto_1

    .line 1175
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->s()Lio/reactivex/Observable;

    move-result-object v0

    .line 1176
    invoke-static {p0}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->d(Lo/UnicodeScript;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$24;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V

    .line 1177
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->b(Lio/reactivex/Observer;)V

    :goto_1
    return-void
.end method

.method private isCustomerSupportCallInProgress()Z
    .locals 1

    .line 2385
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->o()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lo/acV;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isErrorDialogVisible()Z
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPresentationSessionMap:Ljava/util/Map;

    sget-object v1, Lcom/netflix/cl/model/AppView;->errorDialog:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTutorialOn()Z
    .locals 1

    .line 357
    sget-boolean v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn:Z

    return v0
.end method

.method private synthetic lambda$initWindowInsetView$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 849
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lastWindowInsets:Landroid/view/WindowInsets;

    .line 850
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateInsets(Landroid/view/View;)V

    return-object p2
.end method

.method private synthetic lambda$initWindowInsetView$1(Landroid/view/View;I)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateInsets(Landroid/view/View;)V

    return-void
.end method

.method private notifyCastPlayerEndOfPostPlay()V
    .locals 2

    const-string v0, "NetflixActivity"

    const-string v1, "CastPlayer end of postplay"

    .line 2528
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 2531
    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n()V

    .line 2534
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideCastPlayer()V

    .line 2536
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2537
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private onFromBackground()V
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showCastPlayerPostPlayOnResume()V

    .line 1204
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->ac()V

    return-void
.end method

.method private onSystemVolumeChanged()V
    .locals 4

    .line 801
    const-class v0, Landroid/media/AudioManager;

    invoke-static {p0, v0}, Lo/OnSystemUiVisibilityChangeListener;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 803
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 804
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 809
    :goto_1
    const-class v3, Lo/WebViewLibraryLoader;

    invoke-static {v3}, Lo/WebViewFragment;->a(Ljava/lang/Class;)Lo/WebViewFactory;

    move-result-object v3

    check-cast v3, Lo/WebViewLibraryLoader;

    invoke-virtual {v3, v0, v2}, Lo/WebViewLibraryLoader;->e(ZZ)V

    .line 812
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(FZ)V

    :cond_2
    return-void
.end method

.method private overridePendingTransitionAnimation(II)V
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->allowTransitionAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private postActionBarUpdate()V
    .locals 4

    .line 2662
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2663
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateActionBarVisibilityRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized removeFab()V
    .locals 2

    monitor-enter p0

    .line 2375
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mFabAnchor:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NetflixActivity"

    const-string v1, "Hiding FAB..."

    .line 2378
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mBackToCustomerSupportCallFAB:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "NetflixActivity"

    const-string v1, "Unable to remove FAB!"

    .line 2376
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2381
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeOfflineAgentListener()V
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    if-eqz v0, :cond_0

    .line 1263
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->i()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    :cond_0
    return-void
.end method

.method private removePresentationSessionId(Lcom/netflix/cl/model/AppView;)Ljava/lang/Long;
    .locals 1

    if-eqz p1, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPresentationSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static requireImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 0

    .line 2410
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    return-object p0
.end method

.method private setInstanceStateSaved(Z)V
    .locals 2

    .line 3094
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3095
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3096
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static setTutorialOn(Z)V
    .locals 0

    return-void
.end method

.method private setupOfflineAgentListener()V
    .locals 4

    .line 1984
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 1986
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1990
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1991
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e(Lo/nS;)V

    .line 1995
    :cond_1
    invoke-virtual {v0}, Lo/Am;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1996
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeOfflineAgentListener()V

    .line 1997
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    if-eqz v1, :cond_2

    .line 1999
    invoke-virtual {v1}, Lo/PS;->e()V

    .line 2001
    :cond_2
    new-instance v1, Lo/PS;

    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    .line 2002
    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    .line 2003
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    invoke-virtual {v0}, Lo/PS;->e()V

    :cond_3
    return-void
.end method

.method private shouldDismissVisibleDialog()Z
    .locals 5

    .line 1339
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isErrorDialogVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1344
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    if-nez v3, :cond_2

    .line 1345
    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return v0

    .line 1349
    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->b:[I

    iget-object v4, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_5

    const/4 v0, 0x2

    if-eq v3, v0, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    return v1

    .line 1355
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mDismissingDialogConfiguration:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method private showActionBar()V
    .locals 1

    const/4 v0, 0x1

    .line 3414
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showActionBar(Z)V

    return-void
.end method

.method private showActionBar(Z)V
    .locals 2

    .line 3418
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3422
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    :cond_1
    return-void
.end method

.method private showPreservingWindowFlagsFromActivity(Landroid/app/Dialog;)V
    .locals 3

    .line 2960
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2963
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2966
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2969
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private updateHelpInMenuStatus()V
    .locals 2

    .line 2226
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->m()Lo/hF;

    move-result-object v1

    invoke-interface {v1}, Lo/hF;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private updateInsets(Landroid/view/View;)V
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_4

    .line 868
    invoke-static {p1}, Lo/Binder;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->systemNavBarHeight:I

    .line 869
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCastPlayerShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lo/Binder;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCollapsedCastHeight()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 873
    :cond_2
    invoke-static {p1}, Lo/Binder;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 876
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->lastWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->systemNavBarHeight:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 878
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method public activateShakeForReport()V
    .locals 2

    .line 860
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->disableShakeToReportBugs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$StateListAnimator;

    invoke-virtual {v0, p0, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$StateListAnimator;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$StateListAnimator;->h()Lo/afZ;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shakeDetector:Lo/afZ;

    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shakeDetector:Lo/afZ;

    invoke-interface {v0, p0}, Lo/afZ;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public addHelpMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showHelpInMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1506
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHelpMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    .line 1508
    invoke-static {p0}, Lo/acV;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1509
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1516
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entry"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1520
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->m()Lo/hF;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1521
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mHelpMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->m()Lo/hF;

    move-result-object v0

    invoke-interface {v0}, Lo/hF;->a()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method protected allowTransitionAnimation()Z
    .locals 3

    .line 732
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.netflix.mediaclient._TRANSITION_ANIMATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 3866
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->wrapContextLocale(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lo/DateSorter;->attachBaseContext(Landroid/content/Context;)V

    .line 3867
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->install(Landroid/content/Context;)Z

    return-void
.end method

.method protected badInstallation()Z
    .locals 1

    .line 4055
    sget-object v0, Lo/IB;->d:Lo/IB;

    invoke-virtual {v0}, Lo/IB;->e()Z

    move-result v0

    return v0
.end method

.method public bottomTabReselected(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V
    .locals 0

    .line 1622
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {p1}, Lo/Ih;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1623
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    :cond_0
    return-void
.end method

.method protected canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canShowActionBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canShowCastMenuFab()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canShowDownloadProgressBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cleanUpInteractiveTrackers()V
    .locals 2

    .line 2039
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2042
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    :cond_0
    return-void
.end method

.method public closeAllPopupMenus()V
    .locals 1

    .line 2681
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected closeCastPanel()Z
    .locals 3

    .line 1408
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/LU;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1417
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    invoke-interface {v0}, Lo/LU;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1419
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isDialogFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    goto :goto_0

    .line 1428
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b()Z

    :goto_0
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected contentViewSetup()V
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initNetflixBottomNavBar()V

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAddSystemBarBackgroundViews()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initStatusBarBackground()V

    .line 948
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initSystemNavBarBackground()V

    .line 950
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAttachToolbar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initToolbar()V

    .line 953
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateDebugOverlay()V

    return-void
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    .line 1628
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->statusBarBackground:Lo/QuickContactBadge;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;)V

    return-object v0
.end method

.method protected createManagerStatusListener()Lo/zT;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public disableShakeToReportBugs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissAllVisibleDialog()V
    .locals 3

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "NetflixActivity"

    const-string v2, "Failed to dismiss dialog!"

    .line 1277
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1279
    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/MimeTypeMap;->a(Z)V

    .line 3132
    invoke-static {}, Lo/adV;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/LU;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3135
    :cond_0
    invoke-super {p0, p1}, Lo/DateSorter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lo/MimeTypeMap;->a(Z)V

    .line 3109
    invoke-super {p0, p1}, Lo/DateSorter;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lo/MimeTypeMap;->a(Z)V

    .line 3122
    invoke-super {p0, p1}, Lo/DateSorter;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public displayDialog(Lo/PendingIntent$Activity;)Landroid/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2920
    :try_start_0
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 2921
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 2922
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;
    .locals 1

    if-eqz p1, :cond_1

    .line 2980
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    :try_start_0
    invoke-virtual {p1}, Lo/ScrollBarDrawable$ActionBar;->e()Lo/ScrollBarDrawable;

    move-result-object p1

    .line 2987
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 2988
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public displayDialog(Landroid/app/Dialog;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 2931
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2936
    :try_start_0
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2937
    monitor-exit v0

    return-void

    .line 2941
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isErrorDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "NetflixActivity"

    const-string v1, "Error dialog is displayed, do not remove it!"

    .line 2942
    invoke-static {p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    monitor-exit v0

    return-void

    .line 2946
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 2947
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2952
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showPreservingWindowFlagsFromActivity(Landroid/app/Dialog;)V

    .line 2954
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 2955
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method protected displayErrorDialog(Ljava/lang/String;IZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3580
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s ( %d )"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3581
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayErrorDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3582
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3581
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3584
    new-instance p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$17;

    invoke-direct {p3, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$17;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3593
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public displayErrorDialogIfExist()Z
    .locals 1

    .line 3712
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 3713
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist(Lo/Am;)Z

    move-result v0

    return v0
.end method

.method public displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 3

    .line 3597
    new-instance v0, Lo/hK;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1, p2}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3598
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, p1, v0}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p1

    .line 3599
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3600
    iget-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter p2

    if-eqz p3, :cond_0

    .line 3605
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    goto :goto_0

    .line 3606
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->isShowing()Z

    move-result p3

    if-nez p3, :cond_1

    .line 3610
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    goto :goto_0

    .line 3611
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object p3

    if-nez p3, :cond_2

    .line 3615
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    .line 3621
    :cond_2
    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 3918
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    if-nez v0, :cond_0

    const-string p1, "NetflixActivity"

    const-string p2, "EndRenderNavigationLevelSession: No start render session in progress"

    .line 3919
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3923
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->e:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "RenderNavigationLevel"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 3932
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    .line 3928
    :cond_1
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/ExtLogger;->cancelExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 3925
    :cond_2
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    :goto_0
    const/4 p1, 0x0

    .line 3936
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    return-void
.end method

.method public exit()V
    .locals 3

    .line 1453
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeCastPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1461
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->dismissFullScreenDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1465
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1469
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1474
    :cond_4
    :try_start_0
    invoke-super {p0}, Lo/DateSorter;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "NetflixActivity"

    const-string v2, "Error handling onBackPressed"

    .line 1476
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method protected expandCastPlayerIfVisible()V
    .locals 1

    .line 2503
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2507
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2513
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerShown(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 529
    invoke-super {p0}, Lo/DateSorter;->finish()V

    .line 530
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimationOnFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getReEnterTransitionAnimation()I

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getReEnterTransitionAnimation()I

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected finishAndCleanupAllActivities()V
    .locals 1

    .line 3046
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3048
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b()V

    .line 3050
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method public flushPerformanceProfilerEvents()V
    .locals 1

    .line 3853
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3854
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b()V

    :cond_0
    return-void
.end method

.method public getActionBarHeight()I
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    return v0

    :cond_0
    const v0, 0x1020002

    return v0
.end method

.method public getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 3

    .line 1633
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->i()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 1639
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    const/4 v2, 0x1

    .line 1640
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 1641
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 1642
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasUpAction()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    .line 1643
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 1644
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 1646
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    :cond_1
    return-object v0
.end method

.method public getActivityDestroy()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixBottomNavBar:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    return-object v0
.end method

.method public getBottomNavBarHeight()I
    .locals 2

    .line 1705
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCastPlayerFrag()Lo/LU;
    .locals 1

    .line 4037
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    return-object v0
.end method

.method public getDataContext()Lo/afC;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogContainerId()I
    .locals 1

    .line 2715
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eN:I

    return v0
.end method

.method public getDialogFragment()Lo/PushbackReader;
    .locals 2

    .line 1718
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "frag_dialog"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/PushbackReader;

    return-object v0
.end method

.method protected getEntryPoint()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEpisodeRowListener()Lo/Du$TaskDescription;
    .locals 1

    .line 1738
    invoke-static {}, Lo/kD;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->p()Lo/Mh;

    move-result-object v0

    return-object v0

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    return-object v0
.end method

.method protected getFragmentBottomPadding()I
    .locals 3

    .line 3980
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    .line 3984
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBarHeight()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->f()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getFragmentHelper()Lo/Ih;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 3792
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getHelpMenuItem(Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 3

    .line 1527
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kn:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHelpMenuText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 1528
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-object p1
.end method

.method protected getHelpMenuText()Ljava/lang/String;
    .locals 1

    .line 1533
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hd:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getKeyboardState()Lo/RecoverySystem;
    .locals 1

    monitor-enter p0

    .line 3140
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->keyboardState:Lo/RecoverySystem;

    if-nez v0, :cond_0

    .line 3141
    new-instance v0, Lo/RecoverySystem;

    invoke-direct {v0, p0}, Lo/RecoverySystem;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->keyboardState:Lo/RecoverySystem;

    .line 3143
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->keyboardState:Lo/RecoverySystem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMdxPanelStates()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4027
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v0, :cond_0

    .line 4028
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 4030
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object v0
.end method

.method public getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;
    .locals 1

    .line 2443
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    return-object v0
.end method

.method public getNetflixMdxController()Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    return-object v0
.end method

.method public getPrepareHelper()Lo/Ag;
    .locals 1

    .line 2439
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPrepareHelper:Lo/Ag;

    return-object v0
.end method

.method public getServiceManager()Lo/Am;
    .locals 3

    .line 2430
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2433
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid state when called netflixActivity.getServiceManager()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    return-object v0
.end method

.method protected getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-interface {v0}, Lo/zN;->x()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    return-object v0
.end method

.method public getSlidingPanelPullView()Landroid/view/View;
    .locals 1

    .line 1613
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rQ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 4000
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->statusBarBackground:Lo/QuickContactBadge;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/QuickContactBadge;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTabsAndSystemNavHeight()I
    .locals 2

    .line 4013
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBarHeight()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->systemNavBarHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTutorialHelper()Lo/Se;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->tutorialHelper:Lo/Se;

    return-object v0
.end method

.method public abstract getUiScreen()Lcom/netflix/cl/model/AppView;
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .line 2903
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected gotoSignupActivity(Landroid/content/Intent;)V
    .locals 1

    const v0, 0x10008000

    .line 3574
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3575
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 3576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method

.method public handleAccountDeactivated()V
    .locals 2

    .line 3034
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lo/JL;

    if-nez v0, :cond_0

    .line 3035
    invoke-static {p0}, Lo/JL;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 3038
    :cond_0
    instance-of v0, p0, Lo/JL;

    if-eqz v0, :cond_1

    const-string v0, "NetflixActivity"

    const-string v1, "Account deactivated, leave to LogoutActivity to complete transition..."

    .line 3039
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3041
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAndCleanupAllActivities()V

    :goto_0
    return-void
.end method

.method protected handleActionOnNoNetworkOverlay()V
    .locals 0

    .line 2307
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->recreate()V

    return-void
.end method

.method public handleAppUpdateNeed(Z)Z
    .locals 1

    .line 4041
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mAppUpdateHandler:Lo/CG;

    invoke-interface {v0, p0, p1}, Lo/CG;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z

    move-result p1

    return p1
.end method

.method public handleBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 3459
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->X:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NetflixActivity"

    if-eqz v0, :cond_0

    const-string v0, "User accessing Netflix in a not supported country. Show alert and kill self"

    .line 3460
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->m:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 3463
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->W:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Insufficient content for this profile - cant show lolomo. Show alert and go to profile selection"

    .line 3464
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    new-instance p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 3473
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dy:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleIntentInternally(Landroid/content/Intent;)Z
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0, p1}, Lo/Ih;->a(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected handleInvalidCurrentProfile()V
    .locals 2

    .line 3065
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 3066
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/Zg;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public handleProfileActivated()V
    .locals 0

    return-void
.end method

.method protected handleProfileReadyToSelect()V
    .locals 0

    return-void
.end method

.method public handleProfileSelectionResult(ILjava/lang/String;)V
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

    .line 3484
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;
    .locals 9

    .line 3496
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3499
    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const-string v4, "NetflixActivity"

    const/4 v5, 0x2

    const-string v6, "%s ( %d )"

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3559
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3560
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hV:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3561
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hV:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    :pswitch_0
    const-string p2, "switch profile failed"

    .line 3554
    invoke-static {v4, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lV:I

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3556
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lV:I

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-virtual {p0, p2, p1, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "going to signup activity - cookied in"

    .line 3547
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    sget-object p1, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p1, p0}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->gotoSignupActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "going to signup activity - new cookies"

    .line 3543
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    sget-object p1, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p1, p0}, Lo/abD$StateListAnimator;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->gotoSignupActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 3539
    :pswitch_3
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kS:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3540
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-virtual {p0, v1, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    :pswitch_4
    new-array p2, v5, [Ljava/lang/Object;

    .line 3532
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kV:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3533
    invoke-virtual {p0, v1, v3, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_2

    .line 3522
    :pswitch_5
    sget-object p1, Lo/LegacyErrorStrings;->d:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {p0, p1}, Lo/FindActionModeCallback;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_2

    :pswitch_6
    new-array p2, v5, [Ljava/lang/Object;

    .line 3509
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->cZ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3510
    new-instance p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p0, v1, p1, v7}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_2

    .line 3502
    :pswitch_7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v5, [Ljava/lang/Object;

    .line 3503
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kV:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v8

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 3505
    :goto_1
    invoke-virtual {p0, v1, v3, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_2

    .line 3564
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lT:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3565
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lT:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialog(Ljava/lang/String;IZ)V

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasBottomNavBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSavedInstance()Z
    .locals 1

    .line 2008
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasSavedInstance:Z

    return v0
.end method

.method protected hasUpAction()Z
    .locals 1

    .line 1662
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hideActionAndBottomBars()V
    .locals 2

    const/4 v0, 0x0

    .line 3385
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideActionBar(Z)V

    .line 3386
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3387
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Z)V

    .line 3389
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    return-void
.end method

.method protected hideCastPlayer()V
    .locals 3

    .line 2541
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2542
    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 2545
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bE:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    .line 2547
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2548
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2549
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    instance-of v2, v0, Lo/LP;

    if-eqz v2, :cond_1

    .line 2550
    check-cast v0, Lo/LP;

    invoke-virtual {v0, v1}, Lo/LP;->c(Z)V

    .line 2554
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$7;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2568
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    .line 2569
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    return-void
.end method

.method protected initNetflixBottomNavBar()V
    .locals 2

    .line 971
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aI:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixBottomNavBar:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixBottomNavBar:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aN:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixBottomNavBar:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixBottomNavBar:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    if-eqz v0, :cond_1

    .line 979
    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$23;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$23;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$Activity;)V

    :cond_1
    return-void
.end method

.method protected initSlidingPanel()V
    .locals 5

    .line 883
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rP:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 884
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_1

    .line 885
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasCastPlayerFrag()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    invoke-interface {v2}, Lo/LU;->I()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 887
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCollapsedCastHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 888
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->panelSlideListener:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;

    invoke-virtual {v0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$TaskDescription;)V

    .line 889
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldApplyPaddingToSlidingPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 891
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initStatusBarBackground()V
    .locals 4

    .line 957
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarParentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 958
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->fJ:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/QuickContactBadge;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->statusBarBackground:Lo/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 960
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->statusBarBackground:Lo/QuickContactBadge;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->statusBarBackground:Lo/QuickContactBadge;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lo/QuickContactBadge;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method protected initSystemNavBarBackground()V
    .locals 4

    .line 989
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarParentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 990
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->dc:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ExpandableListPosition;

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->systemNavBarBackground:Lo/ExpandableListPosition;

    if-eqz v0, :cond_0

    .line 992
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->systemNavBarBackground:Lo/ExpandableListPosition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected initToolbar()V
    .locals 2

    .line 1195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    .line 1196
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return-void
.end method

.method public invalidateDebugOverlay()V
    .locals 0

    return-void
.end method

.method public irisRefreshImpl(Lo/Am;)V
    .locals 0

    .line 1191
    invoke-static {p1}, Lo/adK;->b(Lo/Am;)V

    return-void
.end method

.method public isCastPlayerShowing()Z
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/LU;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    invoke-interface {v0}, Lo/LU;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isComingFromBackground()Z
    .locals 1

    .line 1956
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    .line 1957
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->L()Z

    move-result v0

    return v0
.end method

.method public isConnectingToTarget()Z
    .locals 1

    .line 2667
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    return v0
.end method

.method public isDialogFragmentVisible()Z
    .locals 1

    .line 2862
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstanceStateSaved()Z
    .locals 2

    .line 3085
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3086
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3087
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPanelCollapsed()Z
    .locals 1

    .line 2870
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPanelExpanded()Z
    .locals 1

    .line 2866
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTablet()Z
    .locals 1

    .line 3643
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mIsTablet:Z

    return v0
.end method

.method public logMetadataRenderedEvent(Z)V
    .locals 3

    .line 3951
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    if-eqz v0, :cond_1

    .line 3952
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netflix/cl/model/event/discrete/android/CachedMetadataRendered;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/netflix/cl/model/event/discrete/android/CachedMetadataRendered;-><init>(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/netflix/cl/model/event/discrete/MetadataRendered;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/netflix/cl/model/event/discrete/MetadataRendered;-><init>(Ljava/lang/Long;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_1
    return-void
.end method

.method public mdxStatusUpdatedByMdxReceiver()V
    .locals 1

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    return-void
.end method

.method public mdxTargetListChanged()V
    .locals 6

    .line 457
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "mdxTargetListChanged is called on finishing or destroyed activity"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    if-nez v0, :cond_1

    .line 463
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "mdxTargetListChanged is called when Mdx is null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowCastMenuFab()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castFabPresenter:Lo/LS;

    if-nez v0, :cond_5

    .line 469
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxTargetCallback()Lo/Mh;

    move-result-object v0

    if-nez v0, :cond_4

    .line 471
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 475
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 476
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "SPY-19095: creating CastAsFabPresenter with null callback, hasCastPlayerFrag: %b, hasMdxController: %s"

    .line 471
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 481
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-17952: Activity\'s current lifecycle state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 482
    new-instance v0, Lo/LS;

    invoke-direct {v0, p0}, Lo/LS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castFabPresenter:Lo/LS;

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castFabPresenter:Lo/LS;

    invoke-virtual {v0, p0}, Lo/LS;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_1

    .line 486
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 487
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    :cond_7
    :goto_1
    return-void
.end method

.method public notifyCastPlayerEndOfPlayback()V
    .locals 2

    const-string v0, "NetflixActivity"

    const-string v1, "CastPlayer end of playback"

    .line 2518
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 2521
    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n()V

    .line 2524
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideCastPlayer()V

    return-void
.end method

.method public notifyCastPlayerHidden()V
    .locals 2

    const-string v0, "NetflixActivity"

    const-string v1, "CastPlayer frag hidden"

    .line 2573
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->collapseSlidingPanel()V

    .line 2576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideCastPlayer()V

    .line 2577
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    return-void
.end method

.method public notifyCastPlayerShown(Z)V
    .locals 5

    .line 2581
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2582
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "NetflixActivity"

    const-string v4, "notifyCastPlayerShown connected=%b"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2583
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2584
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showCastPlayer()V

    .line 2585
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->postActionBarUpdate()V

    if-eqz p1, :cond_0

    .line 2588
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$8;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->post(Ljava/lang/Runnable;)Z

    .line 2596
    :cond_0
    invoke-static {}, Lo/adq;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getRequestedOrientation()I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 2597
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method public notifyMdxShowDetailsRequest()V
    .locals 4

    .line 2638
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$6;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 3824
    sget v0, Lo/ClientCertRequest;->d:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "extra_download_playableId"

    .line 3826
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "extra_download_videoType_string"

    .line 3827
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    .line 3828
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/nS;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3830
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->m:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    invoke-interface {p3, v0}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    :cond_0
    return-void

    .line 3836
    :cond_1
    sget v0, Lo/ClientCertRequest;->a:I

    if-ne p1, v0, :cond_2

    .line 3837
    const-class v0, Lo/IE;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IE;

    invoke-interface {v0, p2}, Lo/IE;->a(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 3839
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p3

    const-string p3, "NetflixActivity"

    const-string v0, "onActivityResult: IN_APP_UPDATE_REQUEST_CODE %d"

    invoke-static {p3, v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3840
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mAppUpdateHandler:Lo/CG;

    invoke-interface {p1, p0, p2}, Lo/CG;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    return-void

    .line 3843
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lo/DateSorter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1443
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a()V

    .line 1444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->exit()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 3860
    invoke-super {p0, p1}, Lo/DateSorter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3861
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->wrapContextLocale(Landroid/content/Context;)Landroid/content/ContextWrapper;

    return-void
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 620
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTheme()V

    .line 621
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupWindow()V

    .line 623
    invoke-super {p0, p1}, Lo/DateSorter;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 624
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    .line 625
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->badInstallation()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 629
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 630
    :goto_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasSavedInstance:Z

    if-eqz p1, :cond_2

    const-string v2, "cast_player_expanded"

    .line 636
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldExpandCastPlayer:Z

    if-eqz p1, :cond_3

    const-string v2, "mdx_connecting"

    .line 637
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    const-string p1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_ALL_ACTIVITIES"

    .line 643
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.service.ACTION_EXPAND_CAST_PLAYER"

    invoke-virtual {p0, p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->closeCastPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.netflix.mediaclient.service.ACTION_CLOSE_CAST_PLAYER"

    invoke-virtual {p0, p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 647
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.netflix.mediaclient.ui.error.ACTION_ACCOUNT_INACTIVE"

    .line 648
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    .line 649
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    .line 650
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->localBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 656
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 660
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "NetflixActivity"

    const-string v2, "Failed to initialize CastContext.  Error: %s"

    invoke-static {p1, v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 663
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupServiceManager()V

    .line 665
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handler:Landroid/os/Handler;

    .line 667
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 668
    invoke-virtual {p0, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    goto :goto_4

    .line 670
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightInTransition()I

    move-result p1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getExitTransitionAnimation()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    .line 672
    :goto_4
    sget-object p1, Lo/CI;->b:Lo/CI$ActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/CI$ActionBar;->b(Landroid/content/Context;)Lo/CG;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mAppUpdateHandler:Lo/CG;

    .line 673
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupOfflineAgentListener()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 1499
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addHelpMenu(Landroid/view/Menu;)V

    .line 1501
    invoke-super {p0, p1}, Lo/DateSorter;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1363
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 1364
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 1369
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 1375
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 1379
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 1382
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->cleanUpInteractiveTrackers()V

    .line 1384
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    if-eqz v0, :cond_3

    .line 1385
    invoke-virtual {v0}, Lo/Am;->d()V

    .line 1388
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1394
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeOfflineAgentListener()V

    .line 1395
    invoke-super {p0}, Lo/DateSorter;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 783
    sget-boolean v0, Lo/adq;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 786
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DateSorter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 793
    sget-boolean v0, Lo/adq;->a:Z

    if-eqz v0, :cond_2

    .line 794
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->openOptionsMenu()V

    const/4 p1, 0x1

    return p1

    .line 792
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSystemVolumeChanged()V

    .line 797
    :cond_2
    invoke-super {p0, p1, p2}, Lo/DateSorter;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 3246
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lo/JsDialogHelper$Activity;

    if-eqz v0, :cond_0

    .line 3247
    invoke-interface {v0, p1}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onMdxDialogResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_DIALOGRESP"

    .line 1581
    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_REMOTE_LOGIN_CONSENT"

    .line 1582
    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    const-class v1, Lo/bM;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 1587
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    new-instance v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 762
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldSetIntentOnNewIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setIntent(Landroid/content/Intent;)V

    .line 765
    :cond_0
    invoke-super {p0, p1}, Lo/DateSorter;->onNewIntent(Landroid/content/Intent;)V

    .line 767
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 768
    invoke-virtual {p0, p1, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public onOfflineDownloadPinAndAgeVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 2

    .line 3658
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onPlayVerified vault: %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixActionBar:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1564
    :cond_0
    invoke-super {p0, p1}, Lo/DateSorter;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPaddingChanged()V
    .locals 4

    .line 3993
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    if-eqz v0, :cond_1

    .line 3994
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->keyboardState:Lo/RecoverySystem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/RecoverySystem;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Z)V

    .line 3996
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getStatusBarHeight()I

    move-result v1

    iget v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentBottomPadding()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lo/Ih;->c(III)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1239
    invoke-super {p0}, Lo/DateSorter;->onPause()V

    .line 1240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->badInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1244
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 1245
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->K()V

    .line 1246
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const/4 v1, 0x0

    .line 1247
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    .line 1248
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->F()V

    .line 1250
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mSecondaryDisplay:Lo/Tp;

    invoke-virtual {v0, p0}, Lo/Tp;->d(Landroid/app/Activity;)V

    .line 1251
    const-class v0, Lo/IE;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IE;

    invoke-interface {v0, p0}, Lo/IE;->b(Landroid/app/Activity;)V

    .line 1252
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mAppUpdateHandler:Lo/CG;

    if-eqz v0, :cond_1

    .line 1253
    invoke-interface {v0, p0}, Lo/CG;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_1
    return-void
.end method

.method public onPlayVerified(ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)V
    .locals 2

    .line 3651
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onPlayVerified vault: %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1014
    invoke-super {p0, p1}, Lo/DateSorter;->onPostCreate(Landroid/os/Bundle;)V

    .line 1019
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a()Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$22;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$22;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setOnTabReselectedListener(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;)V

    :cond_0
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1231
    invoke-super {p0}, Lo/DateSorter;->onPostResume()V

    .line 1232
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_0

    .line 1233
    invoke-interface {v0}, Lo/LU;->c()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0xe8

    if-eq p1, v0, :cond_0

    .line 1084
    invoke-super {p0, p1, p2, p3}, Lo/DateSorter;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1079
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1080
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {p1, p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_0

    .line 1574
    invoke-interface {v0, p1, p2}, Lo/LU;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1091
    invoke-super {p0}, Lo/DateSorter;->onResume()V

    .line 1092
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->badInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1107
    :cond_0
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ys;->a:Lo/ys;

    .line 1111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v1

    .line 1112
    invoke-virtual {v1}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object v1

    .line 1108
    invoke-static {v0, v1}, Lo/afw;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->wrapContextLocale(Landroid/content/Context;)Landroid/content/ContextWrapper;

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 1126
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->N()V

    .line 1127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isComingFromBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onFromBackground()V

    :cond_2
    const/4 v1, 0x0

    .line 1134
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    .line 1135
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/NetflixApplication;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    const/4 v2, 0x1

    .line 1137
    iput-boolean v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    .line 1138
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->G()V

    .line 1140
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->addFab()V

    .line 1142
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayNoNetworkOverlay()V

    .line 1144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1145
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 1163
    :cond_3
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1164
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 1165
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mSecondaryDisplay:Lo/Tp;

    invoke-virtual {v0, p0, v1}, Lo/Tp;->a(Landroid/app/Activity;Z)V

    .line 1166
    const-class v0, Lo/IE;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IE;

    invoke-interface {v0, p0}, Lo/IE;->c(Landroid/app/Activity;)V

    .line 1167
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mAppUpdateHandler:Lo/CG;

    if-eqz v0, :cond_5

    .line 1168
    invoke-interface {v0, p0}, Lo/CG;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_5
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 3075
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setInstanceStateSaved(Z)V

    .line 3076
    invoke-super {p0, p1}, Lo/DateSorter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3077
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v1, :cond_0

    .line 3078
    invoke-interface {v1}, Lo/LU;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "cast_player_expanded"

    .line 3077
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3079
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result v0

    const-string v1, "mdx_connecting"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3081
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0, p1}, Lo/Ih;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSlidingPanelCollapsed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onSlidingPanelExpanded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 827
    invoke-super {p0}, Lo/DateSorter;->onStart()V

    .line 829
    invoke-static {}, Lo/kD;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "cast_player"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/LU;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initSlidingPanel()V

    .line 834
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->initWindowInsetView()V

    .line 836
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activateShakeForReport()V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1285
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldDismissVisibleDialog()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1288
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "NetflixActivity"

    const-string v3, "Failed to dismiss dialog!"

    .line 1291
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    .line 1293
    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 1295
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1301
    sget-object v0, Lcom/netflix/cl/model/AppView;->errorDialog:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportPresentationSessionEnded(Lcom/netflix/cl/model/AppView;)V

    .line 1303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->disableShakeToReportBugs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shakeDetector:Lo/afZ;

    invoke-interface {v0}, Lo/afZ;->d()V

    .line 1307
    :cond_1
    invoke-super {p0}, Lo/DateSorter;->onStop()V

    return-void

    :catchall_1
    move-exception v1

    .line 1295
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 4050
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    const-class v1, Lo/FindAddress;

    if-eqz p1, :cond_0

    sget-object p1, Lo/FindAddress$ActionBar;->a:Lo/FindAddress$ActionBar;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/FindAddress$TaskDescription;->c:Lo/FindAddress$TaskDescription;

    :goto_0
    invoke-virtual {v0, v1, p1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method protected overridePendingTransitionAnimationOnFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performUpAction()V
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1679
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1680
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0

    .line 1681
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1683
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1684
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0

    .line 1687
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1690
    :cond_3
    sget-object v0, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {v0, p0}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1691
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 1693
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getReEnterTransitionAnimation()I

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSlidingRightOutTransition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransitionAnimation(II)V

    return-void
.end method

.method public playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 7

    .line 3957
    invoke-interface {p1}, Lo/AK;->P()I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;J)V

    return-void
.end method

.method public playerPrepare(Lo/AK;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/servicemgr/PlayContext;J)V
    .locals 1

    .line 3961
    invoke-interface {p1}, Lo/AK;->ah()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Lo/AK;->aa()Z

    move-result p3

    if-nez p3, :cond_2

    .line 3962
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3963
    invoke-virtual {v0, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    .line 3964
    invoke-interface {p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3962
    :goto_0
    invoke-static {p3, p4, p5, p2, p1}, Lo/Ae;->a(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Z)Lo/Ae;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3966
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPrepareHelper()Lo/Ag;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/Ag;->b(Lo/Ae;)V

    :cond_2
    return-void
.end method

.method protected registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autokillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1773
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1774
    iget-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterLocalReceivers:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    .line 1769
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 1764
    invoke-super {p0, p1, p2}, Lo/DateSorter;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1765
    iget-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->autoUnregisterReceivers:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 1

    .line 1760
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public removeDialogFrag()V
    .locals 3

    .line 2875
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    .line 2876
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2878
    instance-of v2, v1, Lo/PushbackReader;

    if-eqz v2, :cond_0

    .line 2879
    move-object v2, v1

    check-cast v2, Lo/PushbackReader;

    invoke-virtual {v2}, Lo/PushbackReader;->dismiss()V

    .line 2881
    :cond_0
    invoke-virtual {v0, v1}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 2883
    :cond_1
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->d()I

    return-void
.end method

.method public removeNoNetworkOverlay()V
    .locals 2

    .line 2289
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mNoNetworkOverlay:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2290
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public removeVisibleDialog()V
    .locals 2

    .line 2894
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2895
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 2896
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 2897
    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 2899
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportPresentationSessionCanceled(Lcom/netflix/cl/model/AppView;)V
    .locals 1

    .line 3314
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removePresentationSessionId(Lcom/netflix/cl/model/AppView;)Ljava/lang/Long;

    move-result-object p1

    .line 3315
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public reportPresentationSessionEnded(Lcom/netflix/cl/model/AppView;)V
    .locals 1

    .line 3304
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removePresentationSessionId(Lcom/netflix/cl/model/AppView;)Ljava/lang/Long;

    move-result-object p1

    .line 3305
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public reportPresentationSessionStart(Lcom/netflix/cl/model/AppView;)V
    .locals 4

    const-string v0, "NetflixActivity"

    if-nez p1, :cond_0

    const-string p1, "reportPresentationSessionStart:: view is NULL!"

    .line 3285
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3288
    :cond_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lo/afC;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3290
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPresentationSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    const-string v1, "We had older session that we removed!"

    .line 3292
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1}, Lcom/netflix/cl/model/event/session/Presentation;->createSessionCanceledEvent(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/SessionCanceled;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    :cond_1
    return-void
.end method

.method public requestDownloadButtonRefresh(Ljava/lang/String;)V
    .locals 1

    .line 3847
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->activityPageOfflineAgentListener:Lo/PS;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3848
    invoke-virtual {v0, p0, p1}, Lo/PS;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requireMdxTargetCallback()Lo/Mh;
    .locals 1

    .line 1723
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxTargetCallback()Lo/Mh;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Mh;

    return-object v0
.end method

.method public requireNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .line 1752
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    return-object v0
.end method

.method public runInUiThread(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2496
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2499
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V
    .locals 1

    .line 2054
    invoke-static {p0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;

    if-eqz v0, :cond_0

    .line 2057
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;->a(Lo/Am;)V

    return-void

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;->run(Lo/Am;)V

    goto :goto_0

    .line 2063
    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;

    if-eqz v0, :cond_2

    .line 2064
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$TaskDescription;->e()V

    .line 2066
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mPendingServiceManagerRunnable:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public sendIntentToNetflixService(Landroid/content/Intent;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0, p1}, Lo/Am;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trying to send intent while serviceManager is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setConnectingToTarget(Z)V
    .locals 0

    .line 2671
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mConnectingToTarget:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 927
    invoke-super {p0, p1}, Lo/DateSorter;->setContentView(I)V

    .line 929
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->contentViewSetup()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 937
    invoke-super {p0, p1}, Lo/DateSorter;->setContentView(Landroid/view/View;)V

    .line 939
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->contentViewSetup()V

    return-void
.end method

.method public setFragmentHelper(Lo/Ih;)V
    .locals 3

    .line 1008
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    .line 1009
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->fragmentHelper:Lo/Ih;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getStatusBarHeight()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->actionBarHeight:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentBottomPadding()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lo/Ih;->c(III)V

    return-void
.end method

.method protected setFragmentPadding(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 4004
    instance-of v0, p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_0

    .line 4005
    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getStatusBarHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentBottomPadding()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->e(III)V

    :cond_0
    return-void
.end method

.method public setFragmentsHiddenState(ZLo/CharsetDecoder;)V
    .locals 0

    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 1

    .line 3235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3236
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 3238
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mLoadingStatusCallback:Lo/JsDialogHelper$Activity;

    :goto_0
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setSlidingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTheme()V
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldShowKidsTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->S:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->O:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTheme(I)V

    goto :goto_3

    .line 703
    :cond_1
    invoke-static {}, Lo/eq;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->F:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->N:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTheme(I)V

    goto :goto_3

    .line 706
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->E:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->I:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTheme(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected setupCastPlayerFrag(Landroid/os/Bundle;)V
    .locals 6

    .line 557
    invoke-static {}, Lo/kD;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 558
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    instance-of v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 561
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    .line 562
    new-instance p1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 563
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 564
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->netflixMdxController:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    return-void

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowCastMenuFab()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 569
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 572
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 573
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "SPY-19095 - new mdx panel not created, has coordinator layout: %b, is restore instance: %b"

    .line 569
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 577
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bE:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 579
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowCastMenuFab()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 580
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-19095 - castPlayerFrag not created, cast player container not found"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 586
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const-string v0, "cast_player"

    const-string v3, "NetflixActivity"

    if-nez p1, :cond_6

    const-string v4, "creating CastPlayerControlsFrag"

    .line 589
    invoke-static {v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v3

    invoke-virtual {v3}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v3

    .line 591
    new-instance v4, Lo/LP;

    invoke-direct {v4}, Lo/LP;-><init>()V

    iput-object v4, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    .line 592
    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->bE:I

    iget-object v5, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v4, v5, v0}, Lo/UnsupportedEncodingException;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 593
    invoke-virtual {v3}, Lo/UnsupportedEncodingException;->d()I

    goto :goto_2

    :cond_6
    const-string v4, "re-using CastPlayerControlsFrag"

    .line 595
    invoke-static {v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v3

    invoke-virtual {v3, v0}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/LP;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    .line 598
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_7

    .line 599
    new-instance v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {v0, v3}, Lo/LU;->c(Lo/LU$TaskDescription;)V

    .line 609
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowCastMenuFab()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-nez v0, :cond_9

    .line 610
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 613
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "SPY-19095 - castPlayerFrag not created, is restore instance: %b"

    .line 610
    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setupInteractiveTracking(Lo/CO;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;
    .locals 2

    .line 2015
    invoke-virtual {p1}, Lo/CO;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->currentTrackerId:Ljava/lang/String;

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupInteractiveTracking -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InteractiveTrackerImpl"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2023
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hasSavedInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2024
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    .line 2028
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lo/CO;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2031
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->a(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 2033
    :goto_0
    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface;->d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;)V

    return-object p1

    .line 2019
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "service not ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setupServiceManager()V
    .locals 3

    .line 817
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->createManagerStatusListener()Lo/zT;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isComingFromBackground()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/zT;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->managerStatusListener:Lo/zT;

    .line 818
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->managerStatusListener:Lo/zT;

    invoke-virtual {v0, v1}, Lo/Am;->c(Lo/zT;)V

    return-void
.end method

.method protected setupWindow()V
    .locals 4

    .line 678
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->n:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 682
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldShowKidsTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x210

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v0, 0x200

    .line 690
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public final shouldAddCastToMenu()Z
    .locals 4

    .line 1891
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showMdxInMenu()Z

    move-result v0

    const-string v1, "NetflixActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Activity does not required MDX."

    .line 1892
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/LU;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MDX Player frag is showing."

    .line 1898
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1902
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    .line 1903
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Service manager is %s or service manager is not ready."

    .line 1904
    invoke-static {v1, v0, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 1908
    :cond_2
    invoke-virtual {v0}, Lo/Am;->E()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "User is not logged in, not adding MDX icon"

    .line 1909
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1913
    :cond_3
    invoke-virtual {v0}, Lo/Am;->P()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    invoke-static {v0}, Lo/abX;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string v0, "Checking isAnyMdxTargetAvailable"

    .line 1920
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-static {v0}, Lo/adV;->d(Lo/zN;)Z

    move-result v0

    return v0
.end method

.method public shouldAddSystemBarBackgroundViews()Z
    .locals 4

    .line 3975
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3976
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->n:I

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
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

.method protected shouldSetIntentOnNewIntent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowKidsTheme()Z
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected shouldStartLaunchActivityIfVisibleOnManagerUnavailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showAccountInMenu()Z
    .locals 1

    .line 1807
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    return v0
.end method

.method public showActionAndBottomBars()V
    .locals 2

    const/4 v0, 0x0

    .line 3406
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showActionBar(Z)V

    .line 3407
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3408
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(Z)V

    .line 3410
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    return-void
.end method

.method protected showCallInProgressFloatingActionButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showCastPlayer()V
    .locals 2

    .line 2611
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2615
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCollapsedCastHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 2616
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f()V

    .line 2618
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bE:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2620
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2623
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->castPlayerFrag:Lo/LU;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/LU;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2624
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2627
    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    .line 2628
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireMdxTargetCallback()Lo/Mh;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    move-result-object v0

    .line 2629
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->c()V

    .line 2633
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPaddingChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected showCastPlayerPostPlayOnResume()V
    .locals 3

    .line 1208
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-static {v0}, Lo/acE;->b(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->i()Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    instance-of v0, v0, Lo/ko;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->serviceManager:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    check-cast v0, Lo/ko;

    invoke-virtual {v0}, Lo/ko;->m()Lo/aeM$Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v1, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1215
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    iget-object v0, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 1218
    invoke-static {p0}, Lo/LP;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public showContactUsInSlidingMenu()Z
    .locals 1

    .line 1825
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .locals 2

    .line 3804
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 3809
    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public showDialog(Lo/PushbackReader;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2786
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 2790
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2791
    invoke-virtual {v1}, Lo/PushbackReader;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-10201, Dialog fragment already visible ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") while trying to display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". There should only be one visible at time."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetflixActivity"

    .line 2793
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    return v2

    .line 2803
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 2804
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "NetflixActivity"

    const-string v2, "Instance state has been saved - skipping showing dialog"

    .line 2805
    invoke-static {p1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v0

    .line 2810
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v3

    invoke-virtual {v3}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v3

    .line 2811
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogFragment()Lo/PushbackReader;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2813
    instance-of v5, v4, Lo/PushbackReader;

    if-eqz v5, :cond_3

    const-string v5, "NetflixActivity"

    const-string v6, "Dismissing previous dialog"

    .line 2814
    invoke-static {v5, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    move-object v5, v4

    check-cast v5, Lo/PushbackReader;

    invoke-virtual {v5}, Lo/PushbackReader;->dismiss()V

    :cond_3
    const-string v5, "NetflixActivity"

    const-string v6, "Removing previous dialog"

    .line 2817
    invoke-static {v5, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    invoke-virtual {v3, v4}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    :cond_4
    const/4 v4, 0x0

    .line 2820
    invoke-virtual {v3, v4}, Lo/UnsupportedEncodingException;->c(Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 2822
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2822
    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    const-string v4, "NetflixActivity"

    const-string v5, "Showing dialog"

    .line 2824
    invoke-static {v4, v5}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v4

    const-string v5, "frag_dialog"

    invoke-static {p1, v4, v3, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Lo/PushbackReader;Lo/SerializablePermission;Lo/UnsupportedEncodingException;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2826
    :try_start_2
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p1

    .line 2829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show dialog, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NetflixActivity"

    .line 2830
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 2832
    monitor-exit v1

    return v0

    :catchall_1
    move-exception p1

    .line 2834
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_0
    return v0
.end method

.method public showFetchErrorsToast()V
    .locals 2

    .line 1847
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    invoke-static {}, Lo/ia;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Fetch errors ENABLED"

    goto :goto_0

    :cond_0
    const-string v1, "Fetch errors DISABLED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1848
    invoke-static {v0, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public showFullScreenDialog(Lo/WebChromeClient;)Z
    .locals 4

    .line 2727
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2731
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogContainerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2734
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2733
    invoke-static {v2, v0, v1}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 2736
    new-instance v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lo/WebChromeClient;->e(Lo/WebChromeClient$Application;)V

    .line 2744
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    .line 2745
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDialogContainerId()I

    move-result v2

    const-string v3, "FullScreenDialogTag"

    invoke-virtual {v0, v2, p1, v3}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    move-result-object p1

    .line 2746
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->e()V

    goto :goto_0

    .line 2748
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    :goto_0
    return v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected showHelpInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showMenu(Landroid/widget/PopupMenu;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 2693
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2696
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 2697
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mShownPopupMenus:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 2698
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected showMissingSplitError()V
    .locals 1

    .line 4059
    sget-object v0, Lo/IB;->d:Lo/IB;

    invoke-virtual {v0, p0}, Lo/IB;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOfflineErrorDialog(Lo/Re;)V
    .locals 3

    .line 2843
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2844
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->instanceStateSaved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2847
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOfflineErrorDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2847
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "frag_dialog"

    invoke-virtual {p1, v0, v1}, Lo/Re;->showNow(Lo/SerializablePermission;Ljava/lang/String;)V

    .line 2851
    sget-object v0, Lo/gf;->e:Lo/gf$TaskDescription;

    invoke-virtual {v0}, Lo/gf$TaskDescription;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2852
    invoke-virtual {p1}, Lo/Re;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p1}, Lo/CalendarViewLegacyDelegate;->c(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method public showOfflineInMenu()Z
    .locals 1

    .line 1815
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .line 1803
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .line 1811
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canApplyBrowseExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 718
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleIntentInternally(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    invoke-super {p0, p1, p2, p3}, Lo/DateSorter;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected startLaunchActivityIfVisible()V
    .locals 2

    .line 2394
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isVisible:Z

    const-string v1, "NetflixActivity"

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    if-nez v0, :cond_0

    const-string v0, "Activity is visible, starting launch activity"

    .line 2395
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    .line 2397
    invoke-static {p0, v0}, Lo/Jx;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 2400
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 2396
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "Activity is not visible, skipping launch of new activity"

    .line 2404
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startRenderNavigationLevelSession()V
    .locals 2

    .line 3899
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    if-eqz v0, :cond_0

    .line 3900
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string v0, "NetflixActivity"

    const-string v1, "StartRenderNavigationLevelSession: Cancelling the current render session in progress"

    .line 3901
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    .line 3905
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->renderSession:Lcom/netflix/cl/model/event/session/action/RenderNavigationLevel;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    return-void
.end method

.method public updateActionBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateTargetSelectionDialog()V
    .locals 1

    .line 1941
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    instance-of v0, v0, Lo/Mj;

    if-eqz v0, :cond_0

    .line 1943
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxTargetCallback()Lo/Mh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-interface {v0}, Lo/Mh;->v()Lo/Me;

    move-result-object v0

    invoke-static {p0, v0}, Lo/Mn;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Me;)V

    :cond_0
    return-void
.end method

.method public updateVisibleDialog(Landroid/app/Dialog;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3001
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3002
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 3003
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3005
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->visibleDialog:Landroid/app/Dialog;

    .line 3006
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public wasMdxStatusUpdatedByMdxReceiver()Z
    .locals 2

    const/4 v0, 0x0

    .line 439
    :try_start_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    return v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mMdxStatusUpdated:Z

    .line 442
    throw v1
.end method

.method protected wrapContextLocale(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 2

    .line 3878
    sget-object v0, Lo/ys;->a:Lo/ys;

    invoke-virtual {v0, p1}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    .line 3879
    invoke-virtual {v0}, Lo/afz;->b()Ljava/util/Locale;

    move-result-object v0

    .line 3881
    const-class v1, Lo/PluginList;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PluginList;

    invoke-interface {v1}, Lo/PluginList;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3882
    const-class v1, Lo/PluginList;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PluginList;

    invoke-interface {v1, p1}, Lo/PluginList;->c(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 3890
    :cond_0
    invoke-static {p1, v0}, Lo/afw;->c(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    move-result-object p1

    return-object p1
.end method
