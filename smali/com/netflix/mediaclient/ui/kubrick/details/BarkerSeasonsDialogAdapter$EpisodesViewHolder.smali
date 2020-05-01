.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BarkerSeasonsDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field selectIndicator:Landroid/view/View;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0f01ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->text:Landroid/widget/TextView;

    const v0, 0x7f0f01aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->selectIndicator:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sdf"

    const-string/jumbo v1, "VideoViewHolder - onClick"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter$EpisodesViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;->access$000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerSeasonsDialogAdapter;I)V

    return-void
.end method
