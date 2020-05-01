.class Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;
.super Ljava/lang/Object;
.source "OfflineBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->getAdapterPosition()I

    move-result v0

    .line 277
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->getPlayableId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->toggleChecked(ILjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData$3;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$OfflineViewHolderData;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter;->setSelectionMode(Z)V

    .line 283
    :goto_0
    return v5

    .line 281
    :cond_0
    const-string/jumbo v1, "OfflineBaseAdapter"

    const-string/jumbo v2, "longClickListener clickedPosition=%d"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
