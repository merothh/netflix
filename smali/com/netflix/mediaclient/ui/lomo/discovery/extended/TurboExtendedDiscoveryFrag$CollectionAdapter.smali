.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TurboExtendedDiscoveryFrag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->collectionData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->collectionData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;->updateView(I)V

    .line 96
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    .line 84
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setAdjustViewBounds(Z)V

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 88
    const v2, 0x3fb70a3d    # 1.43f

    mul-float/2addr v2, v1

    .line 89
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-direct {v3, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$CollectionAdapter;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;Landroid/view/View;)V

    return-object v1
.end method
