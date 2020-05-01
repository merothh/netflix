.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TurboExtendedDiscoveryFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    .line 62
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    return-void
.end method


# virtual methods
.method public updateView(I)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->collectionData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
