.class public Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;
.super Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/Qk;",
        ">",
        "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController<",
        "TT;",
        "Lo/QA<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final findMoreEpisodesClickListener:Landroid/view/View$OnClickListener;

.field private final footerItemDecorator:Lo/PowerManager;

.field private hasVideos:Z

.field private final idConverterModel:Lo/QD;

.field private final presentationTracking:Lo/Yf;

.field private final profileGuid:Ljava/lang/String;

.field private final screenLauncher:Lo/Rr$Activity;

.field private final selectionChangesListener:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

.field private final titleId:Ljava/lang/String;

.field private final uiList:Lo/Rq;

.field private final videoClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final videoLongClickListener:Lo/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Stream<",
            "Lo/QD;",
            "Lo/QB$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;)V
    .locals 2

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenLauncher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleId"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/OfPrimitive;->defaultModelBuildingHandler:Landroid/os/Handler;

    const-string v1, "defaultModelBuildingHandler"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-class v1, Lo/Cf;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cf;

    invoke-virtual {v1}, Lo/Cf;->b()Landroid/os/Handler;

    move-result-object v1

    .line 27
    invoke-direct {p0, v0, v1, p4}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->profileGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->screenLauncher:Lo/Rr$Activity;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->uiList:Lo/Rq;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->selectionChangesListener:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->titleId:Ljava/lang/String;

    .line 35
    new-instance p1, Lo/PowerManager;

    invoke-direct {p1}, Lo/PowerManager;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->footerItemDecorator:Lo/PowerManager;

    .line 36
    new-instance p1, Lo/QD;

    invoke-direct {p1}, Lo/QD;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->idConverterModel:Lo/QD;

    .line 37
    new-instance p1, Lo/Yf;

    invoke-direct {p1}, Lo/Yf;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->presentationTracking:Lo/Yf;

    .line 39
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Application;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->findMoreEpisodesClickListener:Landroid/view/View$OnClickListener;

    .line 50
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V

    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->videoClickListener:Lo/LongStream;

    .line 63
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V

    check-cast p1, Lo/Stream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->videoLongClickListener:Lo/Stream;

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->setDebugLoggingEnabled(Z)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->setCachingEnabled$NetflixApp_release(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;ILo/amc;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 24
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p3

    const-string p6, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {p3, p6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getScreenLauncher$p(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)Lo/Rr$Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->screenLauncher:Lo/Rr$Activity;

    return-object p0
.end method

.method public static final synthetic access$getTitleId$p(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->titleId:Ljava/lang/String;

    return-object p0
.end method

.method private final addOtherItems(Z)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->footerItemDecorator:Lo/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/PowerManager;->a(Z)V

    if-nez p1, :cond_1

    .line 165
    new-instance p1, Lo/QP;

    invoke-direct {p1}, Lo/QP;-><init>()V

    const-string v0, "empty"

    .line 166
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/QP;->e(Ljava/lang/CharSequence;)Lo/QP;

    move-result-object p1

    .line 167
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bd:I

    invoke-virtual {p1, v0}, Lo/QP;->d(I)Lo/QP;

    move-result-object p1

    .line 169
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nh:I

    invoke-virtual {p1, v0}, Lo/QP;->e(I)Lo/QP;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->okayToAddMoreEpisodesButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->me:I

    invoke-virtual {p1, v0}, Lo/QP;->c(I)Lo/QP;

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->findMoreEpisodesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/QP;->d(Landroid/view/View$OnClickListener;)Lo/QP;

    .line 169
    :cond_0
    check-cast p1, Lo/BiConsumer;

    .line 164
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->add(Lo/BiConsumer;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->addFindMoreButtonToModel()V

    :goto_0
    return-void
.end method

.method private final getIdString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->profileGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addFindMoreButtonToModel()V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->okayToAddMoreEpisodesButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lo/QT;

    invoke-direct {v0}, Lo/QT;-><init>()V

    const-string v1, "findMore"

    .line 196
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/QT;->a(Ljava/lang/CharSequence;)Lo/QT;

    move-result-object v0

    .line 197
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->me:I

    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/QT;->b(Ljava/lang/CharSequence;)Lo/QT;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->findMoreEpisodesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/QT;->c(Landroid/view/View$OnClickListener;)Lo/QT;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 194
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->add(Lo/BiConsumer;)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->footerItemDecorator:Lo/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/PowerManager;->a(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 0

    .line 21
    check-cast p1, Lo/Qk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->buildModels(Lo/Qk;ZLjava/util/Map;)V

    return-void
.end method

.method public buildModels(Lo/Qk;ZLjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string p2, "data"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lo/Qk;->a()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object p2

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "data type must be a SHOW"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 101
    :cond_1
    :goto_0
    new-instance p2, Lo/QD;

    invoke-direct {p2}, Lo/QD;-><init>()V

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 104
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 208
    array-length v3, v2

    const/4 v0, 0x0

    const/high16 v4, -0x80000000

    :goto_1
    if-ge v1, v3, :cond_9

    aget-object v8, v2, v1

    const-string v5, "videoDetails"

    .line 105
    invoke-static {v8, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v6, :cond_7

    .line 106
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->uiList:Lo/Rq;

    invoke-virtual {v8}, Lo/Tf;->bb()Lo/AK;

    move-result-object v6

    const-string v7, "videoDetails.playable"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 108
    invoke-virtual {v8}, Lo/Tf;->bb()Lo/AK;

    move-result-object v0

    invoke-static {v0, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AK;->X()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    invoke-virtual {v4, v0}, Lo/Tf;->e(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 113
    new-instance v5, Lo/RY;

    invoke-direct {v5}, Lo/RY;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "season:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lo/RY;->b(Ljava/lang/CharSequence;)Lo/RY;

    move-result-object v5

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Lo/RY;->a(Ljava/lang/CharSequence;)Lo/RY;

    move-result-object v4

    check-cast v4, Lo/BiConsumer;

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->add(Lo/BiConsumer;)V

    goto :goto_2

    :cond_2
    move v0, v4

    .line 117
    :cond_3
    :goto_2
    invoke-virtual {v8}, Lo/Tf;->bb()Lo/AK;

    move-result-object v4

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "videoDetails.playable.playableId"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v4}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object v4

    invoke-virtual {v4}, Lo/QD;->d()J

    move-result-wide v4

    const/4 v10, 0x0

    if-eqz p3, :cond_4

    .line 120
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/BiConsumer;

    goto :goto_3

    :cond_4
    move-object v4, v10

    :goto_3
    if-eqz v4, :cond_5

    .line 122
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->add(Lo/BiConsumer;)V

    goto :goto_5

    .line 124
    :cond_5
    invoke-virtual {v8}, Lo/Tf;->bb()Lo/AK;

    move-result-object v4

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->profileGuid:Ljava/lang/String;

    invoke-interface {v4}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 127
    sget-object v7, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    .line 128
    iget v5, v5, Lo/Aa;->mBookmarkInSecond:I

    .line 129
    invoke-interface {v4}, Lo/AK;->S()I

    move-result v10

    .line 130
    invoke-interface {v4}, Lo/AK;->ao()Ljava/lang/Integer;

    move-result-object v4

    .line 127
    invoke-virtual {v7, v5, v10, v4}, Lcom/netflix/model/leafs/Bookmark$Companion;->calculateProgress(IILjava/lang/Integer;)I

    move-result v4

    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v10

    .line 134
    :goto_4
    sget-object v5, Lo/QB;->h:Lo/QB$TaskDescription;

    const-string v7, "offlineViewData"

    .line 136
    invoke-static {v9, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->presentationTracking:Lo/Yf;

    move-object v7, v9

    move-object v9, v4

    .line 134
    invoke-virtual/range {v5 .. v10}, Lo/QB$TaskDescription;->d(Ljava/lang/String;Lo/Bi;Lo/Tf;Ljava/lang/Integer;Lo/Yf;)Lo/QD;

    move-result-object v4

    .line 140
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->videoClickListener:Lo/LongStream;

    invoke-virtual {v4, v5}, Lo/QD;->e(Lo/LongStream;)Lo/QD;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->videoLongClickListener:Lo/Stream;

    invoke-virtual {v4, v5}, Lo/QD;->d(Lo/Stream;)Lo/QD;

    move-result-object v4

    check-cast v4, Lo/BiConsumer;

    .line 134
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->add(Lo/BiConsumer;)V

    :goto_5
    const/4 v4, 0x1

    move v4, v0

    const/4 v0, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    .line 147
    :cond_9
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->addOtherItems(Z)V

    .line 148
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->hasVideos:Z

    return-void
.end method

.method public final getHasVideos()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->hasVideos:Z

    return v0
.end method

.method public final getProfileGuid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->profileGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectionChangesListener()Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->selectionChangesListener:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    return-object v0
.end method

.method public final getUiList()Lo/Rq;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->uiList:Lo/Rq;

    return-object v0
.end method

.method protected final okayToAddMoreEpisodesButton()Z
    .locals 4

    .line 183
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->profileGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->profileGuid:Ljava/lang/String;

    .line 185
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->d(Ljava/lang/String;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BC;->getProfileLockPin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->footerItemDecorator:Lo/PowerManager;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    .line 87
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    return-void
.end method

.method public final progressUpdated(Ljava/lang/String;)V
    .locals 2

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->idConverterModel:Lo/QD;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object p1

    invoke-virtual {p1}, Lo/QD;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->invalidateCacheForModel(J)Z

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->requestModelBuild()V

    return-void
.end method

.method public final setHasVideos(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->hasVideos:Z

    return-void
.end method
