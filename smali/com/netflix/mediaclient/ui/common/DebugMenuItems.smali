.class public Lcom/netflix/mediaclient/ui/common/DebugMenuItems;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->logTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->requestExternalFileWritePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addStopCronetLogging(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addStartCronetLogging(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->beginTraceview()V

    return-void
.end method

.method private addBarkerBars(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Show Barker Bars"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$26;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$26;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addClearTooltip(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Reset Tooltips state"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$1;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addCrashItem(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Crash"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$18;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$18;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addCreateAutoLoginToken(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Create AutoLogin Token"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$8;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addDebugOverlay(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Network Request Overlay"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$29;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$29;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/debug/DebugOverlay;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private addDumpCacheToDiskItem(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Dump Cache to Disk"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$9;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addDumpHomeLolomoToHtmlItem(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const-string/jumbo v1, "Dump Lolomo to Html"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private addDumpPerfData(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Dump Perf Data"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$22;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$22;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addFlushCLEvents(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Push logging events"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$24;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$24;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addFlushDataCacheItem(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Flush Data Cache"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$21;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$21;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addHprofDumpItem(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Dump hprof profile"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$16;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$16;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addKitchensink(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Kitchensink"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$3;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addLaunchNotificationsActivity(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Launch Notifications Activity"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$7;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addMakeRefreshCwRemoteCall(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Make refreshCw Remote Call"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$13;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$13;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addMakeRefreshIqRemoteCall(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Make refreshIq Remote Call"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$14;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$14;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addMakeRefreshLolomoRemoteCall(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Make refreshLolomo Remote Call"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$15;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$15;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addReportBug(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Report a bug"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$2;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addResetABConfigData(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Request config data"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addRunPrefetchLolomoSchedulerJob(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Run Prefetch Lolomo JobScheduler"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$23;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$23;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addSendCwRefreshBroadcast(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Send Cw Refresh Broadcast"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$12;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addSendHomeRefreshBroadcast(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Send Home Refresh"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$11;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$11;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addStartCronetLogging(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Start Cronet logging"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Landroid/view/Menu;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addStopCronetLogging(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Stop Cronet logging"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$5;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Landroid/view/Menu;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addToaster(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Show Playback Advisory"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addToggleFetchErrorsItem(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Toggle Fetch Errors"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$20;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$20;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private addTraceviewItem(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "5s Traceview"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$17;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$17;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private beginTraceview()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "**********************************************************************"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Starting method trace..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "**********************************************************************"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nflx"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$19;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$19;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private launchOnramp(Landroid/view/Menu;)V
    .locals 2

    const-string/jumbo v0, "Launch OnRamp"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private requestExternalFileWritePermission()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 v3, 0x91

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addAPIEnvironmentPicker(Landroid/view/Menu;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "PROD"

    aput-object v1, v0, v3

    const-string/jumbo v1, "STAGING"

    aput-object v1, v0, v4

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "INT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "TEST"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v3, "api_environment_preference"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Pick API environment"

    invoke-interface {p1, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public addItems(Landroid/view/Menu;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addReportBug(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addDebugOverlay(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addToaster(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addResetABConfigData(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addFlushCLEvents(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addRunPrefetchLolomoSchedulerJob(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->launchOnramp(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addBarkerBars(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addDumpPerfData(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addLaunchNotificationsActivity(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addDumpCacheToDiskItem(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addDumpHomeLolomoToHtmlItem(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addHprofDumpItem(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addTraceviewItem(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addToggleFetchErrorsItem(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addFlushDataCacheItem(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addSendHomeRefreshBroadcast(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addSendCwRefreshBroadcast(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addMakeRefreshCwRemoteCall(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addMakeRefreshIqRemoteCall(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addMakeRefreshLolomoRemoteCall(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addCreateAutoLoginToken(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addCrashItem(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addAPIEnvironmentPicker(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addKitchensink(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addClearTooltip(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->getInstance(Landroid/content/Context;)Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->isNetLogInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addStopCronetLogging(Landroid/view/Menu;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->addStartCronetLogging(Landroid/view/Menu;)V

    goto :goto_0
.end method
