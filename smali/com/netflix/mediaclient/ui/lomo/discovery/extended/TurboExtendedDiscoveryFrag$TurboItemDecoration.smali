.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboItemDecoration;
.super Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;
.source "TurboExtendedDiscoveryFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag$TurboItemDecoration;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    .line 106
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 107
    return-void
.end method
