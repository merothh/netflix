.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "KubrickCwGalleryViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;",
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
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;I)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 91
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 93
    iput p2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getCwGalleryWidthType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v1

    .line 97
    invoke-static {v1, p2}, Lcom/netflix/mediaclient/util/MathUtils;->divideIntsWithRounding(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 98
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string/jumbo v3, "KubrickCwGalleryViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parent width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", child width: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", widthType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v2, v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->params:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 105
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    mul-int/lit8 v1, v2, 0x2

    invoke-direct {v0, v1, v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->expandedParams:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 109
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->padding:I

    .line 110
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->page:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    add-int/lit8 v0, v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->onBindViewHolder(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    move-object v1, v0

    .line 137
    :goto_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;->access$100(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;

    move-result-object v0

    .line 139
    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->page:I

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    move v5, v4

    .line 140
    :goto_1
    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->expandedParams:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    :goto_2
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->page:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->numVideosPerPage:I

    mul-int/2addr v2, v3

    .line 143
    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->listViewPos:I

    add-int v7, v2, p2

    invoke-static {v3, v7}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;->setId(I)V

    .line 145
    add-int v3, v2, p2

    .line 146
    if-nez v1, :cond_3

    .line 148
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;->hide()V

    .line 153
    :goto_3
    return-void

    .line 136
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v5, v6

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->params:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    goto :goto_2

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    iget v7, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->page:I

    if-nez v7, :cond_4

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_4
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;
    .locals 5

    .prologue
    .line 128
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;-><init>(Landroid/content/Context;)V

    .line 129
    iget v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->padding:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->padding:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->padding:I

    iget v4, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;->setPadding(IIII)V

    .line 131
    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$Holder;-><init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryView;)V

    return-object v1
.end method

.method public updateData(Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->videos:Ljava/util/List;

    .line 114
    iput p2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->page:I

    .line 115
    iput p3, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->listViewPos:I

    .line 116
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickCwGalleryViewGroup$GridAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method
