.class public Lcom/netflix/mediaclient/ui/details/EpisodesFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "EpisodesFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;
.implements Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$MdxMiniPlayerDialog;
.implements Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# static fields
.field protected static final EXTRA_EPISODE_ID:Ljava/lang/String; = "extra_episode_id"

.field private static final EXTRA_EPISODE_INDEX:Ljava/lang/String; = "extra_episode_index"

.field private static final EXTRA_FORCE_SHOW_SEASONS_SELECTOR:Ljava/lang/String; = "extra_show_episodes_selector"

.field private static final EXTRA_SEASON_INDEX:Ljava/lang/String; = "extra_season_index"

.field protected static final EXTRA_SHOW_DETAILS:Ljava/lang/String; = "extra_show_details"

.field protected static final EXTRA_SHOW_ID:Ljava/lang/String; = "extra_show_id"

.field private static final TAG:Ljava/lang/String; = "EpisodesFrag"


# instance fields
.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field private agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

.field private currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

.field protected currSeasonIndex:I

.field protected detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field protected episodeId:Ljava/lang/String;

.field private final episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

.field protected episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field protected handler:Landroid/os/Handler;

.field protected isLoading:Z

.field private isShowDAB:Z

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected requestId:J

.field private restoredEpisodeIndex:I

.field public selectedEpisodeIndex:I

.field protected showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

.field protected showDetailsOnLaunch:Z

.field private showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field protected showId:Ljava/lang/String;

.field protected spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

.field protected spinnerViewGroup:Landroid/view/ViewGroup;

.field private final viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    .line 85
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 86
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    .line 87
    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isShowDAB:Z

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 835
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 873
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$7;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isCoppolaExperience()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setItemChecked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->hasSeasons(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private addOfflineAgentListener(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->removeOfflineAgentListener()V

    .line 298
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    .line 301
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 303
    :cond_0
    return-void
.end method

.method private addSpinnerAsHeader()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 388
    :cond_0
    return-void
.end method

.method protected static applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating frag for show ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string/jumbo v1, "extra_show_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "extra_show_episodes_selector"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    const-string/jumbo v1, "extra_show_details"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 134
    return-object p0
.end method

.method private completeInitIfPossible()V
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - activity is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 535
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - manager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-nez v0, :cond_2

    .line 540
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - details view is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 545
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Can\'t complete init yet - showId is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_3
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "All clear - completing init process..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showLoadingView()V

    .line 552
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchShowDetailsAndSeasons()V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    .line 111
    const/4 v1, 0x1

    const v2, 0x7f0b0089

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 112
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method public static createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    .line 117
    const v1, 0x7f0b010f

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 118
    invoke-static {v0, p0, p1, p2, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method private getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getCheckedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method private hasSeasons(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 948
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateCachedEpisodesIfDAB()V
    .locals 3

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isShowDAB:Z

    if-eqz v0, :cond_0

    .line 970
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Show is \'Day After Broadcast\' (DAB), invalidating episode cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/DataUtil;->invalidateCachedEpisodes(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    .line 973
    :cond_0
    return-void
.end method

.method private isCoppolaExperience()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    return v0
.end method

.method private notifyDataLoadingComplete()V
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 729
    return-void
.end method

.method private registerEpisodeRefreshReceiver()V
    .locals 4

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.BA_EPISODE_REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 830
    return-void
.end method

.method private removeOfflineAgentListener()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->agentListener:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    .line 312
    :cond_0
    return-void
.end method

.method private setItemChecked(I)V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItemChecked(I)V

    .line 738
    :cond_0
    return-void
.end method

.method private setupSeasonsSpinnerListener()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 446
    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .prologue
    .line 613
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing loading view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 617
    :cond_0
    return-void
.end method


# virtual methods
.method protected addSpinnerToDetailsGroup()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 417
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    .line 421
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerLollipop;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerLollipop;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    .line 423
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupSeasonsSpinnerAdapter()V

    .line 424
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupSeasonsSpinnerListener()V

    .line 426
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a021a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800013

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected fetchShowDetailsAndSeasons()V
    .locals 8

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 636
    if-nez v0, :cond_0

    .line 637
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Manager is null - can\'t get show details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 642
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Activity is null - can\'t get show details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 647
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "show ID is null - can\'t get show details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 652
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->requestId:J

    .line 653
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    const-string/jumbo v1, "EpisodesFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fetching data for show ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 657
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInDetails()Z

    move-result v3

    .line 658
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isInTest(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->requestId:J

    invoke-direct {v5, p0, v6, v7}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$FetchDataCallback;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;J)V

    .line 656
    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 167
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 168
    return-void
.end method

.method protected getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getSeasonSpinner()Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f0300ed

    return v0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 393
    return-void
.end method

.method protected initDetailsViewGroupAsHeader()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->initDetailsViewGroup()V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 344
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setDetailViewGroupVisibility(I)V

    .line 345
    return-void

    .line 344
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected isListVisible()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->isLoadingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 491
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onActivityCreated(Landroid/os/Bundle;)V

    .line 494
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->completeInitIfPossible()V

    .line 495
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 953
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 954
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 955
    instance-of v1, v0, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;

    if-eqz v1, :cond_0

    .line 956
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListenerProvider;->getDialogCanceledListener()Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;

    move-result-object v0

    .line 957
    if-eqz v0, :cond_0

    .line 958
    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag$DialogCanceledListener;->onDialogCanceled(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;)V

    .line 961
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->handler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetailsOnLaunch:Z

    .line 145
    if-eqz p1, :cond_0

    .line 146
    const-string/jumbo v0, "extra_season_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 147
    const-string/jumbo v0, "extra_episode_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restored season index as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", episode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->registerEpisodeRefreshReceiver()V

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 320
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "onCreateView called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getlayoutId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 322
    new-instance v1, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 324
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->findViews(Landroid/view/View;)V

    .line 325
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerView()V

    .line 327
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->initDetailsViewGroupAsHeader()V

    .line 328
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupSeasonsSpinnerGroup()V

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 338
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 557
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onDestroy()V

    .line 559
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->invalidateCachedEpisodesIfDAB()V

    .line 569
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 570
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onDestroyView()V

    .line 292
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->removeOfflineAgentListener()V

    .line 293
    return-void
.end method

.method public onEpisodesUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    if-eqz p1, :cond_0

    .line 714
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 716
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->showTutorialForVideoWithScroll(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 525
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->completeInitIfPossible()V

    .line 526
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 499
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onResume()V

    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->notifyDataSetChanged()V

    .line 502
    :cond_0
    return-void
.end method

.method public onRetryRequested()V
    .locals 2

    .prologue
    .line 574
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Retry requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showLoadingView()V

    .line 578
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchShowDetailsAndSeasons()V

    .line 580
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 509
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getCheckedItemPosition()I

    move-result v1

    .line 510
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    const-string/jumbo v2, "EpisodesFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Saving season index as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", episode index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    const-string/jumbo v2, "extra_season_index"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const-string/jumbo v0, "extra_episode_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    :cond_1
    return-void
.end method

.method protected postSetSpinnerSelectionRunnable()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$5;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 792
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 584
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "reload()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->fetchShowDetailsAndSeasons()V

    .line 586
    return-void
.end method

.method public setAsDAB(Z)V
    .locals 0

    .prologue
    .line 976
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isShowDAB:Z

    .line 977
    return-void
.end method

.method public setDetailViewGroupVisibility(I)V
    .locals 3

    .prologue
    .line 594
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailViewGroupVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisibilityAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setVisibility(I)V

    .line 598
    return-void
.end method

.method protected setSeasonIndex()V
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 816
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentSeasonNumber()I

    move-result v1

    .line 815
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->tryGetSeasonIndexBySeasonNumber(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 818
    :cond_0
    return-void
.end method

.method protected setSpinnerSelection()V
    .locals 3

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setSeasonIndex()V

    .line 801
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    if-gez v0, :cond_0

    .line 802
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting current season to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setNonTouchSelection(I)V

    goto :goto_0
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showId:Ljava/lang/String;

    .line 871
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 349
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 363
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 364
    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v5

    aput-object v5, v3, v4

    .line 363
    invoke-static {v1, v2, v3, v0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected setupRecyclerView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 177
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Setting recyclerView to invisible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerViewLayoutManager()V

    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerViewAdapter()V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerViewItemDecoration()V

    goto :goto_0
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 4

    .prologue
    .line 275
    new-instance v1, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v1, v0, p0, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setSingleChoiceMode(Z)V

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addOfflineAgentListener(Landroid/view/ViewGroup;)V

    .line 287
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 316
    return-void
.end method

.method protected setupSeasonsSpinnerAdapter()V
    .locals 3

    .prologue
    .line 476
    new-instance v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$4;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter$IViewCreator;)V

    .line 485
    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setItemBackgroundColor(I)V

    .line 486
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 487
    return-void
.end method

.method protected setupSeasonsSpinnerGroup()V
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 406
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_episodes_selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 408
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addSpinnerAsHeader()V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addSpinnerToDetailsGroup()V

    goto :goto_0
.end method

.method public setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->buildDownloadButtonTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    goto :goto_0
.end method

.method protected showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 605
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing error view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isLoading:Z

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 610
    :cond_0
    return-void
.end method

.method protected showStandardViews()V
    .locals 2

    .prologue
    .line 620
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing standard views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->postSetSpinnerSelectionRunnable()V

    .line 632
    return-void
.end method

.method public switchSeason(IZ)V
    .locals 3

    .prologue
    .line 449
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Season spinner selected position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->invalidateCachedEpisodesIfDAB()V

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 459
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    if-nez v0, :cond_1

    .line 462
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null season details retrieved for position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 468
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateSeasonDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    .line 471
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 472
    return-void
.end method

.method public updateEpisodeSelection()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 662
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    if-eq v0, v6, :cond_0

    .line 663
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 664
    iput v6, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->restoredEpisodeIndex:I

    .line 667
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    if-ne v0, v6, :cond_6

    .line 668
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_6

    .line 669
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->isCoppolaExperience()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 670
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const-string/jumbo v1, "EpisodesFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currEpisodeId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", adapter count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v2

    .line 673
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 674
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v3

    .line 675
    if-nez v3, :cond_4

    .line 673
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_4
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 680
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 681
    const-string/jumbo v3, "EpisodesFrag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "found selected episode, index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_5
    iput v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    goto :goto_2

    .line 690
    :cond_6
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    if-ne v0, v6, :cond_7

    .line 691
    iput v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    .line 694
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 695
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedEpIndex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 699
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->notifyDataLoadingComplete()V

    .line 701
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->selectedEpisodeIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 702
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setItemChecked(I)V

    .line 703
    return-void
.end method

.method protected updateSeasonData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->updateSeasonData(Ljava/util/List;)V

    .line 782
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showStandardViews()V

    .line 783
    return-void
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 741
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating show details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "evidence glyph: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getEvidenceGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", evidence text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getEvidenceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 747
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 748
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    new-instance v2, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag$ShowDetailsStringProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 749
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setCopyright(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v0, :cond_2

    .line 760
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToMyListWrapper(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 761
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 762
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_4

    .line 763
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 766
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v1, :cond_3

    .line 767
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 778
    :cond_2
    :goto_0
    return-void

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 776
    :cond_4
    :goto_1
    const-string/jumbo v0, "EpisodesFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EpisodeFag updateShowDetails episodeDownloadButton= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 773
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->showDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    goto :goto_1
.end method
