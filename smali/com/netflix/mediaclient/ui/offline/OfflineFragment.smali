.class public Lcom/netflix/mediaclient/ui/offline/OfflineFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "OfflineFragment.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final SHOW_EMPTY_IMAGE_THRESHOLD_DP:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "OfflineFragment"


# instance fields
.field private mEmptyState:Landroid/view/View;

.field private mEmptyStateImage:Landroid/view/View;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

.field private mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mWasInitPerformed:Z

.field private selectedProfileId:Ljava/lang/String;

.field private selectedTitleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateCurrentShowIdIfFound()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->initAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->startPlayerActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateEmptyState()V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    return-object v0
.end method

.method public static create()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;-><init>()V

    return-object v0
.end method

.method static getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;I)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-interface {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;
    .locals 5

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private handleInitIfReady()V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mWasInitPerformed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Activity is null - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Manager not available - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_3

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Views are not initialized - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->refreshAdapter()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mWasInitPerformed:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->setupClicks(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 6

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    :cond_1
    const-string/jumbo v1, "OfflineFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing was found among shows for current playableID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; navigating into profiles and videos..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$3;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateEmptyState()V

    return-void

    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$RowClickListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    goto :goto_0
.end method

.method private isKidsProfile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    goto :goto_0
.end method

.method private manageEmptyButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInDPs(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateImage:Landroid/view/View;

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupClicks(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v2, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    const v0, 0x7f0f0182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b010a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->applyFrom(I)V

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08024d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3

    const v1, 0x7f08024e

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTextButton;->setText(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f080257

    goto :goto_1
.end method

.method private setupMainView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyState:Landroid/view/View;

    const v0, 0x7f0f0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyStateImage:Landroid/view/View;

    const v0, 0x7f0f0183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private startPlayerActivity(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflineFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPlayerActivity playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v1, p1, v0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->startOfflinePlayback(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    return-void
.end method

.method private updateCurrentShowIdIfFound()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Video details not in realm, finish the activity : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OfflineFragment"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_6

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isEpisodesLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Since there is some activity underneath (it should be videos one), we are just closing this instance of OfflineActivity to expose \"videos\" level"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v3, v4, :cond_7

    const-string/jumbo v3, "OfflineFragment"

    const-string/jumbo v4, "updateCurrentShowIdIfFound() found showId inside PLAYABLE_ID which should never happen - use TITLE_ID instead"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iput-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedTitleId:Ljava/lang/String;

    iput-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->selectedProfileId:Ljava/lang/String;

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Since there is no activity underneath, we are just transforming the UI of current OfflineActivity to show \"videos\" level"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateEmptyState()V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemCount()I

    move-result v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideosAdapter;->isShowingAdultContent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyState:Landroid/view/View;

    if-le v3, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->manageEmptyButton()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyState:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mEmptyState:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePlayableList()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->areDownloadsPreset()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->updatePlayableList()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updateEmptyState()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areDownloadsPreset()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSelected()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->deleteSelected()V

    :cond_0
    return-void
.end method

.method public generateDeleteDlgString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->generateDeleteDlgString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f030062

    return v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getItemsCheckedCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItemsDiskSpace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getSelectedItemsDiskSpace()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->isSelectionMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEpisodesLevel()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    return v0
.end method

.method public isListenerDestroyed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->manageEmptyButton()V

    return-void
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflineFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateRequestResponse error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Creating frag view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->setupMainView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->handleInitIfReady()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->manageEmptyButton()V

    return-object v0
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 0

    return-void
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OfflineFragment"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->handleInitIfReady()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "OfflineFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOfflinePlayableProgress playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " percentageDownloaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    :goto_1
    if-gt v0, v2, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->containsPlayableId(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->All:Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    return-void
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflineAgentInterface:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mWasInitPerformed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->updatePlayableList()V

    :cond_1
    return-void
.end method

.method public refreshAdapter()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    :cond_0
    return-void
.end method

.method public switchToEditMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->mOfflinePlayableAdapter:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setSelectionMode(Z)V

    :cond_0
    return-void
.end method
