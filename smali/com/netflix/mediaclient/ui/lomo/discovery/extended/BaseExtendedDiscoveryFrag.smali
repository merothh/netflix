.class public abstract Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "BaseExtendedDiscoveryFrag.java"


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "BaseExtendedDiscoveryFrag"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final TRACKABLE_KEY:Ljava/lang/String; = "trackable"


# instance fields
.field protected adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected backgroundBoxartProvider:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;

.field protected bgImageView:Landroid/widget/ImageView;

.field protected collectionData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation
.end field

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private fragmentWasShown:Z

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected title:Ljava/lang/String;

.field protected titleView:Landroid/widget/TextView;

.field protected trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field protected turboId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method private updateBackgroundIfReady()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->bgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->backgroundBoxartProvider:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->bgImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->backgroundBoxartProvider:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;->getBlurredStoryArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected findViews(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0f0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0f0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0f0143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->bgImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->updateBackgroundIfReady()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->setHasOptionsMenu(Z)V

    const v0, 0x7f0b01b6

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->setStyle(II)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "trackable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->turboId:J

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->title:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "BaseExtendedDiscoveryFrag"

    const-string/jumbo v1, "onCreateView called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f03004d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->findViews(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->setupRecyclerView()V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "trackable"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->turboId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onStart()V

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->fragmentWasShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->fragmentWasShown:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0
.end method

.method public restorePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->turboId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TurboExtendedDiscoveryFrag::update() was called with title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; and turboId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->turboId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BaseExtendedDiscoveryFrag"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->turboId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    goto :goto_0
.end method

.method protected abstract setupLayoutManagerAndAdapter()V
.end method

.method protected setupRecyclerView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->setupLayoutManagerAndAdapter()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V
    .locals 0

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->backgroundBoxartProvider:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->turboId:J

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->updateBackgroundIfReady()V

    return-void
.end method
