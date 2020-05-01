.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "KubrickGalleryViewGroup.java"


# instance fields
.field private final view:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 167
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;->view:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;)Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickGalleryViewGroup$Holder;->view:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickVideoView;

    return-object v0
.end method
