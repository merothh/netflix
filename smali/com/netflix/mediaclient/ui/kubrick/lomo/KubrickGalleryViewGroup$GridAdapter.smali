.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "KubrickGalleryViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final expandedParams:Landroid/support/v7/widget/RecyclerView$LayoutParams;

.field private listViewPos:I

.field private final numVideosPerPage:I

.field private final padding:I

.field private page:I

.field private final params:Landroid/support/v7/widget/RecyclerView$LayoutParams;

.field private trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;I)V
    .locals 6

    const/4 v5, -0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput p2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/util/MathUtils;->divideIntsWithRounding(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KubrickGalleryViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parent width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", child width: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->params:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->expandedParams:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->padding:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->page:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    add-int/lit8 v0, v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->onBindViewHolder(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;->access$100(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->page:I

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->expandedParams:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    :goto_2
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->page:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->listViewPos:I

    add-int v7, v2, p2

    invoke-static {v3, v7}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setId(I)V

    add-int v3, v2, p2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->hide()V

    :goto_3
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->params:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    iget v7, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->page:I

    if-nez v7, :cond_4

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_4
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;
    .locals 5

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->padding:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->padding:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->padding:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;->setPadding(IIII)V

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;)V

    return-object v1
.end method

.method public updateData(Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->videos:Ljava/util/List;

    iput p2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->page:I

    iput p3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->listViewPos:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method
