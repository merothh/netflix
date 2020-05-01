.class public Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;
.super Ljava/lang/Object;
.source "OfflineBaseAdapter.java"


# instance fields
.field private estimateSpaceToFree:J

.field private initialToolbarTitle:Ljava/lang/String;

.field private isSelectable:Z

.field private selectedVideoIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable:Z

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    return-wide v0
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable:Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->updateToolbarTitle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->initialToolbarTitle:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    return-void
.end method

.method private setItemChecked(ILjava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getCurrentEstimatedSpace()J

    move-result-wide v2

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    const/4 v1, 0x0

    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v5, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getFirstEpisodeProfileId(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    new-instance v5, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;

    invoke-direct {v5, p0, p2, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    :goto_2
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;)V

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->updateToolbarTitle()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->notifyItemChanged(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getCurrentSpace(I)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v0, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private updateToolbarTitle()V
    .locals 8

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    const-string/jumbo v2, "%d (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    invoke-virtual {v5, v6, v7}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getSpaceString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setToolbarTitle(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setToolbarSmalltitle(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->initialToolbarTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->initialToolbarTitle:Ljava/lang/String;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v0, -0x1000000

    :cond_3
    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setToolbarTitle(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteSelected()V
    .locals 13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;

    iget-object v5, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;->videoId:Ljava/lang/String;

    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;->profileId:Ljava/lang/String;

    invoke-static {v6, v5, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getShowUIData(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    invoke-virtual {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v8

    const-string/jumbo v9, "OfflineBaseAdapter"

    const-string/jumbo v10, "details id=%s videoType=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v9, v10, v11}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v8, v9, :cond_0

    invoke-virtual {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v8

    invoke-interface {v8}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v7

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v3, v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteOfflinePlayable(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->updateToolbarTitle()V

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->access$000(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;)V

    :cond_4
    return-void
.end method

.method public generateDeleteDlgString()Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    sget-object v6, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$VideoType:[I

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getVideoType(I)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v6, v6, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mOfflineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->numEpisodes:I

    add-int/2addr v3, v0

    goto :goto_1

    :cond_0
    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-lez v3, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090003

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f0800e3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v1, v5, v8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    invoke-virtual {v0, v6, v7}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getSpaceString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v4, 0x7f0800e2

    new-array v5, v9, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    :goto_5
    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->estimateSpaceToFree:J

    invoke-virtual {v0, v6, v7}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getSpaceString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2
    move-object v0, v1

    goto :goto_5

    :cond_3
    move-object v1, v5

    goto :goto_3

    :cond_4
    move-object v0, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemsCheckedCount()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable:Z

    return v0
.end method

.method public setSelectable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->isSelectable:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->initialToolbarTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->initialToolbarTitle:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->updateToolbarTitle()V

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setToolbarCancelIcon(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->reset()V

    goto :goto_0
.end method

.method public toggleChecked(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->selectedVideoIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;->setItemChecked(ILjava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
