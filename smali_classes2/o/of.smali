.class public Lo/of;
.super Lo/Aj;
.source ""

# interfaces
.implements Lo/nP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/of$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/of$ActionBar;


# instance fields
.field private a:Lo/BG;

.field private final b:Landroid/os/Handler;

.field private final c:Lo/aeq;

.field private final d:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private final f:Lo/of$TaskDescription;

.field private final g:Lo/ci;

.field private h:Ljava/lang/String;

.field private final i:Landroid/content/BroadcastReceiver;

.field private final j:Ljava/lang/Runnable;

.field private final k:Lo/nS;

.field private final l:Lo/Sc;

.field private final o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/of$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/of$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/of;->e:Lo/of$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartDownloadBrowseRepo"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lo/Aj;-><init>()V

    iput-object p1, p0, Lo/of;->o:Landroid/content/Context;

    iput-object p2, p0, Lo/of;->k:Lo/nS;

    iput-object p3, p0, Lo/of;->l:Lo/Sc;

    .line 81
    sget-object p1, Lo/BG;->c:Lo/BG$Activity;

    sget-object p2, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    iget-object p3, p0, Lo/of;->o:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/BG$Activity;->a(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BG;

    move-result-object p1

    iput-object p1, p0, Lo/of;->a:Lo/BG;

    .line 87
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/of;->b:Landroid/os/Handler;

    .line 89
    new-instance p1, Lo/aeq;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/16 v0, 0xa

    invoke-direct {p1, v0, p2, p3}, Lo/aeq;-><init>(IJ)V

    iput-object p1, p0, Lo/of;->c:Lo/aeq;

    .line 91
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob;->c()Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object p1

    const-string p2, "NetflixJob.buildSmartDownloadResumeJob()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/of;->d:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 93
    sget-object p1, Lo/of$Application;->d:Lo/of$Application;

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/of;->j:Ljava/lang/Runnable;

    .line 106
    new-instance p1, Lo/of$PendingIntent;

    invoke-direct {p1, p0}, Lo/of$PendingIntent;-><init>(Lo/of;)V

    check-cast p1, Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lo/of;->i:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance p1, Lo/of$LoaderManager;

    invoke-direct {p1, p0}, Lo/of$LoaderManager;-><init>(Lo/of;)V

    check-cast p1, Lo/ci;

    iput-object p1, p0, Lo/of;->g:Lo/ci;

    .line 335
    new-instance p1, Lo/of$TaskDescription;

    invoke-direct {p1, p0}, Lo/of$TaskDescription;-><init>(Lo/of;)V

    iput-object p1, p0, Lo/of;->f:Lo/of$TaskDescription;

    return-void
.end method

.method public static final synthetic a(Lo/of;Ljava/util/List;Ljava/lang/String;)Lo/AS;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lo/of;->d(Ljava/util/List;Ljava/lang/String;)Lo/AS;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/of;)Lo/of$TaskDescription;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/of;->f:Lo/of$TaskDescription;

    return-object p0
.end method

.method public static final synthetic a(Lo/of;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lo/of;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic b(Lo/of;)Lo/ci;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/of;->g:Lo/ci;

    return-object p0
.end method

.method private final c(Ljava/lang/String;Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 567
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {v0, p1}, Lo/BG;->b(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 568
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 569
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 570
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v2

    const-string p1, "smartDownloadRepo.getWat\u2026\n                .take(1)"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 571
    new-instance p1, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;-><init>(Lo/of;Z)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Flowable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private final c(Lo/Ad$TaskDescription;)V
    .locals 6

    .line 141
    iget-object v1, p1, Lo/Ad$TaskDescription;->e:Ljava/lang/String;

    const-string v0, "playerIntent.mVideoId"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget v2, p1, Lo/Ad$TaskDescription;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 140
    invoke-static/range {v0 .. v5}, Lo/of;->c(Lo/of;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic c(Lo/of;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/of;->k()V

    return-void
.end method

.method public static synthetic c(Lo/of;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 153
    sget p3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->c:I

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/of;->e(Ljava/lang/String;II)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: enqueueWatchedEpisodeForSmartDownloads"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic d(Lo/of;Lo/BZ;)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/of;->e(Lo/BZ;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/util/List;Ljava/lang/String;)Lo/AS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/AS;"
        }
    .end annotation

    .line 626
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AS;

    .line 627
    invoke-interface {v0}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final synthetic d(Lo/of;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/of;->o()V

    return-void
.end method

.method private final e(Lo/BZ;)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 10

    .line 420
    new-instance v9, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartDownloaded_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p1}, Lo/BZ;->f()I

    move-result v2

    .line 427
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    .line 420
    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v9, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v9
.end method

.method public static final synthetic e(Lo/of;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/of;->m()V

    return-void
.end method

.method public static final synthetic e(Lo/of;Lo/Ad$TaskDescription;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/of;->c(Lo/Ad$TaskDescription;)V

    return-void
.end method

.method private final k()V
    .locals 9

    .line 240
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {v0}, Lo/BG;->b()Lio/reactivex/Flowable;

    move-result-object v0

    .line 242
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 243
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 244
    sget-object v1, Lo/of$FragmentManager;->c:Lo/of$FragmentManager;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 245
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v3

    const-string v0, "watched.observeOn(Androi\u2026() }\n            .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$scheduleSmartDownloadsResumeJobIfQueueNotEmpty$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$scheduleSmartDownloadsResumeJobIfQueueNotEmpty$2;-><init>(Lo/of;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Flowable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final l()V
    .locals 2

    const-string v0, "SmartDownloadController"

    const-string v1, "unregisterPlayStopReceiver"

    .line 228
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lo/of;->i:Landroid/content/BroadcastReceiver;

    .line 229
    invoke-static {v0, v1}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method

.method private final m()V
    .locals 2

    const-string v0, "SmartDownloadController"

    const-string v1, "registerPlayStopReceiver"

    .line 220
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lo/Sg;->a:Lo/Sg;

    iget-object v1, p0, Lo/of;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/Sg;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final o()V
    .locals 9

    const-string v0, "SmartDownloadController"

    const-string v1, "scheduleSmartDownloadResumeJob"

    .line 713
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    const-string v2, "BaseNetflixApp.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v1

    iget-object v3, p0, Lo/of;->d:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v3

    invoke-interface {v1, v3}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    invoke-direct {p0}, Lo/of;->t()V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 720
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "scheduleSmartDownloadResumeJob scheduled minimumDelay=%d"

    .line 717
    invoke-static {v0, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 722
    iget-object v0, p0, Lo/of;->d:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0, v5, v6}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e(J)V

    .line 723
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    iget-object v1, p0, Lo/of;->d:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lo/iy;->b(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    return-void
.end method

.method private final t()V
    .locals 3

    .line 727
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    iget-object v2, p0, Lo/of;->d:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartDownloadController"

    const-string v2, "scheduleSmartDownloadResumeJob cancelled"

    .line 728
    invoke-static {v0, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lo/of;->d:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    .line 487
    invoke-super {p0, p1, p2}, Lo/Aj;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateRequestResponse received for playableId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartDownloadController"

    .line 488
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 494
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p2, v0, :cond_1

    const-string p2, "onCreateRequestResponse received DL_NOT_ENOUGH_FREE_SPACE"

    .line 495
    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p2, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {p2, p1}, Lo/BG;->b(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 498
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 499
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v2

    const-string p1, "smartDownloadRepo.getWat\u2026                 .take(1)"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 500
    new-instance p1, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;-><init>(Lo/of;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Flowable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lo/Sg;->a:Lo/Sg;

    invoke-virtual {v0, p1}, Lo/Sg;->d(Ljava/lang/String;)Lo/Tf;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 605
    :cond_0
    iget-object v0, p0, Lo/of;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-13954 SmartDownloadController deleteOfflinePlayable: the playableId was used by the Player. Not deleting."

    .line 607
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return v1

    .line 612
    :cond_1
    iget-object v0, p0, Lo/of;->k:Lo/nS;

    invoke-interface {v0, p1}, Lo/nS;->a(Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SmartDownloadController just deleted a playable in deleteOfflinePlayable"

    .line 614
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchedEpisodes"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    sget-object v0, Lo/Sg;->a:Lo/Sg;

    invoke-virtual {v0, p1}, Lo/Sg;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 445
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-static {p2}, Lo/akz;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BZ;

    invoke-virtual {p1}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 450
    :cond_0
    invoke-static {p2}, Lo/akz;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/BZ;

    .line 451
    invoke-static {p1}, Lo/akz;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Tf;

    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p1

    const-string v0, "downloadedEpisodes.last().playable"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Lo/BZ;->e()I

    move-result v0

    invoke-interface {p1}, Lo/AK;->X()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Lo/BZ;->c()I

    move-result v0

    invoke-interface {p1}, Lo/AK;->V()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 455
    invoke-virtual {p2}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 457
    :cond_1
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lastDownloadedEpisode.playableId"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 208
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    const-string v0, "SmartDownloadController"

    const-string v1, "onUserAccountActive received"

    .line 209
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lo/of;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onUserAccountActive received, registerPlayStopReceiver"

    .line 211
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lo/of;->m()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 542
    iget-object v0, p0, Lo/of;->b:Landroid/os/Handler;

    new-instance v1, Lo/of$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/of$StateListAnimator;-><init>(Lo/of;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "videoId"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lo/of;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 3

    .line 674
    monitor-enter p0

    .line 676
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart_downloads_preference"

    const/4 v2, 0x1

    .line 675
    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 674
    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    .line 688
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {v0}, Lo/BG;->a()V

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 198
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    const-string v0, "SmartDownloadController"

    const-string v1, "onUserAccountInActive received"

    .line 199
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lo/of;->l()V

    return-void
.end method

.method protected final e(Ljava/lang/String;II)V
    .locals 8

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lo/of;->k:Lo/nS;

    invoke-interface {v0}, Lo/nS;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    sget-object v0, Lo/Sg;->a:Lo/Sg;

    invoke-virtual {v0, p1}, Lo/Sg;->d(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1}, Lo/Tf;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 162
    :cond_1
    invoke-virtual {p1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    const-string v0, "SmartDownloadController"

    const-string v1, "PlayStopReceiver received an OfflinePlayback episode"

    .line 163
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    const-string v2, "showData.playable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->R()I

    move-result v1

    if-lt p2, v1, :cond_2

    const-string p2, "PlayStopReceiver received an OfflinePlayback episode that was finished, storing in Room and start SD"

    .line 166
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartDownloadController.playStartStopReceiver storing WatchedEpisode of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lo/of;->a:Lo/BG;

    .line 174
    new-instance v7, Lo/BZ;

    .line 175
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    const-string v0, "playable.playableId"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 177
    invoke-interface {p1}, Lo/AK;->X()I

    move-result v3

    .line 178
    invoke-interface {p1}, Lo/AK;->V()I

    move-result v4

    .line 179
    invoke-interface {p1}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move v6, p3

    .line 174
    invoke-direct/range {v0 .. v6}, Lo/BZ;-><init>(Ljava/lang/String;ZIILjava/lang/String;I)V

    .line 173
    invoke-virtual {p2, v7}, Lo/BG;->b(Lo/BZ;)V

    .line 184
    invoke-virtual {p0}, Lo/of;->h()V

    :cond_2
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;)V"
        }
    .end annotation

    const-string v0, "episodeList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 362
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AS;

    .line 363
    invoke-interface {v1}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v1

    .line 364
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lo/of;->k:Lo/nS;

    move-object v2, p0

    check-cast v2, Lo/nV;

    invoke-interface {v0, v2}, Lo/nS;->e(Lo/nV;)V

    .line 371
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {v0, v1}, Lo/BG;->e(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 372
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 373
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v2, 0x1

    .line 374
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v4

    const-string v0, "smartDownloadRepo.getSor\u2026o())\n            .take(1)"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;-><init>(Lo/of;Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v0

    check-cast v7, Lo/alA;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Flowable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final e(Lo/BZ;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 7

    const-string v0, "watchedEpisode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextEpisodeId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {v0, p1, p2}, Lo/BG;->c(Lo/BZ;Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lo/of;->k:Lo/nS;

    .line 474
    new-instance v6, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    .line 476
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 478
    invoke-static {}, Lo/adR;->d()Ljava/lang/String;

    move-result-object v4

    .line 479
    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->b:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-object v0, v6

    move-object v1, p2

    move-object v3, p3

    .line 474
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    .line 473
    invoke-interface {p1, v6}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    .line 482
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SmartDownloadController just enqueued a videoId in downloadNextEpisodeForWatchedEpisode"

    .line 483
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 2

    .line 529
    invoke-super {p0, p1}, Lo/Aj;->e(Lo/Bi;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadCompleted received for offlinePlayableViewData playableId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartDownloadController"

    .line 530
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 536
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/of;->c(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 6

    .line 641
    monitor-enter p0

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lo/of;->c()Z

    move-result v0

    const-string v1, "SmartDownloadController"

    const-string v2, "setSmartDownloadsSettingsEnabled oldValue=%b newValue=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 646
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 647
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 643
    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eq v0, p1, :cond_0

    .line 651
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart_downloads_preference"

    .line 650
    invoke-static {v0, v1, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 659
    invoke-direct {p0}, Lo/of;->m()V

    .line 660
    iget-object p1, p0, Lo/of;->k:Lo/nS;

    move-object v0, p0

    check-cast v0, Lo/nV;

    invoke-interface {p1, v0}, Lo/nS;->e(Lo/nV;)V

    goto :goto_0

    .line 662
    :cond_1
    invoke-direct {p0}, Lo/of;->l()V

    .line 663
    iget-object p1, p0, Lo/of;->k:Lo/nS;

    move-object v0, p0

    check-cast v0, Lo/nV;

    invoke-interface {p1, v0}, Lo/nS;->d(Lo/nV;)V

    .line 664
    iget-object p1, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {p1}, Lo/BG;->a()V

    .line 665
    iget-object p1, p0, Lo/of;->k:Lo/nS;

    invoke-interface {p1}, Lo/nS;->o()V

    .line 667
    :goto_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()V
    .locals 2

    .line 551
    iget-object v0, p0, Lo/of;->b:Landroid/os/Handler;

    new-instance v1, Lo/of$Activity;

    invoke-direct {v1, p0}, Lo/of$Activity;-><init>(Lo/of;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/of;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lo/of$Dialog;

    invoke-direct {v0, p0}, Lo/of$Dialog;-><init>(Lo/of;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 9

    .line 261
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lo/ph;->d(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    invoke-virtual {v0}, Lo/BG;->c()Lio/reactivex/Flowable;

    move-result-object v0

    .line 266
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 267
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 268
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v3

    const-string v0, "smartDownloadRepo.getAll\u2026\n                .take(1)"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$startSmartDownloadIfConnectivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$startSmartDownloadIfConnectivity$1;-><init>(Lo/of;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Flowable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0}, Lo/of;->k()V

    :goto_0
    return-void
.end method

.method public final i()Lo/nS;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/of;->k:Lo/nS;

    return-object v0
.end method

.method public final j()Lo/BG;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/of;->a:Lo/BG;

    return-object v0
.end method

.method public final n()Lo/Sc;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/of;->l:Lo/Sc;

    return-object v0
.end method

.method public onNetflixStartJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 692
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SmartDownloadController"

    const-string v4, "onNetflixStartJob jobId=%s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez p1, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    sget-object v1, Lo/od;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 696
    :cond_1
    iget-object p1, p0, Lo/of;->c:Lo/aeq;

    invoke-virtual {p1}, Lo/aeq;->c()Z

    move-result p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 697
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "onNetflixStartJob tooFast=%b"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_2

    return-void

    .line 701
    :cond_2
    iget-object p1, p0, Lo/of;->b:Landroid/os/Handler;

    iget-object v0, p0, Lo/of;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 702
    iget-object p1, p0, Lo/of;->b:Landroid/os/Handler;

    iget-object v0, p0, Lo/of;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    invoke-virtual {p0}, Lo/of;->h()V

    :goto_0
    return-void
.end method

.method public onNetflixStopJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 2

    const-string v0, "jobId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 709
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SmartDownloadController"

    const-string v1, "onNetflixStopJob jobId=%s"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
