.class final Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;->d(Lo/Bs;Ljava/lang/String;)Lo/akj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;

.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/model/leafs/SearchCollectionEntity;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->d:Lcom/netflix/model/leafs/SearchCollectionEntity;

    iput p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->e:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->a:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 37
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->a:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;->b:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->access$getOnQuerySuggestionItemClicked$p(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)Lo/alO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->d:Lcom/netflix/model/leafs/SearchCollectionEntity;

    const-string v1, "searchQueryCompletion"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->a:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;->b:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->access$getQuery$p(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lo/alO;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method
