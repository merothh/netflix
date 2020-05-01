.class public Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;
.super Ljava/lang/Object;
.source "IntegratedClientLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/ApplicationStateListener;
.implements Lcom/netflix/mediaclient/service/logging/EventHandler;


# static fields
.field private static final CL_MAX_TIME_THAN_EVENT_CAN_STAY_IN_QUEUE_MS:I = 0xea60

.field private static final CL_MIN_NUMBER_OF_EVENTS_TO_POST:I = 0x1e

.field private static final DEFAULT_USER_SESSION_TIMEOUT_MS:I = 0x1b7740

.field static final REPOSITORY_DIR:Ljava/lang/String; = "iclevents"

.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

.field private mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

.field private mClientLoggingWebClient:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;

.field private final mContext:Landroid/content/Context;

.field private mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

.field private mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

.field private final mEventPerSessionRndGeneratorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

.field private mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

.field private final mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLoggingSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/LoggingSession;",
            ">;"
        }
    .end annotation
.end field

.field private mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

.field private final mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

.field private final mPendingCachedLogPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

.field private final mSequence:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mService:Lcom/netflix/mediaclient/service/NetflixService;

.field private mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

.field private mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

.field private mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

.field private final mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private final mUserSessionEnabledStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 4

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    .line 1045
    new-instance v0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$7;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 165
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 167
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->validateActiveSessions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->sendEvents(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->loadAndSendEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->removeSavedEvents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mClientLoggingWebClient:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    return-object v0
.end method

.method private checkUserSessionState()V
    .locals 6

    .prologue
    .line 503
    .line 504
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLocalPlaybackInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Local playback is in progress, consider that user just interacted with UI. Exit."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->updateUserInteraction()V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Local playback is NOT in progress, check last user interaction"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v0

    .line 513
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    const-string/jumbo v2, "nf_log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Since last user interaction elapsed (sec): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getUserSessionDurationInMs()J

    move-result-wide v2

    .line 518
    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->isUserSessionExist()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 519
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "It is more than 30 minutes and user session exist. End user session"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->timeout:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V

    goto :goto_0

    .line 522
    :cond_3
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->isLogoutInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->isUserSessionExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "It is less than 30 minutes and user session does NOT exist. Start user session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->inputEvent:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    goto :goto_0
.end method

.method private createSession(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UI is in foreground when service was started, create foreground session"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startForegroundSession(Landroid/content/Intent;)V

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getNumberOfActivities()I

    move-result v0

    if-lez v0, :cond_1

    .line 231
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UI exist, but app is background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startBackgroundingSession()V

    goto :goto_0

    .line 234
    :cond_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UI does not exist, app is in suspend state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startSuspendSession()V

    goto :goto_0
.end method

.method private deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V
    .locals 8

    .prologue
    .line 704
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 705
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "No saved events found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1
    return-void

    .line 709
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " payloads waiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 715
    invoke-interface {v2}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 717
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 718
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "We are already trying to deliver %s deliveryRequestId, skip"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    if-eqz p2, :cond_5

    .line 724
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$3;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$3;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    .line 729
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNextTimeToDeliverAfterFailure()J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 724
    invoke-interface {v3, v4, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 731
    :cond_5
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$4;

    invoke-direct {v4, p0, v2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$4;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private flushEventQueueIfCriteriaIsFulfilled()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->flushIfCriteriaIsFulfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Events were send recently. We reached timeout, force send"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    return-void
.end method

.method private getUserSessionDurationInMs()J
    .locals 4

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 1022
    if-nez v0, :cond_0

    .line 1023
    const-wide/32 v0, 0x1b7740

    .line 1026
    :goto_0
    return-wide v0

    .line 1025
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getApmUserSessionDurationInSeconds()I

    move-result v0

    int-to-long v0, v0

    .line 1026
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private initDataRepository()V
    .locals 3

    .prologue
    .line 247
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ICLManager::init data repository started "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "iclevents"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 252
    new-instance v0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$1;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 273
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ICLManager::init data repository done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private isEventSuppressed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 876
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createSessionLookupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 877
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 878
    if-nez v0, :cond_1

    move v1, v2

    .line 920
    :cond_0
    :goto_0
    return v1

    .line 882
    :cond_1
    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v4

    .line 883
    if-nez v4, :cond_2

    .line 884
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CL session specification overide not found. Event can be sent for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 890
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    const-string/jumbo v0, "nf_log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CL session specification overide found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_3
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v0

    if-gtz v0, :cond_4

    .line 895
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Event should NOT be suppressed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :cond_4
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v0

    if-lt v0, v7, :cond_5

    .line 900
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Event is fully suppressed."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 905
    const-string/jumbo v0, "nf_log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event is suppressed with restriction that "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSuppressPercentagePerEvent()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of created events will not be logged."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    .line 909
    if-nez v0, :cond_7

    .line 910
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 911
    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_7
    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 915
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getSuppressPercentagePerEvent()I

    move-result v0

    if-lt v3, v0, :cond_9

    move v0, v1

    .line 916
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 917
    const-string/jumbo v1, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rnd value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", event can be sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v1, v0

    .line 920
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 915
    goto :goto_1
.end method

.method private isKids()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 994
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 995
    if-nez v1, :cond_0

    .line 996
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "getUiMode:: getUserAgent is null! isKids() = false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :goto_0
    return v0

    .line 1000
    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isUserLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1001
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "getUiMode:: user is NOT logged in. isKids() = false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    .line 1006
    if-nez v1, :cond_2

    .line 1007
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "getUiMode:: user is logged in, but profile is null. isKids() = false"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1011
    :cond_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    goto :goto_0
.end method

.method private loadAndSendEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 742
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Load event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$5;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/netflix/mediaclient/util/data/DataRepository;->load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V

    .line 764
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 172
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_PAUSED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_UNPAUSED"

    aput-object v2, v0, v1

    .line 178
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 179
    return-void
.end method

.method private removeSavedEvents(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/util/data/DataRepository;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Failed to remove payload from repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveEvents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/util/data/DataRepository;->save(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Failed to save payload to repository"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEvents(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 530
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send events "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentAppLocale()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->addAllEvent(Ljava/util/List;)V

    .line 538
    :try_start_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/LoggingRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Payload for log request: "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string/jumbo v1, "nf_log"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_1
    if-eqz p2, :cond_2

    .line 545
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->saveEvents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPendingCachedLogPayloads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mClientLoggingWebClient:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;

    new-instance v3, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-interface {v2, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;->sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V

    .line 555
    :goto_0
    return-void

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mClientLoggingWebClient:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingWebCallbackImpl;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;->sendLoggingEvents(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Failed to create JSON object for logging request"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 183
    return-void
.end method

.method private validateActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 573
    instance-of v0, p1, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 574
    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;

    .line 575
    const-string/jumbo v2, "appSession"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->getSessionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Do not check app session start event, skip"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getAllActiveSessions()Ljava/util/List;

    move-result-object v0

    .line 585
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    .line 589
    const-string/jumbo v5, "appSession"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 591
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v5

    if-nez v5, :cond_2

    .line 592
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v6, "Application session id was missing! Remove session key!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_1
    :goto_2
    const-string/jumbo v5, "userSession"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 599
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v5

    if-nez v5, :cond_3

    .line 600
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v6, "User session id is missing!! Remove session key!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    move v1, v0

    .line 606
    goto :goto_1

    .line 595
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 603
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_3

    .line 608
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    .line 609
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->removeActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;)Z

    goto :goto_4

    .line 612
    :cond_5
    if-lt v2, v7, :cond_6

    if-ge v1, v7, :cond_7

    .line 613
    :cond_6
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "validate session found error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 615
    :cond_7
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "validate session done with no errors"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method private validateActiveSessions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/Event;

    .line 562
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->validateActiveSession(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method


# virtual methods
.method public addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    .locals 1

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public canSendEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->isConsolidatedLoggingSessionEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->isEventSuppressed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkState()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->flushEventQueueIfCriteriaIsFulfilled()V

    .line 498
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->checkUserSessionState()V

    .line 499
    return-void
.end method

.method public createUserSession(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Log;->resetSessionID(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V

    .line 493
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->newUserSession()V

    .line 494
    return-void
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->removeListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z

    .line 242
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->unRegisterReceivers()V

    .line 243
    return-void
.end method

.method public endAllActiveSessions()V
    .locals 2

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->pauseDelivery()V

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endAllActiveSessions()V

    .line 1090
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endAllActiveSessions()V

    .line 1091
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAllActiveSessions()V

    .line 1092
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->endAllActiveSessions()V

    .line 1093
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->endAllActiveSessions()V

    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->endAllActiveSessions()V

    .line 1095
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->endAllActiveSessions()V

    .line 1096
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->endAllActiveSessions()V

    .line 1097
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->endAllActiveSessions()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->resumeDelivery(Z)V

    .line 1102
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    const-string/jumbo v1, "Failed to report"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method flush(Z)V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$6;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 781
    return-void
.end method

.method public getActionLogging()Lcom/netflix/mediaclient/servicemgr/UserActionLogging;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    return-object v0
.end method

.method getActiveSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    monitor-enter v2

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/LoggingSession;

    .line 324
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/client/LoggingSession;->getKey()Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    return-object v1
.end method

.method public getApmLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerServiceLogging()Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    return-object v0
.end method

.method getNextSequence()J
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSequence:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOfflineLogging()Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    return-object v0
.end method

.method public getSignInLogging()Lcom/netflix/mediaclient/servicemgr/SignInLogging;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    return-object v0
.end method

.method public getUiViewLogging()Lcom/netflix/mediaclient/servicemgr/UIViewLogging;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    return-object v0
.end method

.method public getUserSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleConnectivityChange(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleConnectivityChange(Landroid/content/Context;)V

    .line 1034
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Device is connected, lets see if we need to deliver cached events..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mDataRepository:Lcom/netflix/mediaclient/util/data/DataRepository;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    move-result-object v0

    .line 1038
    if-nez v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_1

    .line 1039
    :cond_0
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "We found %d cached log entries, network is connected, lets try to deliver them"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->deliverSavedPayloads([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Z)V

    .line 1043
    :cond_1
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleIntent(Landroid/content/Intent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by APM logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleIntent(Landroid/content/Intent;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by UI Action logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleIntent(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by UI View logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by Search logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 655
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by customer service logging logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by signIn logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 659
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by Iko logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 661
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Handled by Offline logger"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    :cond_7
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Action not handled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    .prologue
    .line 190
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    .line 194
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init web client start "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClientFactory;->create(Lcom/netflix/mediaclient/service/webclient/WebClient;)Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mClientLoggingWebClient:Lcom/netflix/mediaclient/service/logging/client/ClientLoggingWebClient;

    .line 196
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ClientLoggingAgent::init web client done "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    .line 199
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    .line 200
    new-instance v0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUIViewLogging:Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getAndClearCachedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Add ICL manager as listener on user input..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mInputManager:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->addListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z

    .line 206
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Add ICL manager as listener on user input done."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    .line 209
    new-instance v1, Lcom/netflix/mediaclient/service/logging/SearchLogging;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUser()Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/service/logging/SearchLogging;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSearchLogging:Lcom/netflix/mediaclient/service/logging/SearchLogging;

    .line 210
    new-instance v1, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mCustomerServiceLogging:Lcom/netflix/mediaclient/service/logging/CustomerServiceLoggingImpl;

    .line 211
    new-instance v1, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSignInLogging:Lcom/netflix/mediaclient/service/logging/SignInLoggingImpl;

    .line 212
    new-instance v1, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    .line 213
    new-instance v1, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    .line 215
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->initDataRepository()V

    .line 216
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->registerReceivers()V

    .line 217
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->createSession(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public isConsolidatedLoggingSessionEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 803
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createSessionLookupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 804
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 805
    if-eqz v0, :cond_2

    .line 806
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    const-string/jumbo v1, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CL session specification overide exist and status enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 853
    :cond_1
    :goto_0
    return v1

    .line 811
    :cond_2
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v4, "CL session cached status not found, check if overide exist"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 815
    if-nez v0, :cond_3

    move v1, v2

    .line 816
    goto :goto_0

    .line 819
    :cond_3
    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getConsolidatedLoggingSessionSpecification(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;

    move-result-object v0

    .line 820
    if-nez v0, :cond_4

    .line 821
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CL session specification overide not found. Session is enabled for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 828
    const-string/jumbo v4, "nf_log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CL session specification overide found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v4

    if-gtz v4, :cond_6

    .line 832
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "CL session is enabled without restrictions"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v4

    if-lt v4, v7, :cond_7

    .line 837
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "CL session is disabled"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 842
    const-string/jumbo v4, "nf_log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CL session is enabled with restriction that "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of user sessions will not be logged."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_8
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 846
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 847
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;->getDisableChancePercentagePerUserSession()I

    move-result v0

    if-lt v4, v0, :cond_a

    move v0, v1

    .line 848
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 849
    const-string/jumbo v1, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rnd value "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", session is enabled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_9
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 853
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 847
    goto :goto_1
.end method

.method newUserSession()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventPerSessionRndGeneratorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 928
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mUserSessionEnabledStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 929
    return-void
.end method

.method public onBackground(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 355
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "App in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startBackgroundingSession()V

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundingSession()V

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endForegroundSession()V

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startBackgroundSession()V

    .line 361
    return-void
.end method

.method public onFocusGain(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 399
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "App ui gains focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 401
    return-void
.end method

.method public onFocusLost(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 393
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "App ui lost focus"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startUnfocusedSession()V

    .line 395
    return-void
.end method

.method public onForeground(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 333
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "App in foreground"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 336
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startResumingSession()V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endResumingSession()V

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundSession()V

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endSuspendSession()V

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startForegroundSession(Landroid/content/Intent;)V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 348
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->resumeFromBackground:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    goto :goto_0
.end method

.method public onUiGone(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 384
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "App ui gone"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endUnfocusedSession()V

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->endBackgroundingSession()V

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mSuspendLogging:Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/SuspendLoggingImpl;->startSuspendSession()V

    .line 389
    return-void
.end method

.method public onUiStarted(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 4

    .prologue
    .line 369
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "App ui started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/app/UserInputManager;->getTimeSinceLastUserInteraction()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 372
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->appStart:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;)V

    goto :goto_0
.end method

.method pauseDelivery()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->pauseDelivery()V

    .line 768
    return-void
.end method

.method public post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V
    .locals 4

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getActiveSessions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->addAllActiveSession(Ljava/util/List;)V

    .line 444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->getNextSequence()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setSequence(J)V

    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getUptime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setUptime(J)V

    .line 446
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->isKids()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setKids(Z)V

    .line 447
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getModalView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    if-nez v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->getCurrentUiView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 449
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string/jumbo v1, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UI modalView is not preset, set it to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 459
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Event received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$2;-><init>(Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 469
    return-void

    .line 454
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UI modalView is preset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getModalView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized recreateSessions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateSessions:: Received app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateSessions:: Received user session id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->pauseDelivery()V

    .line 1118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->logoutCompleted()V

    .line 1119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startApplicationSession(Z)V

    .line 1120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->startUserSession()V

    .line 1121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->handleConnectivityChange(Landroid/content/Context;)V

    .line 1122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->resumeDelivery(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    monitor-exit p0

    return-void

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V
    .locals 3

    .prologue
    .line 422
    if-nez p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mLoggingSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/logging/client/LoggingSession;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was removed from active sessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/logging/client/LoggingSession;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not found in active sessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method resumeDelivery(Z)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mEventQueue:Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager$ClientLoggingEventQueue;->resumeDelivery(Z)V

    .line 772
    return-void
.end method

.method public setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOwner:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getNrdController()Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getLog()Lcom/netflix/mediaclient/javabridge/ui/Log;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Log;->setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V

    .line 1128
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mApmLogging:Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/ApmLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mActionLogging:Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mIkoLogging:Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/IkoLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->mOfflineLogging:Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/OfflineLoggingImpl;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 641
    return-void
.end method
