.class public Lcom/netflix/mediaclient/ui/home/HomeActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;
.implements Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$OptInResponseHandler;


# static fields
.field private static final ACTIVITY_RESUME_TIMEOUT_MS:J = 0x1b77400L

.field private static final DELAY_BEFORE_NOTIFICATIONS_READ:J = 0xbb8L

.field private static final EXTRA_BACK_STACK_INTENTS:Ljava/lang/String; = "extra_back_stack_intents"

.field private static final EXTRA_GENRE_ID:Ljava/lang/String; = "genre_id"

.field private static final EXTRA_GENRE_PARCEL:Ljava/lang/String; = "genre_parcel"

.field public static final REFRESH_HOME_LOLOMO:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

.field static final REQUEST_RESOLVE_ERROR:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private TTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

.field private bWasHamburgerClicked:Z

.field private final backStackIntents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private genreId:Ljava/lang/String;

.field private hasCheckedOnRampEligibility:Z

.field private isFirstLaunch:Z

.field private mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

.field private mStartedTimeMs:J

.field private final mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private final managerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

.field private notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

.field private final notificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private pauseTimeMs:J

.field private readRunnable:Ljava/lang/Runnable;

.field private readRunnableHandler:Landroid/os/Handler;

.field private final refreshHomeReceiver:Landroid/content/BroadcastReceiver;

.field private slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

.field private viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$2;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->managerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->refreshHomeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$8;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->hasCheckedOnRampEligibility:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setupTTRTracking()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->leaveExperienceBreadcrumb()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/home/HomeActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mStartedTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->clearAllStateAndRefresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/home/HomeActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->bWasHamburgerClicked:Z

    return v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->bWasHamburgerClicked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->cancelMarkingNotificationsAsRead()V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDialogsIfApplicable()V

    return-void
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/ui/home/DialogManager;)Lcom/netflix/mediaclient/ui/home/DialogManager;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

    return-object p1
.end method

.method private cancelMarkingNotificationsAsRead()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    sget-object v1, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnableHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->readRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private clearAllStateAndRefresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->flushCaches()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->refresh()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->refresh()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->refreshSocialNotificationsStateIfNeeded()V

    return-void
.end method

.method public static createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getHomeActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 3

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    const-string/jumbo v2, "lolomo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getHomeActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    return-object v0
.end method

.method private handleNewIntent(Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "genre_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "genre_id"

    const-string/jumbo v3, "lolomo"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "expandMinPlayer"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notifyMdxMiniPlayerShown(Z)V

    :cond_1
    const-string/jumbo v2, "genre_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "HomeActivity"

    const-string/jumbo v2, "No new genre ID to show"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "HomeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Curr genre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new genre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v1, "HomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Asked to show genre that we\'re already showing - skipping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->closeDrawers()V

    :cond_5
    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_6
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getCurrentViewType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "lolomo"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "HomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding genre to back stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private leaveExperienceBreadcrumb()V
    .locals 4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isFirstLaunch:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "experience="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Left breadcrumb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private lockSlidingDrawer()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method private onResumeAfterTimeout()V
    .locals 2

    const v0, 0x7f0801ef

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->clearAllStateAndRefresh()V

    return-void
.end method

.method private refreshSocialNotificationsStateIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->refreshIrisNotifications(Z)V

    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->refreshHomeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->expandMdxMiniPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.service.ACTION_EXPAND_HOME_MDX_MINI_PLAYER"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->canLoadNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupTTRTracking()V
    .locals 2

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "setupTTRTracking"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;-><init>(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$InteractiveListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->TTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->TTRTracker:Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->setTTRTracker(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker$TTRTracker;)V

    return-void
.end method

.method private setupViews()V
    .locals 3

    const v0, 0x7f0f018a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->unlockSlidingDrawerIfPossible()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Created sliding menu adapter of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setScrimColor(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateActionBar()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateSlidingDrawer()V

    return-void
.end method

.method private showDataSaverNotif()V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/DataSaverNotifier;->showNotificationIfNecessary(Landroid/app/Activity;)V

    return-void
.end method

.method private showDialogsIfApplicable()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getGenre()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->hasCheckedOnRampEligibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->displayDialogsIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDataSaverNotif()V

    :cond_0
    return-void
.end method

.method public static showGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getHomeActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "genre_parcel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNewFrag()V
    .locals 4

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateActionBar()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->updateSlidingDrawer()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setPrimaryFrag(Landroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f011b

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v2

    const-string/jumbo v3, "primary"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private toggleDrawer()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const v3, 0x800003

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuClosed:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->slidingMenuOpened:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->bWasHamburgerClicked:Z

    goto :goto_0
.end method

.method private unlockSlidingDrawerIfPossible()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method private updateActionBar()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating action bar, genre: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setSandwichIcon(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    goto :goto_1
.end method

.method private updateSlidingDrawer()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    return-void
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowSnackBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isKubrick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/BarkerHomeActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/BarkerHomeActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->managerStatusListener:Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    return-object v0
.end method

.method protected bridge synthetic createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    return-object v0
.end method

.method protected createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    const-string/jumbo v0, "lolomo"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useKidsGenresLoMo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1647397"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getGenreType()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->GALLERY:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    const v0, 0x7f0f0181

    return v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    const v0, 0x7f030065

    return v0
.end method

.method public getCurrentViewType()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "lolomo"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->browseTitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0
.end method

.method public getGenre()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genre:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryFrag()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const v3, 0x800003

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v2, "Sliding drawer was open, closing..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Back pressed, backStack size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->onNewIntent(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "No more items in back stack, finishing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccept()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->onAccept()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDataSaverNotif()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->HOME_ACTIVITY_CREATED:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isFirstLaunch:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mStartedTimeMs:J

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    const-string/jumbo v0, "extra_back_stack_intents"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleNewIntent(Landroid/content/Intent;)Z

    new-instance v0, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->setupViews()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->registerReceivers()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->pauseTimeMs:J

    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola2Utils;->forceToPortraitIfNeeded(Landroid/app/Activity;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/netflix/mediaclient/ui/search/SearchMenu;->addSearchNavigation(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_4

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    return-void

    :cond_1
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v3, "onCreateOptionsMenu got null MdxMiniPlayerFrag"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getUserMessageAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public onDecline()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mDialogManager:Lcom/netflix/mediaclient/ui/home/DialogManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/DialogManager;->onDecline()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDataSaverNotif()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onNewIntent: "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->handleNewIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showNewFrag()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onPause()V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onResumedAfterTimeout() will fire if activity not resumed within: 28800 seconds"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->pauseTimeMs:J

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->cancelMarkingNotificationsAsRead()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onActivityPause(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onResume()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->slidingMenuAdapter:Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;->onActivityResume(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->pauseTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b77400

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "Activity resume timeout reached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->onResumeAfterTimeout()V

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->mUserMessageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->invalidateOptionsMenu()V

    new-instance v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity resume timeout NOT reached, elapsed ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "extra_back_stack_intents"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->backStackIntents:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected onSlidingPanelCollapsed(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->unlockSlidingDrawerIfPossible()V

    return-void
.end method

.method protected onSlidingPanelExpanded(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->lockSlidingDrawer()V

    return-void
.end method

.method public performUpAction()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->toggleDrawer()V

    return-void
.end method

.method protected requiresDownloadButtonListener()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getHomeView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildMyDownloadTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    return-object v0
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSetIntentOnNewIntent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showNoNetworkOverlayIfNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showProfileToast()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DEBUG: Profile %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
