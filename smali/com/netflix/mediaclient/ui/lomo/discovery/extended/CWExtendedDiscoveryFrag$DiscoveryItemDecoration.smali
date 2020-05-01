.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$DiscoveryItemDecoration;
.super Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;
.source "CWExtendedDiscoveryFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;)V
    .locals 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$DiscoveryItemDecoration;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    .line 134
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 135
    return-void
.end method
