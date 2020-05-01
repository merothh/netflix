.class Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewHeaderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 404
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->this$0:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 405
    invoke-static {p3}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->access$000(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 406
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string/jumbo v0, "RecyclerViewHeaderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating new VideoViewHolder - child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    if-eqz p2, :cond_1

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 412
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string/jumbo v0, "RecyclerViewHeaderAdapter"

    const-string/jumbo v1, "VideoViewHolder - onClick"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->this$0:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$VideoViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItemChecked(I)V

    .line 422
    return-void
.end method
