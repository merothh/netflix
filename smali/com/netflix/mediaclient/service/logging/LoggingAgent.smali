.class public final Lcom/netflix/mediaclient/service/logging/LoggingAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "LoggingAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;
.implements Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;
.implements Lcom/netflix/mediaclient/servicemgr/IClientLogging;


# static fields
.field private static final EVENT_POST_TIMEOUT_MS:J = 0xea60L

.field static final ICL_REPOSITORY_DIR:Ljava/lang/String; = "iclevents"

.field static final LOGBLOB_REPOSITORY_DIR:Ljava/lang/String; = "logblobs"

.field static final NEXT_DELIVERY_ATTEMPT_TIMEOUT_IN_MS:I = 0xea60

.field static final PDSEVENT_REPOSITORY_DIR:Ljava/lang/String; = "pdsevents"

.field static final PT_REPOSITORY_DIR:Ljava/lang/String; = "ptevents"

.field private static final TAG:Ljava/lang/String; = "nf_log"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

.field private mBreadcrumbLogging:Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

.field private mCmpEventLogging:Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

.field private mCustomerEventLogging:Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

.field private mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

.field private mEventPostCheck:Ljava/lang/Runnable;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

.field private mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

.field private final mLoggerReceiver:Landroid/content/BroadcastReceiver;

.field private mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

.field private mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

.field private mStartedTime:J

.field private final mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStartedTime:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mEventPostCheck:Ljava/lang/Runnable;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent$3;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLoggerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/breadcrumb/CrittercismBreadcrumbLoggingImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/breadcrumb/CrittercismBreadcrumbLoggingImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mBreadcrumbLogging:Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/error/CrittercismErrorLoggingImpl;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/error/CrittercismErrorLoggingImpl;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ClientLoggingAgentWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent:: done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    return-object v0
.end method

.method private addConfigurationChangeListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->addConfigAgentListener(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigAgentListener;)V

    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Register receiver"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/UserActionLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/UIViewLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ISearchLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_3
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_4
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/SignInLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IkoLogging;->ACTIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_6
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/OfflineLogging;->ACTIONS:[Ljava/lang/String;

    array-length v3, v1

    :goto_7
    if-ge v0, v3, :cond_7

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/16 v0, 0x3e7

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLoggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Failed to register "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method public NrdpLog(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Log;->log(Lcom/netflix/mediaclient/javabridge/ui/LogArguments;)V

    :cond_0
    return-void
.end method

.method public changed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "App ID is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session ID is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->recreateSessions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method clearFailureCounter()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PNA:: destroy and unregister receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLoggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log;->setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->destroy()V

    :cond_3
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    return-void
.end method

.method protected doInit()V
    .locals 7

    const-wide/32 v2, 0xea60

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v4}, Lcom/netflix/mediaclient/service/logging/LegacyCustomerEventLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mCustomerEventLogging:Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/LegacyCmpEventLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mCmpEventLogging:Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v5

    invoke-direct {v0, v1, p0, v4, v5}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v4

    invoke-direct {v0, v1, p0, v4}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init create executor thread start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init create executor thread done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mEventPostCheck:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->init()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->init(Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->registerReceiver()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->onConfigurationChanged(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->addConfigurationChangeListener()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mNrdpLog:Lcom/netflix/mediaclient/javabridge/ui/Log;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public flushLoggingEvents()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Flush events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flush(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    return-void
.end method

.method public getAccountOwnerToken()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getAccountOwnerToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveLoggingSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getActiveSessions()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdvertiserIdLogging()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mAdvertiserIdLoggingManager:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getApmLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    goto :goto_0
.end method

.method public getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mBreadcrumbLogging:Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    return-object v0
.end method

.method public getCmpEventLogging()Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mCmpEventLogging:Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

    return-object v0
.end method

.method public getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mCustomerEventLogging:Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    return-object v0
.end method

.method public getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mErrorLogging:Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    return-object v0
.end method

.method public getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    return-object v0
.end method

.method public getNextSequence()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getNextSequence()J

    move-result-wide v0

    goto :goto_0
.end method

.method getNextTimeToDeliverAfterFailure()J
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mFailureCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    return-object v0
.end method

.method public getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    return-object v0
.end method

.method getUptime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mStartedTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUserAgent()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method public getUserSessionId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCommand(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Intent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleConnectivityChange(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->handleConnectivityChange(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mLogblobLogging:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->handleConnectivityChange(Landroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->handleConnectivityChange(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->handleConnectivityChange(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigRefreshed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Configuration is refreshed with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Refresh configuration for error and breadcrumb logging"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getErrorLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBreadcrumbLoggingSpecification()Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->onConfigurationChanged(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;)V

    :cond_1
    return-void
.end method

.method public onPlayEnd()V
    .locals 2

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Flush events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    return-void
.end method

.method public onProfileSwitch()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Flush events"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flush(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    return-void
.end method

.method public onUserLogout()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "onUserLogout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->endAllActiveSessions()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flush(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->resetAppID()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->flush(Z)V

    return-void
.end method

.method public pauseDelivery()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->pauseDelivery()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->pauseDelivery()V

    return-void
.end method

.method public resumeDelivery(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->resumeDelivery(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mPresentationTrackingManager:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->resumeDelivery(Z)V

    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->mIntegratedClientLoggingManager:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    return-void
.end method
