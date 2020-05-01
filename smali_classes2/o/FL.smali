.class public Lo/FL;
.super Lo/FI;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FL$StateListAnimator;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lo/FL$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/FL$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FL$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/FL;->c:Lo/FL$StateListAnimator;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lo/FL;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lo/FI;-><init>(Lio/reactivex/Observable;)V

    return-void
.end method

.method private final a(Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Am;",
            "Lo/Bc;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lo/hW;",
            ")V"
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/FL;->c(Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;)V

    .line 315
    new-instance p1, Lo/AutofillService;

    invoke-direct {p1, p5, p4}, Lo/AutofillService;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    check-cast p1, Lo/SettingsValidators;

    .line 316
    new-instance p2, Lo/FL$TaskDescription;

    invoke-direct {p2}, Lo/FL$TaskDescription;-><init>()V

    check-cast p2, Lo/ci;

    .line 314
    invoke-interface {p6, p1, p2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    .line 319
    sget-object p1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {p1}, Lo/eG$Application;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    sget-object p1, Lo/FL;->c:Lo/FL$StateListAnimator;

    invoke-virtual {p1, p4}, Lo/FL$StateListAnimator;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic e()Ljava/util/HashSet;
    .locals 1

    .line 35
    sget-object v0, Lo/FL;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic e(Lo/FL;Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p6}, Lo/FL;->a(Lio/reactivex/ObservableEmitter;Lo/Am;Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lo/hW;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    new-instance v0, Lo/FL$FragmentManager;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lo/FL$FragmentManager;-><init>(Lo/FL;Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Am;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { emit\u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Lo/hW;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    new-instance v0, Lo/FL$LoaderManager;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lo/FL$LoaderManager;-><init>(Lo/FL;Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/Am;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { emit\u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Lio/reactivex/ObservableEmitter;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Bc;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDetails"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Lcom/netflix/model/leafs/DefaultSummary_ab18255;

    invoke-interface {p2}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/DefaultSummary_ab18255;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-interface {p2}, Lo/Bc;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/model/leafs/DefaultSummary_ab18255;->boxartUrl:Ljava/lang/String;

    .line 555
    invoke-interface {p2}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/model/leafs/DefaultSummary_ab18255;->title:Ljava/lang/String;

    .line 556
    invoke-interface {p2}, Lo/Bc;->isPreRelease()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netflix/model/leafs/DefaultSummary_ab18255;->isPreRelease:Z

    .line 557
    invoke-interface {p2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 558
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-19129: sendDetailsDataEvent: videoDetails.type is null"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 560
    :cond_0
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/netflix/model/leafs/DefaultSummary_ab18255;->type:Ljava/lang/String;

    .line 561
    invoke-interface {p2}, Lo/Bc;->bb()Lo/AK;

    move-result-object p3

    const-string v1, "videoDetails.playable"

    invoke-static {p3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lo/AK;->e()Z

    move-result p3

    iput-boolean p3, v0, Lcom/netflix/model/leafs/DefaultSummary_ab18255;->availableForDownload:Z

    .line 564
    new-instance p3, Lo/FC$ActionBar;

    check-cast v0, Lo/Ay;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lo/FC$ActionBar;-><init>(Lo/Ay;Lo/Bd;)V

    invoke-interface {p1, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 565
    new-instance p3, Lo/FC$StateListAnimator;

    invoke-direct {p3, p2}, Lo/FC$StateListAnimator;-><init>(Lo/Bc;)V

    invoke-interface {p1, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 566
    new-instance p3, Lo/FC$Activity;

    invoke-direct {p3, p2}, Lo/FC$Activity;-><init>(Lo/Bc;)V

    invoke-interface {p1, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hW;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Z",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/alA<",
            "-",
            "Lo/Bc;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "browseAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeOnComplete"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lo/NetworkSecurityPolicy;

    invoke-direct {v0, p2, p3, p4}, Lo/NetworkSecurityPolicy;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    check-cast v0, Lo/SettingsValidators;

    .line 418
    new-instance p2, Lo/FL$Application;

    invoke-direct {p2, p5, p6}, Lo/FL$Application;-><init>(Lio/reactivex/ObservableEmitter;Lo/alA;)V

    check-cast p2, Lo/ci;

    .line 412
    invoke-interface {p1, v0, p2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method

.method public a(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;Lo/Am;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hW;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Z",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Lo/Am;",
            ")V"
        }
    .end annotation

    const-string v0, "browseAgent"

    move-object v10, p1

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceManager"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x0

    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 253
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 256
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDetailsPageMetaData$notifyDPDataFetchCompleted$1;-><init>(Lo/FL;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lio/reactivex/ObservableEmitter;Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)V

    move-object v8, v0

    check-cast v8, Lo/alA;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v7, v8

    .line 281
    invoke-virtual/range {v1 .. v7}, Lo/FL;->a(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Lo/alA;)V

    move-object/from16 v7, p5

    .line 291
    invoke-virtual/range {v1 .. v8}, Lo/FL;->d(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Ljava/lang/String;Lo/alA;)V

    return-void
.end method

.method public final b(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLo/hW;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Am;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Z",
            "Lo/hW;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/FC;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lo/FL$Activity;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p6

    move-object v4, p2

    move v5, p5

    move-object v6, p3

    move-object v7, p4

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lo/FL$Activity;-><init>(Lo/FL;Lo/hW;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/Am;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { emit\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Ljava/lang/String;Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hW;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Z",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;",
            "Ljava/lang/String;",
            "Lo/alA<",
            "-",
            "Lo/Bc;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "browseAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executeOnComplete"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    new-instance v0, Lo/Scrypt;

    invoke-direct {v0, p2, p3, p4, p6}, Lo/Scrypt;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;)V

    check-cast v0, Lo/SettingsValidators;

    new-instance p3, Lo/FL$ActionBar;

    invoke-direct {p3, p5, p7, p1, p2}, Lo/FL$ActionBar;-><init>(Lio/reactivex/ObservableEmitter;Lo/alA;Lo/hW;Ljava/lang/String;)V

    check-cast p3, Lo/ci;

    invoke-interface {p1, v0, p3}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method
