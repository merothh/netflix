.class public Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;
.super Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
.source "EpisodesAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;


# static fields
.field private static final TAG:Ljava/lang/String; = "EpisodesAdapter"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

.field protected final episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

.field protected episodeStartIndex:I

.field protected hasMoreData:Z

.field protected isLoading:Z

.field protected mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

.field protected requestId:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->initToLoadingState()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->onFetchError()V

    return-void
.end method

.method private onFetchError()V
    .locals 2

    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "onFetchError()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showErrorView()V

    return-void
.end method


# virtual methods
.method protected fetchMoreData()V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "Manager is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    if-nez v1, :cond_3

    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "No season details yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "EpisodesAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "curr season number of episodes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    add-int/lit8 v1, v1, 0x28

    add-int/lit8 v5, v1, -0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "EpisodesAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget v9, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    iget v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;JII)V

    move-object v1, v7

    move-object v2, v6

    move-object v3, v8

    move v4, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected initToLoadingState()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "EpisodesAdapter"

    const-string/jumbo v1, "initToLoadingState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoading:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->requestId:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->fetchMoreData()V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoading:Z

    return v0
.end method

.method protected logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/netflix/mediaclient/util/LogUtils;->logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected onPostItemViewBind(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->hasMoreData:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching more episodes data, at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->fetchMoreData()V

    :cond_1
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;->onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->mLoadingStatusCallback:Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;

    goto :goto_0
.end method

.method protected updateEpisodesData(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "EpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding episodes, count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateItems(Ljava/util/Collection;I)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->episodeStartIndex:I

    return-void
.end method

.method public updateSeasonDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "EpisodesAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating season details: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->initToLoadingState()V

    goto :goto_1
.end method
