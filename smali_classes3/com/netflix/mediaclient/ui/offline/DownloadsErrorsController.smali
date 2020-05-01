.class public Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;
.super Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/QF;",
        ">",
        "Lcom/netflix/mediaclient/ui/offline/CachingSelectableController<",
        "TT;",
        "Lo/QA<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;


# instance fields
.field private attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final currentProfile:Lo/BC;

.field private final deleteClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Te;",
            "Lo/SZ$Application;",
            ">;"
        }
    .end annotation
.end field

.field private hasVideos:Z

.field private final renewClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Te;",
            "Lo/SZ$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final uiList:Lo/Rq;

.field private final videoClickListener:Lo/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LongStream<",
            "Lo/Te;",
            "Lo/SZ$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final videoLongClickListener:Lo/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Stream<",
            "Lo/Te;",
            "Lo/SZ$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->Companion:Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;

    return-void
.end method

.method public constructor <init>(Lo/BC;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 2

    const-string v0, "currentProfile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lo/OfPrimitive;->defaultModelBuildingHandler:Landroid/os/Handler;

    const-string v1, "defaultModelBuildingHandler"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-class v1, Lo/Cf;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cf;

    invoke-virtual {v1}, Lo/Cf;->b()Landroid/os/Handler;

    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1, p3}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;-><init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->currentProfile:Lo/BC;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->uiList:Lo/Rq;

    .line 36
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$ActionBar;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;)V

    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->renewClickListener:Lo/LongStream;

    .line 46
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$TaskDescription;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;)V

    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->deleteClickListener:Lo/LongStream;

    .line 56
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$StateListAnimator;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;)V

    check-cast p1, Lo/LongStream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->videoClickListener:Lo/LongStream;

    .line 63
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Application;

    invoke-direct {p1, p0, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Application;-><init>(Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    check-cast p1, Lo/Stream;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->videoLongClickListener:Lo/Stream;

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->setDebugLoggingEnabled(Z)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->setCachingEnabled$NetflixApp_release(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/BC;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 22
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object p2

    const-string p4, "OfflineUiHelper.getOfflinePlayableUiList()"

    invoke-static {p2, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;-><init>(Lo/BC;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V

    return-void
.end method

.method private final addVideoModel(Ljava/util/Map;Lo/QD;Ljava/lang/String;Lo/Tf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/QD;",
            "Ljava/lang/String;",
            "Lo/Tf;",
            ")V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->uiList:Lo/Rq;

    invoke-virtual {p4}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p4}, Lo/Tf;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    const-string v2, "video.downloadState"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "offlineViewData"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v2

    const-string v3, "offlineViewData.watchState"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->shouldShow(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p4}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    const-string v2, "video.playable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video.playable.playableId"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p3, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 133
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object p2

    invoke-virtual {p2}, Lo/QD;->d()J

    move-result-wide v1

    if-eqz p1, :cond_0

    .line 135
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->add(Lo/BiConsumer;)V

    goto :goto_1

    .line 140
    :cond_1
    sget-object p1, Lo/SZ;->g:Lo/SZ$ActionBar;

    invoke-virtual {p1, p3, v0, p4}, Lo/SZ$ActionBar;->a(Ljava/lang/String;Lo/Bi;Lo/Tf;)Lo/Te;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->renewClickListener:Lo/LongStream;

    invoke-virtual {p1, p2}, Lo/Te;->e(Lo/LongStream;)Lo/Te;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->deleteClickListener:Lo/LongStream;

    invoke-virtual {p1, p2}, Lo/Te;->b(Lo/LongStream;)Lo/Te;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->videoClickListener:Lo/LongStream;

    invoke-virtual {p1, p2}, Lo/Te;->c(Lo/LongStream;)Lo/Te;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->videoLongClickListener:Lo/Stream;

    invoke-virtual {p1, p2}, Lo/Te;->e(Lo/Stream;)Lo/Te;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    .line 139
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->add(Lo/BiConsumer;)V

    :goto_1
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->hasVideos:Z

    :cond_2
    return-void
.end method

.method private final shouldShow(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 0

    .line 20
    check-cast p1, Lo/QF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->buildModels(Lo/QF;ZLjava/util/Map;)V

    return-void
.end method

.method public buildModels(Lo/QF;ZLjava/util/Map;)V
    .locals 8
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

    .line 96
    new-instance p2, Lo/QD;

    invoke-direct {p2}, Lo/QD;-><init>()V

    .line 98
    invoke-virtual {p1}, Lo/QF;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 164
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    .line 99
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v1

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->b:Lo/Tf;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v2

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->d:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lo/QJ;->e:[I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const-string v3, "videoData.videoAndProfileData.profileId"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->addVideoModel(Ljava/util/Map;Lo/QD;Ljava/lang/String;Lo/Tf;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->a()[Lo/Tf;

    move-result-object v1

    const-string v2, "videoData.episodes"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, "episodeDetail"

    .line 104
    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v6, v7, :cond_4

    .line 105
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;->b()Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;

    move-result-object v6

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData$TaskDescription;->a:Ljava/lang/String;

    invoke-static {v6, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2, v6, v5}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->addVideoModel(Ljava/util/Map;Lo/QD;Ljava/lang/String;Lo/Tf;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final getAttachedRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getCurrentProfile()Lo/BC;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->currentProfile:Lo/BC;

    return-object v0
.end method

.method public final getHasVideos()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->hasVideos:Z

    return v0
.end method

.method protected getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getUiList()Lo/Rq;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->uiList:Lo/Rq;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final progressUpdated(Ljava/lang/String;Lo/Bi;)V
    .locals 1

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlinePlayableViewData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "offlinePlayableViewData.playableId"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->getIdStringForVideo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance p2, Lo/QD;

    invoke-direct {p2}, Lo/QD;-><init>()V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    move-result-object p1

    invoke-virtual {p1}, Lo/QD;->d()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->invalidateCacheForModel(J)Z

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->requestModelBuild()V

    return-void
.end method

.method public final setAttachedRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->attachedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setHasVideos(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;->hasVideos:Z

    return-void
.end method
