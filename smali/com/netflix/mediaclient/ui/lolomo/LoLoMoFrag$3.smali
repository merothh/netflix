.class Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;
.super Ljava/lang/Object;
.source "LoLoMoFrag.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoLoMoFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View tag is null - can\'t notify holder of move to scrap, view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "LoLoMoFrag"

    const-string/jumbo v2, "View moved to scrap heap - notifying holder"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->onViewMovedToScrapHeap()V

    goto :goto_0
.end method
