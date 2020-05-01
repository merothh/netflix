.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;
.super Lcom/netflix/mediaclient/ui/offline/DownloadsListController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/offline/DownloadsListController<",
        "Lo/QH;",
        ">;"
    }
.end annotation


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

.field private buildingDownloadedForYouModels:Z

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

.field private final downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

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

.field private final listener:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;

.field private optInBoxArtList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final screenLauncher:Lo/Rr$Activity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;Lio/reactivex/Observable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Z",
            "Lo/Rr$Activity;",
            "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;",
            "Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProfile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lo/RP$StateListAnimator;

    invoke-direct {v0}, Lo/RP$StateListAnimator;-><init>()V

    move-object v3, v0

    check-cast v3, Lo/RP;

    .line 47
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v6

    const-string v0, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {v6, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->screenLauncher:Lo/Rr$Activity;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->listener:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->destroyObservable:Lio/reactivex/Observable;

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->allEpisodesList:Ljava/util/HashSet;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    .line 55
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;

    invoke-direct {p1, p0, p5}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    check-cast p1, Lo/Stream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->episodeLongClickListener:Lo/Stream;

    .line 64
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$PendingIntent;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    check-cast p1, Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    sget-object p2, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {p2, p1}, Lo/fo$ActionBar;->a(Lo/nS;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    sget-object p1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {p1}, Lo/fo$ActionBar;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->requestMerchBoxarts()V

    :cond_1
    return-void
.end method

.method public static final synthetic access$getAllEpisodesList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)Ljava/util/HashSet;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->allEpisodesList:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$getOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Ljava/util/List;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    return-void
.end method

.method private final addContentModel(Lo/Tf;JLjava/util/List;)Lo/Qu;
    .locals 7
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

    .line 247
    sget-object v0, Lo/Qu;->b:Lo/Qu$Activity;

    .line 249
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    move-object v2, v1

    check-cast v2, Lo/LongStream;

    .line 255
    iget-boolean v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildingDownloadedForYouModels:Z

    move-object v1, p1

    move-wide v3, p2

    move-object v6, p4

    .line 247
    invoke-virtual/range {v0 .. v6}, Lo/Qu$Activity;->b(Lo/Tf;Lo/LongStream;JZLjava/util/List;)Lo/Qu;

    move-result-object p1

    .line 258
    move-object p2, p1

    check-cast p2, Lo/BiConsumer;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->add(Lo/BiConsumer;)V

    return-object p1
.end method

.method static synthetic addContentModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lo/Tf;JLjava/util/List;ILjava/lang/Object;)Lo/Qu;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 245
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p4

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addContentModel(Lo/Tf;JLjava/util/List;)Lo/Qu;

    move-result-object p0

    return-object p0
.end method

.method private final addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V
    .locals 9

    .line 269
    sget-object v0, Lo/Qt;->f:Lo/Qt$TaskDescription;

    .line 272
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getCurrentProfile()Lo/BC;

    move-result-object v3

    .line 273
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    move-object v4, v1

    check-cast v4, Lo/LongStream;

    .line 286
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->episodeLongClickListener:Lo/Stream;

    .line 287
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    move-object v6, v1

    check-cast v6, Lo/LongStream;

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    .line 269
    invoke-virtual/range {v0 .. v8}, Lo/Qt$TaskDescription;->d(Lo/Tf;Lo/Tf;Lo/BC;Lo/LongStream;Lo/Stream;Lo/LongStream;IZ)Lo/Qt;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 268
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->add(Lo/BiConsumer;)V

    return-void
.end method

.method static synthetic addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 266
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V

    return-void
.end method

.method private final addMerchModel(Lo/QH;)V
    .locals 4

    .line 300
    invoke-virtual {p1}, Lo/QH;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->e()Z

    move-result p1

    const-string v0, "StringUtils.getLocalized\u2026on_something_to_download)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v3, 0x3

    if-lt p1, v3, :cond_0

    .line 304
    new-instance p1, Lo/Sp;

    invoke-direct {p1}, Lo/Sp;-><init>()V

    const-string v3, "downloaded_for_you_merch"

    .line 305
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lo/Sp;->a(Ljava/lang/CharSequence;)Lo/Sp;

    .line 306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getHasVideos()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lo/Sp;->a(Z)Lo/Sp;

    .line 307
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lo/Sp;->e(Ljava/lang/String;)Lo/Sp;

    .line 308
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/Sp;->c(Ljava/lang/String;)Lo/Sp;

    .line 309
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->optInBoxArtList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/Sp;->f(Ljava/lang/String;)Lo/Sp;

    .line 310
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    check-cast v1, Lo/LongStream;

    invoke-virtual {p1, v1}, Lo/Sp;->d(Lo/LongStream;)Lo/Sp;

    .line 304
    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->add(Lo/BiConsumer;)V

    .line 312
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mm:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addFindMoreButtonModel(Ljava/lang/CharSequence;)V

    return-void

    .line 316
    :cond_0
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {p1}, Lo/aeN;->a()F

    move-result p1

    int-to-float v3, v2

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getFooterItemDecorator()Lo/PowerManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/PowerManager;->a(Z)V

    .line 346
    new-instance p1, Lo/Si;

    invoke-direct {p1}, Lo/Si;-><init>()V

    .line 350
    move-object v2, p1

    check-cast v2, Lo/Sj;

    const-string v3, "downloaded_for_you_header"

    .line 319
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/Sj;->a(Ljava/lang/CharSequence;)Lo/Sj;

    .line 320
    sget-object v3, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v3}, Lo/aeN;->d()I

    move-result v3

    invoke-interface {v2, v3}, Lo/Sj;->c(I)Lo/Sj;

    .line 321
    invoke-interface {v2, v1}, Lo/Sj;->c(Z)Lo/Sj;

    .line 349
    invoke-virtual {p1, p0}, Lo/Si;->a(Lo/OfPrimitive;)V

    .line 323
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->mm:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addFindMoreButtonModel(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final addMoreEpisodesCTAModel(Lo/Tf;)V
    .locals 2

    .line 154
    new-instance v0, Lo/Qp;

    invoke-direct {v0}, Lo/Qp;-><init>()V

    const-string v1, "downloadMoreEpisodes"

    .line 155
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Qp;->d(Ljava/lang/CharSequence;)Lo/Qp;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p1}, Lo/Qp;->c(Lo/Tf;)Lo/Qp;

    move-result-object p1

    .line 158
    new-instance v0, Lo/ExemptionMechanismException;

    .line 159
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Fragment;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Fragment;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    check-cast v1, Lo/LongStream;

    .line 158
    invoke-direct {v0, v1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 157
    invoke-virtual {p1, v0}, Lo/Qp;->c(Landroid/view/View$OnClickListener;)Lo/Qp;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 153
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->add(Lo/BiConsumer;)V

    return-void
.end method

.method private final buildNewDesignModels(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 104
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 334
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 105
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v1

    iget-object v10, v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v10, :cond_0

    const/4 v11, 0x1

    .line 106
    invoke-virtual {v7, v11}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->setHasVideos(Z)V

    .line 108
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    const-string v1, "data.videoAndProfileData.profileId"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->createProfileView(Ljava/lang/String;)Lo/BiConsumer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->add(Lo/BiConsumer;)V

    :cond_1
    move-object v12, v0

    .line 113
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    sget-object v1, Lo/QM;->d:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v11, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto/16 :goto_7

    .line 121
    :cond_3
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v0

    const-string v13, "data.episodes"

    invoke-static {v0, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 336
    array-length v2, v0

    const/4 v14, 0x0

    const/4 v3, 0x0

    :goto_1
    const-string v15, "it"

    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 121
    invoke-static {v4, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/Tf;->x()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 121
    invoke-static {v1}, Lo/akz;->l(Ljava/lang/Iterable;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    .line 120
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addContentModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lo/Tf;JLjava/util/List;ILjava/lang/Object;)Lo/Qu;

    move-result-object v16

    .line 123
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v0

    invoke-static {v0, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 340
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 123
    invoke-static {v4, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 341
    :cond_7
    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 124
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->allEpisodesList:Ljava/util/HashSet;

    invoke-virtual {v10}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 125
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 126
    :goto_4
    move-object v1, v9

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lo/akz;->e(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 342
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/Tf;

    .line 127
    invoke-static {v2, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    check-cast v0, Lo/RZ;

    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->isItemSelected(Lo/RZ;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V

    goto :goto_5

    .line 130
    :cond_9
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v11, :cond_a

    if-nez v13, :cond_a

    .line 131
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "episodes[1]"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/Tf;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move-object/from16 v2, v16

    check-cast v2, Lo/RZ;

    invoke-virtual {v7, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->isItemSelected(Lo/RZ;)Z

    move-result v2

    invoke-direct {v7, v10, v1, v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V

    goto :goto_7

    .line 135
    :cond_a
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getCurrentProfile()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 137
    move-object v1, v12

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v14, 0x1

    :cond_b
    if-eqz v14, :cond_f

    .line 138
    invoke-interface {v0, v12}, Lcom/netflix/mediaclient/service/user/UserAgent;->d(Ljava/lang/String;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lo/BC;->getProfileLockPin()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    .line 137
    :goto_6
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    :cond_d
    invoke-direct {v7, v10}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addMoreEpisodesCTAModel(Lo/Tf;)V

    goto :goto_7

    .line 115
    :cond_e
    invoke-virtual {v10}, Lo/Tf;->x()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addContentModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lo/Tf;JLjava/util/List;ILjava/lang/Object;)Lo/Qu;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v2, v10

    .line 116
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addEpisodeModel$default(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lo/Tf;Lo/Tf;IZILjava/lang/Object;)V

    :cond_f
    :goto_7
    move-object v0, v12

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private final requestMerchBoxarts()V
    .locals 8

    .line 85
    new-instance v0, Lo/Sm;

    invoke-direct {v0}, Lo/Sm;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getCurrentProfile()Lo/BC;

    move-result-object v1

    const/4 v2, 0x3

    .line 85
    invoke-virtual {v0, v1, v2}, Lo/Sm;->a(Lo/BC;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->destroyObservable:Lio/reactivex/Observable;

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "DownloadedForYouReposito\u2026eUntil(destroyObservable)"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$requestMerchBoxarts$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$requestMerchBoxarts$1;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 95
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$requestMerchBoxarts$2;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$requestMerchBoxarts$2;

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 90
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public bridge synthetic addBottomModels(Lo/QF;ZZ)V
    .locals 0

    .line 34
    check-cast p1, Lo/QH;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addBottomModels(Lo/QH;ZZ)V

    return-void
.end method

.method protected addBottomModels(Lo/QH;ZZ)V
    .locals 0

    const-string p2, "data"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 0

    .line 34
    check-cast p1, Lo/QH;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildModels(Lo/QH;ZLjava/util/Map;)V

    return-void
.end method

.method public bridge synthetic buildModels(Lo/QF;ZLjava/util/Map;)V
    .locals 0

    .line 34
    check-cast p1, Lo/QH;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildModels(Lo/QH;ZLjava/util/Map;)V

    return-void
.end method

.method public buildModels(Lo/QH;ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/QH;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0}, Lo/QH;->a(Z)V

    .line 182
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildingDownloadedForYouModels:Z

    .line 183
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lo/QH;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildNewDesignModels(Ljava/util/List;)V

    goto :goto_0

    .line 188
    :cond_0
    move-object v0, p1

    check-cast v0, Lo/QF;

    invoke-super {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->buildModels(Lo/QF;ZLjava/util/Map;)V

    :goto_0
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1, v0}, Lo/QH;->a(Z)V

    .line 193
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildingDownloadedForYouModels:Z

    .line 194
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    move-object v0, p1

    check-cast v0, Lo/QF;

    invoke-super {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->buildModels(Lo/QF;ZLjava/util/Map;)V

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {p1}, Lo/QH;->a()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildNewDesignModels(Ljava/util/List;)V

    .line 200
    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addMerchModel(Lo/QH;)V

    .line 201
    check-cast p1, Lo/QF;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getHasVideos()Z

    move-result p3

    invoke-super {p0, p1, p3, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->addBottomModels(Lo/QF;ZZ)V

    return-void
.end method

.method public final clearAllDropdowns()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->allEpisodesList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public createProfileView(Ljava/lang/String;)Lo/BiConsumer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->buildingDownloadedForYouModels:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lo/Si;

    invoke-direct {v0}, Lo/Si;-><init>()V

    const-string v3, "downloaded_for_you_header"

    .line 224
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lo/Si;->e(Ljava/lang/CharSequence;)Lo/Si;

    .line 225
    sget-object v3, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v3}, Lo/aeN;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lo/Si;->d(I)Lo/Si;

    .line 226
    invoke-virtual {v0, v1}, Lo/Si;->b(Z)Lo/Si;

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getCurrentProfile()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getProfileProvider()Lo/RP;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/RP;->c(Ljava/lang/String;)Lo/Td;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/Td;->a()Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lo/Si;->e(Ljava/lang/String;)Lo/Si;

    .line 223
    check-cast v0, Lo/BiConsumer;

    return-object v0

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getProfileProvider()Lo/RP;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/RP;->c(Ljava/lang/String;)Lo/Td;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 234
    new-instance v0, Lo/RT;

    invoke-direct {v0}, Lo/RT;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Td;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/RT;->d(Ljava/lang/CharSequence;)Lo/RT;

    move-result-object v0

    invoke-interface {p1}, Lo/Td;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/RT;->a(Ljava/lang/CharSequence;)Lo/RT;

    move-result-object v0

    .line 235
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 345
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 235
    invoke-interface {p1, v2}, Lo/Td;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/RT;->a(Ljava/lang/String;)Lo/RT;

    move-result-object p1

    .line 236
    invoke-virtual {p1, v1}, Lo/RT;->b(I)Lo/RT;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

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

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->destroyObservable:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final getListener()Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->listener:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;

    return-object v0
.end method

.method public final getScreenLauncher()Lo/Rr$Activity;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->screenLauncher:Lo/Rr$Activity;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 206
    sget-object p1, Lo/aeN;->e:Lo/aeN;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Lo/aeN;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 212
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->downloadedForYouOptInReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    invoke-static {p1, v0}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    return-void
.end method
