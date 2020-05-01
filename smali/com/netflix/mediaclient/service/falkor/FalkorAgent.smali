.class public Lcom/netflix/mediaclient/service/falkor/FalkorAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "FalkorAgent.java"

# interfaces
.implements Lcom/netflix/falkor/ServiceProvider;
.implements Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;


# static fields
.field private static final REFRESH_NOTIFICATIONS_INTERVAL_MS:I = 0x36ee80

.field private static final TAG:Ljava/lang/String; = "FalkorAgent"

.field private static final USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

.field private static final USE_CACHE_ONLY:Ljava/lang/Boolean;

.field private static volatile isCacheWarmed:Z

.field private static final isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastSerializeTimeToDisk:J


# instance fields
.field private cache:Lcom/netflix/model/Root;

.field private cmp:Lcom/netflix/falkor/CachedModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/CachedModelProxy",
            "<",
            "Lcom/netflix/model/Root;",
            ">;"
        }
    .end annotation
.end field

.field private hasProfileChanged:Z

.field public final playReceiver:Landroid/content/BroadcastReceiver;

.field private final refreshNotificationsRunnable:Ljava/lang/Runnable;

.field private requestId:J

.field private stopPrefetchLolomoSchedulerJob:Z

.field public final userAgentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_ONLY:Ljava/lang/Boolean;

    .line 97
    sget-object v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_ONLY:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    sput-boolean v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCacheWarmed:Z

    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 167
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->playReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$2;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->userAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 838
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$9;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshNotificationsRunnable:Ljava/lang/Runnable;

    .line 113
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->canDoDataFetches()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Lcom/netflix/falkor/CachedModelProxy;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->notifyJobFinished(ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->lomoImagesCachedCountDownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->schedulePrefetchLolomoJob()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleProfileActive()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleProfileDeactive()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->handleAccountDeactive()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getFirstUnreadNotification(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->shouldBeNotificationSentToStatusBar(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->requestId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cacheLolomoImages(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    return v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    return p1
.end method

.method private cacheImage(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1363
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$18;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$18;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    move-object v1, p2

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 1379
    return-void
.end method

.method private cacheLolomoImages(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1208
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "cacheLolomoImages: not in prefetch lolomo test"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    if-eqz v0, :cond_2

    .line 1215
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "cacheLolomoImages: stopPrefetchLolomoSchedulerJob = true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1221
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1222
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "caching images for all visible videos in the view port."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0x13

    new-instance v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$16;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method private static canDoDataFetches()Z
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "wrong state - canDoDataFetches false - skipping browse request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private cancelPrefetchLolomoSchedulerJob()V
    .locals 3

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    .line 1196
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 1197
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "cancelPrefetchLolomoSchedulerJob: cancelling prefetch lolomo job..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 1204
    :cond_1
    return-void
.end method

.method private checkAndDeserializeFalcorCacheFromDisk()Z
    .locals 2

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1125
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "checkAndDeserializeFalcorCacheFromDisk: is not in test return early."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cleanUpFalcorDiskCacheAsync()V

    .line 1129
    const/4 v0, 0x0

    .line 1132
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->deserializePrefetchMetadata()Z

    move-result v0

    goto :goto_0
.end method

.method private checkAndInitPrefetchLolomoJob()V
    .locals 2

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1113
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "checkAndInitPrefetchLolomoJob: is not in test return early."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    .line 1121
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->schedulePrefetchLolomoJob()V

    goto :goto_0
.end method

.method private cleanUpFalcorDiskCacheAsync()V
    .locals 2

    .prologue
    .line 1168
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$15;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1191
    return-void
.end method

.method private countDownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1304
    if-nez p1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1307
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method private deserialize(Ljava/io/Reader;)V
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->deserializeStream(Ljava/io/Reader;)V

    .line 1528
    return-void
.end method

.method private deserializePrefetchMetadata()Z
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1454
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 1455
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1456
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "deserializePrefetchMetadata: service is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v2

    .line 1523
    :cond_1
    :goto_0
    return v0

    .line 1462
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1463
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "prefs_prefetch_json_last_write_system_time_ms"

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v6, v7}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1465
    const-wide/32 v8, 0x2255100

    sub-long v8, v6, v8

    cmp-long v3, v8, v10

    if-lez v3, :cond_5

    move v3, v1

    .line 1466
    :goto_1
    if-eqz v3, :cond_6

    .line 1467
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1468
    const-string/jumbo v1, "FalkorAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deserializePrefetchMetadata: lolomo data in cache is expired - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_3
    :try_start_0
    const-string/jumbo v1, "lolomo expired"

    .line 1473
    cmp-long v3, v4, v10

    if-gez v3, :cond_4

    .line 1474
    const-string/jumbo v1, "No prefetch lolomo data in cache"

    .line 1476
    :cond_4
    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    .line 1479
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v3, v0, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    move v0, v2

    .line 1480
    goto :goto_0

    :cond_5
    move v3, v2

    .line 1465
    goto :goto_1

    .line 1484
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1485
    const-string/jumbo v3, "FalkorAgent"

    const-string/jumbo v4, "deserializePrefetchMetadata: start"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_7
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/NetflixService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "prefetch.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1490
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1491
    const-string/jumbo v3, "FalkorAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deserializePrefetchMetadata: file path = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_8
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    :try_start_2
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->deserialize(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1496
    :try_start_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1518
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v1

    .line 1520
    :goto_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1521
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "deserializePrefetchMetadata: end"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1497
    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    .line 1498
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1499
    const-string/jumbo v4, "FalkorAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deserializePrefetchMetadata: failure - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1503
    :cond_9
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 1506
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v4, v0, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1518
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v1

    .line 1519
    goto :goto_3

    .line 1507
    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    .line 1508
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1509
    const-string/jumbo v4, "FalkorAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deserializePrefetchMetadata: failure - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1513
    :cond_a
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    .line 1516
    :goto_7
    :try_start_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v4, v0, v6, v7}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1518
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    move v0, v1

    .line 1519
    goto/16 :goto_3

    .line 1518
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_8
    invoke-static {v3}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 1514
    :catch_2
    move-exception v2

    goto :goto_7

    .line 1507
    :catch_3
    move-exception v1

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_6

    .line 1504
    :catch_5
    move-exception v2

    goto :goto_5

    .line 1497
    :catch_6
    move-exception v1

    move-object v12, v1

    move v1, v2

    move-object v2, v12

    goto/16 :goto_4

    :catch_7
    move-exception v2

    goto/16 :goto_4

    .line 1477
    :catch_8
    move-exception v1

    goto/16 :goto_2
.end method

.method private getFirstUnreadNotification(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 859
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    .line 861
    if-nez v1, :cond_1

    move-object v0, v2

    .line 877
    :cond_0
    :goto_0
    return-object v0

    .line 865
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->getCurrentMaxNotificationsNum()I

    move-result v0

    .line 867
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 869
    if-nez v1, :cond_2

    move-object v0, v2

    .line 870
    goto :goto_0

    .line 872
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 876
    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 877
    goto :goto_0
.end method

.method private handleAccountDeactive()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    .line 222
    return-void
.end method

.method private handleProfileActive()V
    .locals 2

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->shouldFlushCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleProfileActive: Flushing all caches because new profile activated..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches()V

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->hasProfileChanged:Z

    .line 245
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->checkAndInitPrefetchLolomoJob()V

    .line 246
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    return-void
.end method

.method private handleProfileDeactive()V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCurrentProfileActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->hasProfileChanged:Z

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleProfileDeactive: deleting prefetch lolomo disk cache."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cleanUpFalcorDiskCacheAsync()V

    .line 234
    :cond_1
    return-void
.end method

.method private handleResponse(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1313
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 1360
    :goto_0
    return-void

    .line 1319
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1320
    :cond_1
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "No videos in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 1324
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v2

    .line 1325
    if-nez v2, :cond_4

    .line 1326
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "handleResponse: current experience is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_3
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->countDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 1333
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v3

    .line 1334
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1335
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_a

    .line 1336
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->stopPrefetchLolomoSchedulerJob:Z

    if-eqz v0, :cond_7

    .line 1337
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1338
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v5, "handleResponse: stopPrefetchLolomoSchedulerJob = true"

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1335
    :cond_6
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1344
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_8

    .line 1345
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 1348
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 1349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v5

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v6

    invoke-virtual {v2, v5, v0, v6}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;

    move-result-object v0

    .line 1350
    if-nez v0, :cond_9

    .line 1351
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 1354
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1355
    invoke-direct {p0, v4, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cacheImage(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    goto :goto_3

    .line 1359
    :cond_a
    invoke-direct {p0, p4, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->videoImagesRequestCountdownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    goto/16 :goto_0
.end method

.method private isCachePreWarmed()Z
    .locals 1

    .prologue
    .line 255
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCacheWarmed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInPrefetchLolomoTest(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1531
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasJobScheduler(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private lomoImagesCachedCountDownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1281
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1301
    return-void
.end method

.method private notifyJobFinished(ZZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1535
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    const-string/jumbo v0, "FalkorAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyJobFinished: success - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cancelled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_1

    .line 1541
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 1544
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v0

    .line 1551
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    .line 1552
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 1553
    if-eqz p2, :cond_4

    .line 1554
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 1559
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 1560
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPrefetchLolomoJobEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1562
    :cond_3
    return-void

    .line 1555
    :cond_4
    if-eqz p1, :cond_2

    .line 1556
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0
.end method

.method private notifyJobSchedulerFinishedAsync(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1059
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$13;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method private rescheduleNotificationsRefresh()V
    .locals 4

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 855
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshNotificationsRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 856
    return-void
.end method

.method private schedulePrefetchLolomoJob()V
    .locals 7

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1137
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "checkAndInitPrefetchLolomoJob: getService() is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getJobScheduler()Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;

    move-result-object v6

    .line 1144
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 1145
    invoke-interface {v6, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1146
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1147
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "schedulePrefetchLolomoJob: prefetch job already scheduled"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_2
    :goto_1
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v2, "schedulePrefetchLolomoJob: registering JobExecutor PrefetchLolomoSchedulerJob with NetflixService "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$PrefetchLolomoSchedulerJob;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/falkor/FalkorAgent$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/NetflixService;->registerJobExecutor(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lcom/netflix/mediaclient/service/job/NetflixJobExecutor;)V

    goto :goto_0

    .line 1150
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1151
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "schedulePrefetchLolomoJob: scheduling prefetch lolomo job."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isJobNetworkTypeUnmetered(Landroid/content/Context;)Z

    move-result v0

    .line 1154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->isJobPeriodic(Landroid/content/Context;)Z

    move-result v1

    .line 1155
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->getJobPeriodicInterval()J

    move-result-wide v2

    .line 1156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->doesJobRequireCharging(Landroid/content/Context;)Z

    move-result v4

    .line 1157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->doesJobRequireDeviceIdle(Landroid/content/Context;)Z

    move-result v5

    .line 1158
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/service/job/NetflixJob;->buildPrefetchLolomoJob(ZZJZZ)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 1161
    invoke-interface {v6, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;->scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    goto :goto_1
.end method

.method private shouldBeNotificationSentToStatusBar(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z
    .locals 1

    .prologue
    .line 831
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getPushNotification()Lcom/netflix/mediaclient/servicemgr/IPushNotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPushNotification;->isOptIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    .line 832
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldFlushCache()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->hasProfileChanged:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCachePreWarmed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private videoImagesRequestCountdownAsync(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1382
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$19;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1398
    return-void
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 540
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 544
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync()V

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->userAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->playReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 143
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 144
    return-void
.end method

.method public doInit()V
    .locals 6

    .prologue
    .line 121
    new-instance v0, Lcom/netflix/model/Root;

    invoke-direct {v0}, Lcom/netflix/model/Root;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cache:Lcom/netflix/model/Root;

    .line 122
    new-instance v1, Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cache:Lcom/netflix/model/Root;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->getApiNextWebClient()Lcom/netflix/mediaclient/service/webclient/WebClient;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;

    invoke-direct {v1, p0, v2, v0}, Lcom/netflix/falkor/CachedModelProxy;-><init>(Lcom/netflix/falkor/ServiceProvider;Lcom/netflix/falkor/BranchNode;Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClient;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cache:Lcom/netflix/model/Root;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, v1}, Lcom/netflix/model/Root;->setProxy(Lcom/netflix/falkor/ModelProxy;)V

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->userAgentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->playReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->checkAndDeserializeFalcorCacheFromDisk()Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isCacheWarmed:Z

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cancelPrefetchLolomoSchedulerJob()V

    .line 134
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 135
    return-void
.end method

.method public dumpCacheToDisk()V
    .locals 2

    .prologue
    .line 996
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->dumpCacheToDisk()V

    .line 1001
    return-void
.end method

.method public endBrowsePlaySession(JIII)V
    .locals 9

    .prologue
    .line 767
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    new-instance v7, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;

    invoke-direct {v7, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/netflix/falkor/CachedModelProxy;->endBrowsePlaySession(JIIILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 780
    return-void
.end method

.method public fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchActorDetailsAndRelatedForTitle(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 422
    return-void
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 568
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 572
    return-void
.end method

.method public fetchBillboards(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 900
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchBBVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 904
    return-void
.end method

.method public fetchCW(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 908
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchCWVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 912
    return-void
.end method

.method public fetchCWFromNetwork(ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 916
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchCWVideosFromNetwork(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 920
    return-void
.end method

.method public fetchCWVideos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchCWVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 370
    return-void
.end method

.method public fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 508
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 513
    return-void
.end method

.method public fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 352
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 356
    return-void
.end method

.method public fetchEpisodesForSeason(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 647
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v1

    .line 653
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 656
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v3, "fetchEpisodesForSeason - parentId %s or videoId %s null - skip!"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_2
    :goto_0
    return-void

    .line 663
    :cond_3
    if-nez v1, :cond_4

    .line 664
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    const-string/jumbo v1, "FalkorAgent"

    const-string/jumbo v3, "fetchEpisodesForSeason - parentId %s or videoId %s is Movie - skip!"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_4
    const/4 v0, 0x0

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {p0, v2, v0, v5, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method public fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 443
    return-void
.end method

.method public fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 345
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 349
    return-void
.end method

.method public fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 450
    return-void
.end method

.method public fetchIQ(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 935
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    add-int/lit8 v2, p1, -0x1

    move v3, p2

    move v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchIQVideos(IIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 939
    return-void
.end method

.method public fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 373
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->USE_CACHE_AND_REMOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchIQVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 377
    return-void
.end method

.method public fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 1009
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1013
    return-void
.end method

.method public fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 485
    return-void
.end method

.method public fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchGenreLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 478
    return-void
.end method

.method public fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 334
    return-void
.end method

.method public fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 393
    return-void
.end method

.method public fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 980
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 984
    return-void
.end method

.method public fetchNotificationsList(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 721
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchNotifications(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 726
    return-void
.end method

.method public fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 425
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 436
    return-void
.end method

.method public fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 494
    return-void
.end method

.method public fetchPreAppData(II)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 883
    new-instance v11, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$10;

    invoke-direct {v11, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$10;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    .line 890
    add-int/lit8 v4, p2, -0x1

    .line 891
    add-int/lit8 v2, p1, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v11}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 896
    return-void
.end method

.method public fetchRecommendedList(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 943
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$11;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 975
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/falkor/CachedModelProxy;->fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 976
    return-void
.end method

.method public fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 528
    return-void
.end method

.method public fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 521
    return-void
.end method

.method public fetchSeasons(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->fetchSeasons(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 363
    return-void
.end method

.method public fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 408
    return-void
.end method

.method public fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 411
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 415
    return-void
.end method

.method public fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 460
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->PEOPLE:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchSimilarVideos(Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 464
    return-void
.end method

.method public fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 467
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->QUERY_SUGGESTION:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->fetchSimilarVideos(Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 471
    return-void
.end method

.method public fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchTask(Lcom/netflix/falkor/CachedModelProxy$CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 273
    return-void
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 385
    return-void
.end method

.method public fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 338
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 342
    return-void
.end method

.method public flushCaches()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->flushCaches()V

    .line 152
    return-void
.end method

.method public forceFetchFromLocalCache(Z)V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->forceFetchFromLocalCache(Z)V

    .line 1005
    return-void
.end method

.method public getLolomoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 636
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelProxy()Lcom/netflix/falkor/ModelProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    return-object v0
.end method

.method public getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCachedEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 2

    .prologue
    .line 987
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->invalidateEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 991
    return-void
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/falkor/CachedModelProxy;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 558
    return-void
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 504
    return-void
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V
    .locals 2

    .prologue
    .line 729
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$5;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/falkor/CachedModelProxy;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 745
    return-void
.end method

.method public markNotificationsAsRead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/falkor/CachedModelProxy;->markNotificationsAsRead(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 764
    return-void
.end method

.method public prefetchGenreLoLoMo(Ljava/lang/String;IIIIZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 323
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/falkor/CachedModelProxy;->prefetchGenreLoLoMo(Ljava/lang/String;IIIIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 327
    return-void
.end method

.method public prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 13

    .prologue
    .line 280
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string/jumbo v1, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 285
    new-instance v12, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;

    move-object/from16 v0, p11

    invoke-direct {v12, p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$3;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 316
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/netflix/falkor/CachedModelProxy;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 318
    return-void
.end method

.method public prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 401
    return-void
.end method

.method public refreshCw(ZZ)V
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Showing Kids experience - refresh popular titles..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->refreshPopularTitlesLomo()V

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->doesCwExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->refreshCw()V

    .line 609
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola2Utils;->isCoppolaDiscovery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 611
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 612
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "No connectivity - no need to refresh Discovery row"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    :goto_1
    return-void

    .line 598
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola2Utils;->isCoppolaWithoutNormalCW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->doesDiscoveryRowExist()Z

    move-result v0

    if-nez v0, :cond_8

    .line 599
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_8

    :cond_7
    if-eqz p2, :cond_9

    .line 602
    :cond_8
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "This is a special use case for Coppola - no need to refresh the whole LoLoMo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :cond_9
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshLolomo()V

    goto :goto_0

    .line 614
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->refreshDiscoveryRow()V

    goto :goto_1
.end method

.method public refreshIq()V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/falkor/CachedModelProxy;->refreshIq()V

    .line 624
    return-void
.end method

.method public refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 4

    .prologue
    .line 790
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x0

    sget v2, Lcom/netflix/mediaclient/util/IrisUtils;->PAGE_NOTIFICATIONS_SIZE:I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$8;

    invoke-direct {v3, p0, p2, p3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$8;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netflix/falkor/CachedModelProxy;->fetchNotifications(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 819
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->rescheduleNotificationsRefresh()V

    .line 822
    :cond_1
    return-void
.end method

.method public refreshLolomo()V
    .locals 2

    .prologue
    .line 627
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->flushCaches()V

    .line 632
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->sendHomeRefreshBrodcast(Landroid/content/Context;)V

    .line 633
    return-void
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/falkor/CachedModelProxy;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 551
    return-void
.end method

.method public searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 453
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 457
    return-void
.end method

.method public serializeFalcorCache()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1405
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "serializeFalkorMetadataAsync: service is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1412
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "serializeFalkorMetadataAsync: not in prefetch lolomo test"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1418
    :cond_2
    sget-wide v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->sLastSerializeTimeToDisk:J

    invoke-static {}, Lcom/netflix/falkor/CachedModelProxy;->getLastWriteTimeToCacheMS()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 1419
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "serializeFalkorMetadataAsync: no changes in falcor cache, already serialized to disk"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1426
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1427
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "serializeFalkorMetadataAsync: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSerializeLolomoStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1434
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "prefetch.json"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1435
    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->serialize(Ljava/io/Writer;)V

    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->sLastSerializeTimeToDisk:J

    .line 1438
    sget-wide v2, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->sLastSerializeTimeToDisk:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "prefs_prefetch_json_last_write_system_time_ms"

    const-wide/16 v6, -0x1

    invoke-static {v0, v4, v6, v7}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1439
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSerializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1446
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    .line 1448
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "serializeFalkorMetadataAsync: end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1440
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1441
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1442
    const-string/jumbo v2, "FalkorAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serializeFalkorMetadataAsync: serializing data to disk failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSerializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1446
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/netflix/mediaclient/util/IoUtil;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1440
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public serializeFalkorMetadataAsync()V
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalkorMetadataAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 1088
    return-void
.end method

.method public serializeFalkorMetadataAsync(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isInPrefetchLolomoTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1097
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "serializeFalkorMetadataAsync: not in prefetch lolomo test"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 533
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->setVideoRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 537
    return-void
.end method

.method public startLolomoFetchJob(Z)Z
    .locals 15

    .prologue
    .line 1021
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isApplicationInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "startLolomoFetchJob: app is in foreground right now - cancel job"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_0
    const/4 v0, 0x0

    .line 1055
    :goto_0
    return v0

    .line 1028
    :cond_1
    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "Prefetching lolomo from network"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->requestId:J

    .line 1030
    iget-wide v12, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->requestId:J

    .line 1032
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x2

    invoke-direct {v14, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1033
    const/4 v1, 0x0

    const/16 v2, 0x13

    const/4 v3, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    .line 1036
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 1037
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadExtraCharacterLeaves()Z

    move-result v7

    .line 1038
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;

    invoke-direct {v11, p0, v12, v13, v14}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$12;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;JLjava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    .line 1033
    invoke-virtual/range {v0 .. v11}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 1054
    invoke-direct {p0, v14}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->notifyJobSchedulerFinishedAsync(Ljava/util/concurrent/CountDownLatch;)V

    .line 1055
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 575
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 580
    return-void
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    .line 565
    return-void
.end method

.method public updateOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 924
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    const-string/jumbo v0, "FalkorAgent"

    invoke-static {}, Lcom/netflix/mediaclient/util/LogUtils;->getCurrMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->cmp:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/falkor/CachedModelProxy;->fetchOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 931
    :cond_1
    return-void
.end method
