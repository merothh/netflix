.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;
.source "BarkerKidsShowDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarkerEpisodesAdapter"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected fetchMoreData()V
    .locals 10

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;

    if-eqz v1, :cond_8

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    move-object v2, v0

    .line 172
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    const-string/jumbo v1, "Manager is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_1
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    if-nez v0, :cond_2

    .line 178
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    const-string/jumbo v1, "No season details yet"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "curr season number of episodes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getNumOfEpisodes()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->requestId:J

    .line 187
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v5, v0, -0x1

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fetching data for show: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getId()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->logEmptySeasonId(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    goto/16 :goto_1

    .line 199
    :cond_5
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->access$400(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v3

    .line 200
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v8

    if-eqz v3, :cond_6

    move-object v7, v0

    :goto_2
    if-eqz v3, :cond_7

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v6, v0

    :goto_3
    iget v9, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->requestId:J

    iget v4, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter$FetchEpisodesCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;JII)V

    move-object v1, v8

    move-object v2, v7

    move-object v3, v6

    move v4, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    :cond_6
    move-object v7, v1

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v6, v0

    goto :goto_3

    :cond_8
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->data:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->hasFooter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected initToLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    const-string/jumbo v1, "initToLoadingState"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->isLoading:Z

    .line 147
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->hasMoreData:Z

    .line 149
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->requestId:J

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->fetchMoreData()V

    .line 156
    return-void
.end method

.method public updateEpisodeStartIndex(I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iput p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    goto :goto_0
.end method

.method protected updateEpisodesData(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->isSeasonUserSelected:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->setItems(Ljava/util/Collection;)V

    .line 131
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;->access$000(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;)V

    .line 137
    return-void

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public updateItems(Ljava/util/Collection;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->updateItems(Ljava/util/Collection;I)V

    .line 206
    const-string/jumbo v0, "BarkerEpisodesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateItems: startIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " episodeStartIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;->episodeStartIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method
