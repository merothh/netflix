.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;
.super Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;,
        Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
        "Lo/QF;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$StateListAnimator;

.field public static final MERCH_BOXART_COUNT:I = 0x3


# instance fields
.field private final allEpisodesList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allProfilesButtonAdded:Z

.field private final clickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Qs;",
            "Lo/Qu$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final destroyObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedForYouHeaderAdded:Z

.field private final downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

.field private final episodeClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final episodeLongClickListener:Lo/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Stream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private excludeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field private includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field private final infoClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Qp;",
            "Lo/Qh$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private lastProfileId:Ljava/lang/String;

.field private final listener:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;

.field private optInBoxArtList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optInSetUpListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Sp;",
            "Lo/Sr$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final screenLauncher:Lo/Rr$Activity;

.field private final toggleShowAllEpisodesListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final useOldDesign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Lo/RP;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Lo/RP;",
            "Z",
            "Lo/Rr$Activity;",
            "Lo/Rq;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProfile"

    move-object v1, p2

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileProvider"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {v9, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {v12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object v8, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v9, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->screenLauncher:Lo/Rr$Activity;

    iput-object v11, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->listener:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;

    iput-object v12, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->destroyObservable:Lio/reactivex/Observable;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allEpisodesList:Ljava/util/HashSet;

    .line 63
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->d()Z

    move-result v0

    iput-boolean v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->useOldDesign:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    check-cast v0, Lo/LongStream;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->episodeClickListener:Lo/LongStream;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;

    invoke-direct {v0, p0, v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    check-cast v0, Lo/Stream;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->episodeLongClickListener:Lo/Stream;

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$TaskDescription;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    check-cast v0, Lo/LongStream;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->clickListener:Lo/LongStream;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$PendingIntent;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    check-cast v0, Lo/LongStream;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->infoClickListener:Lo/LongStream;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    check-cast v0, Lo/LongStream;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->toggleShowAllEpisodesListener:Lo/LongStream;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Fragment;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    check-cast v0, Lo/LongStream;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInSetUpListener:Lo/LongStream;

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$ActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    iput-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1, v0}, Lo/fo$ActionBar;->a(Lo/nS;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->requestMerchBoxarts()V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;ILo/amc;)V
    .locals 11

    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lo/RP$StateListAnimator;

    invoke-direct {v0}, Lo/RP$StateListAnimator;-><init>()V

    check-cast v0, Lo/RP;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const-string v1, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x24

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;ILo/amc;)V

    return-void
.end method

.method public static final synthetic access$getAllEpisodesList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)Ljava/util/HashSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allEpisodesList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$getOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$play(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->play(Lo/Tf;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method

.method public static final synthetic access$setOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Ljava/util/List;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    return-void
.end method

.method private final addContentModel(Lo/Tf;JLjava/util/List;)Lo/Qu;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Tf;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/Qu;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 322
    :goto_0
    sget-object v1, Lo/Qu;->b:Lo/Qu$Activity;

    .line 324
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->clickListener:Lo/LongStream;

    move-object v2, p1

    move-wide v4, p2

    move-object v7, p4

    .line 322
    invoke-virtual/range {v1 .. v7}, Lo/Qu$Activity;->b(Lo/Tf;Lo/LongStream;JZLjava/util/List;)Lo/Qu;

    move-result-object p1

    .line 329
    move-object p2, p1

    check-cast p2, Lo/BiConsumer;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->add(Lo/BiConsumer;)V

    return-object p1
.end method

.method static synthetic addContentModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;JLjava/util/List;ILjava/lang/Object;)Lo/Qu;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 319
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p4

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addContentModel(Lo/Tf;JLjava/util/List;)Lo/Qu;

    move-result-object p0

    return-object p0
.end method

.method private final addDownloadedForYouHeaderIfNeeded()V
    .locals 3

    .line 350
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouHeaderAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouHeaderAdded:Z

    .line 493
    new-instance v0, Lo/Si;

    invoke-direct {v0}, Lo/Si;-><init>()V

    .line 497
    move-object v1, v0

    check-cast v1, Lo/Sj;

    const-string v2, "downloaded_for_you_header"

    .line 353
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Sj;->a(Ljava/lang/CharSequence;)Lo/Sj;

    .line 354
    sget-object v2, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v2}, Lo/aeN;->d()I

    move-result v2

    invoke-interface {v1, v2}, Lo/Sj;->c(I)Lo/Sj;

    const/4 v2, 0x0

    .line 355
    invoke-interface {v1, v2}, Lo/Sj;->c(Z)Lo/Sj;

    .line 496
    invoke-virtual {v0, p0}, Lo/Si;->a(Lo/OfPrimitive;)V

    :cond_0
    return-void
.end method

.method private final addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V
    .locals 9

    .line 304
    sget-object v0, Lo/Qt;->f:Lo/Qt$TaskDescription;

    .line 307
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getCurrentProfile()Lo/BC;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->episodeClickListener:Lo/LongStream;

    .line 309
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->episodeLongClickListener:Lo/Stream;

    .line 310
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->toggleShowAllEpisodesListener:Lo/LongStream;

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    .line 304
    invoke-virtual/range {v0 .. v8}, Lo/Qt$TaskDescription;->d(Lo/Tf;Lo/Tf;Lo/BC;Lo/LongStream;Lo/Stream;Lo/LongStream;IZ)Lo/Qt;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->add(Lo/BiConsumer;)V

    return-void
.end method

.method static synthetic addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 302
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V

    return-void
.end method

.method private final addOldDesignShowModel(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Ljava/util/List;Lo/Tf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;",
            "Ljava/util/List<",
            "+",
            "Lo/Tf;",
            ">;",
            "Lo/Tf;",
            ")V"
        }
    .end annotation

    .line 268
    new-instance v0, Lo/Qx;

    invoke-direct {v0}, Lo/Qx;-><init>()V

    .line 269
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Qx;->b(Ljava/lang/CharSequence;)Lo/Qx;

    .line 270
    invoke-virtual {p4}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Qx;->e(Ljava/lang/String;)Lo/Qx;

    .line 271
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object p1

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/Qx;->a(Ljava/lang/String;)Lo/Qx;

    .line 272
    invoke-virtual {p4}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/Qx;->d(Ljava/lang/CharSequence;)Lo/Qx;

    .line 273
    invoke-virtual {p4}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 274
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "realmHorzDispUrl for show is null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-virtual {p4}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Qx;->b(Ljava/lang/String;)Lo/Qx;

    const-wide/16 p1, 0x0

    .line 280
    check-cast p3, Ljava/lang/Iterable;

    .line 482
    new-instance p4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p4, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 483
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 484
    check-cast v2, Lo/Tf;

    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getUiList()Lo/Rq;

    move-result-object v3

    invoke-virtual {v2}, Lo/Tf;->bb()Lo/AK;

    move-result-object v2

    const-string v4, "it.playable"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_1
    check-cast p4, Ljava/util/List;

    check-cast p4, Ljava/lang/Iterable;

    .line 486
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 487
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/Bi;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    .line 283
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    :cond_4
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 489
    new-instance p4, Ljava/util/ArrayList;

    invoke-static {p3, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 490
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 491
    check-cast v1, Lo/Bi;

    if-eqz v1, :cond_5

    .line 286
    invoke-interface {v1}, Lo/Bi;->w()J

    move-result-wide v2

    add-long/2addr p1, v2

    .line 287
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getEpisodeInfo(Lo/Bi;)Lo/Qy$ActionBar;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 288
    :goto_4
    invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 492
    :cond_6
    check-cast p4, Ljava/util/List;

    .line 279
    invoke-virtual {v0, p4}, Lo/Qx;->c(Ljava/util/List;)Lo/Qx;

    .line 291
    invoke-virtual {v0, p1, p2}, Lo/Qx;->c(J)Lo/Qx;

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getShowClickListener()Lo/LongStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Qx;->c(Lo/LongStream;)Lo/Qx;

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getShowLongClickListener()Lo/Stream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Qx;->b(Lo/Stream;)Lo/Qx;

    .line 295
    check-cast v0, Lo/BiConsumer;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->add(Lo/BiConsumer;)V

    return-void
.end method

.method private final addProfileViewIfNeeded(Ljava/lang/String;)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v0, v1, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->lastProfileId:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 421
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->lastProfileId:Ljava/lang/String;

    .line 422
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getProfileProvider()Lo/RP;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/RP;->c(Ljava/lang/String;)Lo/Td;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 423
    new-instance v0, Lo/RT;

    invoke-direct {v0}, Lo/RT;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/RT;->d(Ljava/lang/CharSequence;)Lo/RT;

    move-result-object v0

    invoke-interface {p1}, Lo/Td;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/RT;->a(Ljava/lang/CharSequence;)Lo/RT;

    move-result-object v0

    .line 424
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 509
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 424
    invoke-interface {p1, v1}, Lo/Td;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/RT;->a(Ljava/lang/String;)Lo/RT;

    move-result-object p1

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p1, v0}, Lo/RT;->b(I)Lo/RT;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 423
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->add(Lo/BiConsumer;)V

    :cond_1
    return-void
.end method

.method private final buildModelsByRequestType(Lo/QF;ZLjava/util/Map;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/QF;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;",
            "Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 367
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->lastProfileId:Ljava/lang/String;

    .line 368
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->excludeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 369
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->buildModels(Lo/QF;ZLjava/util/Map;)V

    return-void
.end method

.method static synthetic buildModelsByRequestType$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/QF;ZLjava/util/Map;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 364
    move-object p4, v0

    check-cast p4, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 365
    move-object p5, v0

    check-cast p5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->buildModelsByRequestType(Lo/QF;ZLjava/util/Map;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    return-void
.end method

.method private final filterEpisodesForType(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;",
            ")",
            "Ljava/util/List<",
            "Lo/Tf;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object p1

    const-string v0, "adapterData.episodes"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 456
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "it"

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, p1, v3

    .line 162
    invoke-static {v6, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 163
    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    .line 458
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 459
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 460
    move-object v6, v3

    check-cast v6, Lo/Tf;

    .line 163
    invoke-static {v6, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lo/Tf;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 462
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    .line 461
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 469
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    sget-object v3, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne p1, v3, :cond_8

    if-lez v2, :cond_7

    .line 167
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_4
    return-object p1

    :cond_8
    if-lez v2, :cond_9

    goto :goto_5

    .line 169
    :cond_9
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method private final play(Lo/Tf;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->screenLauncher:Lo/Rr$Activity;

    invoke-virtual {p1}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.playableId"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    const-string v2, "it.type"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1, p2}, Lo/Rr$Activity;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_0
    return-void
.end method

.method private final requestMerchBoxarts()V
    .locals 8

    .line 147
    new-instance v0, Lo/Sm;

    invoke-direct {v0}, Lo/Sm;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getCurrentProfile()Lo/BC;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lo/Sm;->a(Lo/BC;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->destroyObservable:Lio/reactivex/Observable;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "DownloadedForYouReposito\u2026eUntil(destroyObservable)"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 154
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$2;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$2;

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 149
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final satisfiesDownloadTypeReq(Lo/Tf;)Z
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/Tf;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-eq v0, v2, :cond_0

    return v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->excludeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/Tf;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->excludeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected addAllProfilesButton()V
    .locals 1

    .line 431
    sget-object v0, Lo/ge;->e:Lo/ge$TaskDescription;

    invoke-virtual {v0}, Lo/ge$TaskDescription;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allProfilesButtonAdded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allProfilesButtonAdded:Z

    .line 433
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addAllProfilesButton()V

    :cond_0
    return-void
.end method

.method protected addBottomModels(Lo/QF;ZZ)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->includeType:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-eq v0, v1, :cond_0

    return-void

    .line 388
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouHeaderAdded:Z

    if-nez v0, :cond_2

    .line 389
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->e()Z

    move-result v0

    const-string v1, "StringUtils.getLocalized\u2026on_something_to_download)"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    .line 390
    new-instance p1, Lo/Sp;

    invoke-direct {p1}, Lo/Sp;-><init>()V

    const-string p3, "downloaded_for_you_merch"

    .line 391
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lo/Sp;->a(Ljava/lang/CharSequence;)Lo/Sp;

    xor-int/2addr p2, v2

    .line 392
    invoke-virtual {p1, p2}, Lo/Sp;->a(Z)Lo/Sp;

    .line 393
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/Sp;->e(Ljava/lang/String;)Lo/Sp;

    .line 394
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/Sp;->c(Ljava/lang/String;)Lo/Sp;

    .line 395
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInBoxArtList:Ljava/util/List;

    const/4 p3, 0x2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/Sp;->f(Ljava/lang/String;)Lo/Sp;

    .line 396
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->optInSetUpListener:Lo/LongStream;

    invoke-virtual {p1, p2}, Lo/Sp;->d(Lo/LongStream;)Lo/Sp;

    .line 390
    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->add(Lo/BiConsumer;)V

    .line 398
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mm:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addFindMoreButtonModel(Ljava/lang/CharSequence;)V

    return-void

    .line 402
    :cond_1
    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v0}, Lo/aeN;->a()F

    move-result v0

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->getFooterItemDecorator()Lo/PowerManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/PowerManager;->a(Z)V

    .line 501
    new-instance p1, Lo/Si;

    invoke-direct {p1}, Lo/Si;-><init>()V

    .line 505
    move-object p2, p1

    check-cast p2, Lo/Sj;

    const-string p3, "downloaded_for_you_header"

    .line 405
    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Lo/Sj;->a(Ljava/lang/CharSequence;)Lo/Sj;

    .line 406
    sget-object p3, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p3}, Lo/aeN;->d()I

    move-result p3

    invoke-interface {p2, p3}, Lo/Sj;->c(I)Lo/Sj;

    .line 407
    invoke-interface {p2, v2}, Lo/Sj;->c(Z)Lo/Sj;

    .line 504
    invoke-virtual {p1, p0}, Lo/Si;->a(Lo/OfPrimitive;)V

    .line 409
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mm:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addFindMoreButtonModel(Ljava/lang/CharSequence;)V

    return-void

    .line 413
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addBottomModels(Lo/QF;ZZ)V

    return-void
.end method

.method protected addProfileViewModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected addShowModel(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Lo/Tf;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    const-string v2, "id"

    invoke-static {v0, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adapterData"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "video"

    invoke-static {v8, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {v7, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->filterEpisodesForType(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 207
    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 211
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addDownloadedForYouHeaderIfNeeded()V

    const/4 v2, 0x0

    .line 212
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Tf;

    invoke-virtual {v3}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v3

    const-string v4, "episodes[0].profileId"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addProfileViewIfNeeded(Ljava/lang/String;)V

    .line 214
    iget-boolean v3, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->useOldDesign:Z

    if-eqz v3, :cond_1

    .line 215
    invoke-direct {v7, v0, v1, v9, v8}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addOldDesignShowModel(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Ljava/util/List;Lo/Tf;)V

    return-void

    .line 220
    :cond_1
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allEpisodesList:Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 221
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 473
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 474
    check-cast v5, Lo/Tf;

    .line 221
    invoke-virtual {v5}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 476
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 477
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 478
    check-cast v5, Lo/Tf;

    .line 222
    invoke-virtual {v5}, Lo/Tf;->x()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    :cond_3
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 222
    invoke-static {v4}, Lo/akz;->l(Ljava/lang/Iterable;)J

    move-result-wide v3

    .line 224
    invoke-direct {v7, v8, v3, v4, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addContentModel(Lo/Tf;JLjava/util/List;)Lo/Qu;

    move-result-object v1

    .line 225
    check-cast v1, Lo/RZ;

    invoke-virtual {v7, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->isItemSelected(Lo/RZ;)Z

    move-result v12

    .line 226
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v13, v1

    check-cast v13, Ljava/util/Set;

    .line 480
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/Tf;

    .line 228
    invoke-virtual {v2}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offlineViewData.profileId"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v4, v12

    move-object/from16 p1, v14

    const/4 v14, 0x1

    move-object v6, v15

    .line 232
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 p1, v14

    if-eqz v11, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v4, v12

    .line 234
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V

    :cond_5
    :goto_3
    move-object/from16 v14, p1

    goto :goto_2

    :cond_6
    const/4 v14, 0x1

    .line 239
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v14, :cond_7

    if-nez v11, :cond_7

    .line 242
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Tf;

    .line 243
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    .line 240
    invoke-direct {v7, v8, v0, v1, v12}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V

    goto :goto_5

    .line 248
    :cond_7
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 249
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 250
    move-object v1, v13

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v14

    if-eqz v1, :cond_a

    check-cast v13, Ljava/lang/Iterable;

    invoke-static {v13}, Lo/akz;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->d(Ljava/lang/String;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lo/BC;->getProfileLockPin()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 252
    :cond_9
    new-instance v0, Lo/Qp;

    invoke-direct {v0}, Lo/Qp;-><init>()V

    const-string v1, "downloadMoreEpisodes"

    .line 253
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Qp;->d(Ljava/lang/CharSequence;)Lo/Qp;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v8}, Lo/Qp;->c(Lo/Tf;)Lo/Qp;

    move-result-object v0

    .line 255
    new-instance v1, Lo/ExemptionMechanismException;

    iget-object v2, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->infoClickListener:Lo/LongStream;

    invoke-direct {v1, v2}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/Qp;->c(Landroid/view/View$OnClickListener;)Lo/Qp;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 251
    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->add(Lo/BiConsumer;)V

    :cond_a
    :goto_5
    return-void
.end method

.method protected addVideoModel(Ljava/lang/String;Lo/Tf;Lo/AK;Lo/Bi;)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineViewData"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->satisfiesDownloadTypeReq(Lo/Tf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addDownloadedForYouHeaderIfNeeded()V

    .line 191
    invoke-virtual {p2}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v0

    const-string v4, "video.profileId"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addProfileViewIfNeeded(Ljava/lang/String;)V

    .line 192
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->useOldDesign:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addVideoModel(Ljava/lang/String;Lo/Tf;Lo/AK;Lo/Bi;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p2}, Lo/Tf;->x()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addContentModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;JLjava/util/List;ILjava/lang/Object;)Lo/Qu;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v2, p2

    .line 196
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 0

    .line 39
    check-cast p1, Lo/QF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->buildModels(Lo/QF;ZLjava/util/Map;)V

    return-void
.end method

.method public buildModels(Lo/QF;ZLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/QF;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 338
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouHeaderAdded:Z

    .line 340
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allProfilesButtonAdded:Z

    .line 341
    sget-object v4, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->buildModelsByRequestType$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/QF;ZLjava/util/Map;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;ILjava/lang/Object;)V

    const/4 v4, 0x0

    .line 342
    sget-object v5, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    const/16 v6, 0x8

    invoke-static/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->buildModelsByRequestType$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lo/QF;ZLjava/util/Map;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;ILjava/lang/Object;)V

    return-void
.end method

.method public final clearAllDropdowns()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->allEpisodesList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public final getDestroyObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->destroyObservable:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final getDownloadedForYouOptInReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getListener()Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->listener:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;

    return-object v0
.end method

.method public final getScreenLauncher()Lo/Rr$Activity;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->screenLauncher:Lo/Rr$Activity;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 439
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lo/aeN;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 445
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    invoke-static {p1, v0}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method
