.class Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PostPlay.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const-string/jumbo v0, "nf_postplay"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->started:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-void
.end method


# virtual methods
.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_postplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postPlayVideosProvider: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->postponed:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataFetchStatus:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mFetchPostPlayForPlaybackCallback:Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;

    if-eq v0, p0, :cond_3

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v2, "Not current callback"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Error loading post play data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->isDebugToastEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string/jumbo v1, "[DEBUG] loading post play data failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const-string/jumbo v0, "nf_postplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Postplay data retrieved "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayExperienceData()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getInteractivePostplay()Lcom/netflix/model/leafs/InteractivePostplay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$002(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/model/leafs/InteractivePostplay;)Lcom/netflix/model/leafs/InteractivePostplay;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v0, :cond_8

    move v0, v2

    :goto_1
    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getItemsInitialIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlay(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "nextEpisodeSeamless"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$102(Lcom/netflix/mediaclient/ui/player/PostPlay;Z)Z

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$100(Lcom/netflix/mediaclient/ui/player/PostPlay;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v4, "Entering post play next episode seamless experience"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v4}, Lcom/netflix/model/leafs/PostPlayExperience;->getSeamlessCountdownSeconds()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/netflix/model/leafs/PostPlayExperience;->setAutoplaySeconds(I)V

    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/PostPlayItem;->setNextEpisodeSeamless(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setSeamlessStart(I)V

    :cond_7
    :goto_2
    move v4, v3

    move v5, v3

    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayExperience;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nf_postplay: Processing post play response for item video ID: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setExperienceType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1, v4}, Lcom/netflix/model/leafs/PostPlayAction;->setItemIndex(I)V

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v7, v7, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v7}, Lcom/netflix/model/leafs/PostPlayExperience;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/netflix/model/leafs/PostPlayAction;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/netflix/model/leafs/PostPlayAction;->setAncestorTitle(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move v0, v3

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "nf_postplay"

    const-string/jumbo v4, "Entering post play next episode experience"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getAutoplaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setAutoPlaySeconds(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/PostPlayExperience;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "nextEpisode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->setNextEpisodeAutoPlay(Z)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Could not find autoplay item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->hasValidPlayAction(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    add-int/lit8 v5, v5, 0x1

    move v1, v5

    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto/16 :goto_3

    :cond_c
    if-nez v5, :cond_d

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "No playable items in post play response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-boolean v3, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPostPlayDataExist:Z

    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/model/leafs/InteractivePostplay;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlay;)Lcom/netflix/model/leafs/InteractivePostplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/InteractivePostplay;->getData()Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interactive post play data is empty."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->updateOnPostPlayVideosFetched()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1, v5, v0}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayFactory;->getManager(Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;)Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    move-result-object v5

    iput-object v5, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    if-nez v4, :cond_11

    const-string/jumbo v0, "nf_postplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interactive post play manager is null. Unknown interactive post play type from endpoint - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->interactivePostPlayManager:Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;->startPreCachingResources()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-boolean v2, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->isInteractivePostPlay:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getInterrupterCount()I

    move-result v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPostPlayVideoPlayed()I

    move-result v1

    if-lt v0, v1, :cond_12

    move v3, v2

    :cond_12
    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$FetchPostPlayForPlaybackCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlay;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Cancelling interrupter for interactive content until 8 post plays"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_13
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interactive post play data is null."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_14
    move v1, v5

    goto/16 :goto_5
.end method
