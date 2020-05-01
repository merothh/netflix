.class public abstract Lcom/netflix/mediaclient/ui/details/DetailsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "DetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;
.implements Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;",
        ">",
        "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
        "Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;",
        "Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;",
        "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$VideoDetailsViewGroupProvider;"
    }
.end annotation


# static fields
.field public static final EXTRA_IS_MOVIE:Ljava/lang/String; = "extra_is_movie"

.field private static final TAG:Ljava/lang/String; = "DetailsFrag"


# instance fields
.field private addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field public detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field private mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected primaryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 219
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method protected static addToMyListWrapper(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;
    .locals 6

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getAddToMyListButton()Landroid/widget/TextView;

    move-result-object v2

    .line 180
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v3, "DetailsFrag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Manager: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string/jumbo v0, "DetailsFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", btnMyList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-nez v0, :cond_2

    .line 187
    const-string/jumbo v0, "SPY-8691 - current profile is null"

    .line 188
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v2, "DetailsFrag"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 199
    :goto_1
    return-object v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", current profile: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getMyListGroup()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getAddToMyListButtonLabel()Landroid/widget/TextView;

    move-result-object v0

    .line 194
    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Z)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v0

    .line 195
    invoke-virtual {p2, p3, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected abstract getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;"
        }
    .end annotation
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f030111

    return v0
.end method

.method protected getPrimaryViewId()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0f038f

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getVideoDetails()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method public getVideoDetailsViewGroup()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method protected abstract getVideoId()Ljava/lang/String;
.end method

.method protected abstract initDetailsViewGroup(Landroid/view/View;)V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string/jumbo v0, "DetailsFrag"

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->initDetailsViewGroup(Landroid/view/View;)V

    .line 49
    new-instance v1, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getPrimaryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 55
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->refreshImagesIfNecessary()V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    instance-of v1, v1, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isInQueue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "DetailsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume() got weird videoDetails class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRetryRequested()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->showLoadingView()V

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->reloadData()V

    .line 206
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 210
    const-string/jumbo v0, "DetailsFrag"

    const-string/jumbo v1, "reload()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->reloadData()V

    .line 212
    return-void
.end method

.method protected abstract reloadData()V
.end method

.method protected showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mVideoDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->castPrefetchAndCacheManifestIfEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getDetailsStringProvider(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 159
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToMyListWrapper(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_2

    .line 163
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 174
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->mShowDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/DetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 133
    :cond_1
    return-void
.end method

.method protected showLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->primaryView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 140
    :cond_0
    return-void
.end method
