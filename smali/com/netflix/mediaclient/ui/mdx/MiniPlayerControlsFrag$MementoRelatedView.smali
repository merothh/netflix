.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;
.super Landroid/widget/RelativeLayout;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">;"
    }
.end annotation


# instance fields
.field playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private adjustDimensions()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 8

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    :cond_0
    const v0, 0x7f0f021d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    if-eqz p4, :cond_2

    move v7, v6

    :goto_0
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->adjustDimensions()V

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;Lcom/netflix/mediaclient/servicemgr/interface_/Video;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$MementoRelatedView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
