.class public abstract Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "DetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;


# static fields
.field private static final ACTION_FINISH_DETAILS_ACTIVITIES:Ljava/lang/String; = "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

.field private static final NOTIFICATION_BEACON_SENT:Ljava/lang/String; = "notification_beacon_sent"

.field private static final TAG:Ljava/lang/String; = "DetailsActivity"

.field public static final USE_DUMMY_DATA:Z


# instance fields
.field protected episodeId:Ljava/lang/String;

.field private mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field private mActionToken:Ljava/lang/String;

.field private mNotificationOpenedReportAlreadySent:Z

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private final reloadReceiver:Landroid/content/BroadcastReceiver;

.field private serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private shareMenuCreated:Z

.field private startDPTTISession:Z

.field protected videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    .line 442
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->reloadReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->reloadData()V

    return-void
.end method

.method public static finishAllDetailsActivities(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method private handleAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "No action task specified"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Action add to my list started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleAddToMyList()V

    .line 280
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 281
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    .line 282
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->RemoveFromMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Action remove from my list started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleRemoveFromMyList()V

    goto :goto_1

    .line 275
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string/jumbo v0, "DetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not supported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleAddToMyList()V
    .locals 8

    .prologue
    .line 302
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string/jumbo v0, "DetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAddToMyList:: msg token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportAddToQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 309
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getTrackId()I

    move-result v3

    .line 310
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    new-instance v6, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;

    const-string/jumbo v7, "DetailsActivity"

    invoke-direct {v6, p0, v7}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V

    .line 306
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 313
    return-void
.end method

.method private handleRemoveFromMyList()V
    .locals 6

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRemoveFromQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    new-instance v4, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;

    const-string/jumbo v5, "DetailsActivity"

    invoke-direct {v4, p0, v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$MyListCallback;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Ljava/lang/String;)V

    .line 317
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 322
    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->reloadReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "com.netflix.mediaclient.ui.login.ACTION_FINISH_DETAILS_ACTIVITIES"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerFinishReceiverWithAutoUnregister(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private reloadData()V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendReloadRequest(Landroid/app/Fragment;)V

    .line 359
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendReloadRequest(Landroid/app/Fragment;)V

    .line 360
    return-void
.end method

.method private sendReloadRequest(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 363
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Found frag to execute reload request..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;->reload()V

    goto :goto_0
.end method

.method private sendRetryRequest(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 344
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "Found frag to execute retry request..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    check-cast p1, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    goto :goto_0
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public canShowSnackBar()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 0

    .prologue
    .line 372
    return-object p0
.end method

.method public endDPTTISession(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 137
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getApmSafely()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 141
    return-void
.end method

.method protected fillVideoAndEpisodeIds()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public getAction()Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method

.method public getActionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 3

    .prologue
    .line 391
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getTrackId()I
    .locals 3

    .prologue
    .line 291
    const/4 v0, -0x1

    .line 292
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    .line 293
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "TrackId found in PlayContextImpl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string/jumbo v1, "DetailsActivity"

    const-string/jumbo v2, "TrackId not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 424
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v3

    aput-object v3, v2, v1

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 425
    if-eqz v0, :cond_1

    .line 426
    instance-of v4, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;

    if-eqz v4, :cond_0

    .line 427
    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;

    .line 428
    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;->getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    .line 429
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    return-object v0

    .line 434
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;

    const-string/jumbo v1, "Fragment does not implement VideoDetailsViewGroupProvider"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 439
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;

    const-string/jumbo v1, "No visible VideoDetailsViewGroup found"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$VideoDetailsViewGroupProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_video_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Start intent must provide extra value: extra_video_type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 106
    const-string/jumbo v0, "notification_beacon_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->fillVideoAndEpisodeIds()V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_action_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_playcontext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 115
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 117
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string/jumbo v1, "DetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TRACK_ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerReceivers()V

    .line 124
    return-void

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession()V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->addSelectPlayTarget(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1, p0}, Lcom/netflix/mediaclient/util/IrisUtils;->addShareIcon(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/view/Menu;Landroid/content/Context;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->shareMenuCreated:Z

    .line 179
    invoke-static {p0, p1, v1}, Lcom/netflix/mediaclient/ui/details/DetailsMenu;->addItems(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/view/Menu;Z)V

    .line 180
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 181
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onDestroy()V

    .line 146
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "reason"

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endDPTTISession(Ljava/util/Map;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 193
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "ServiceManager ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 196
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->shareMenuCreated:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->invalidateOptionsMenu()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/Coppola1Utils;->injectPlayerFragmentIfNeeded(Landroid/app/Activity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 202
    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->forceToPortraitIfNeeded(Landroid/app/Activity;)V

    .line 204
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    .line 208
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    if-nez v0, :cond_2

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleAction()V

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerLoadingStatusCallback()V

    .line 217
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "ServiceManager unavailable"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 185
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/util/IrisUtils;->tryHandleMenuItemClick(Landroid/view/MenuItem;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendRetryRequest(Landroid/app/Fragment;)V

    .line 340
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->sendRetryRequest(Landroid/app/Fragment;)V

    .line 341
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "notification_beacon_sent"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mNotificationOpenedReportAlreadySent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public registerLoadingStatusCallback()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 236
    return-void
.end method

.method protected requiresDownloadButtonListener()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method protected setAction(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 404
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "DetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mAction:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 408
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->mActionToken:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 377
    return-void
.end method

.method public setVideoAndEpisodeIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->episodeId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method protected setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->videoId:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public startDPTTISession()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession:Z

    .line 128
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;

    .line 132
    return-void
.end method
