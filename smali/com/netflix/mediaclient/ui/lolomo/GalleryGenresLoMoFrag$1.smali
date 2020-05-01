.class Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GalleryGenresLoMoFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionFooter(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$000(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->access$000(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
