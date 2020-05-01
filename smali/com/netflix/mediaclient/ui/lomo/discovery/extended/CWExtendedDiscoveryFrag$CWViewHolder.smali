.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CWExtendedDiscoveryFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public updateView(I)V
    .locals 7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/branches/FalkorVideo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder$1;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;)V

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZLcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$RemotePlaybackListener;)V

    return-void
.end method
