.class final Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Bs;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;->b:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Bs;Ljava/lang/String;)Lo/akj;
    .locals 8

    const-string v0, "results"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newQuery"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lo/Bs;->getResultsQueryCompletions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lo/akz;->c()V

    :cond_0
    check-cast v1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 30
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;->b:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    .line 50
    new-instance v4, Lo/aaC;

    invoke-direct {v4}, Lo/aaC;-><init>()V

    .line 54
    move-object v5, v4

    check-cast v5, Lo/aaD;

    const-string v6, "searchQueryCompletion"

    .line 31
    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getEntityId()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lo/aaD;->a(Ljava/lang/CharSequence;)Lo/aaD;

    .line 32
    invoke-interface {v5, v0}, Lo/aaD;->c(I)Lo/aaD;

    .line 33
    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/aaD;->a(Ljava/lang/String;)Lo/aaD;

    .line 34
    invoke-interface {v5, p2}, Lo/aaD;->b(Ljava/lang/String;)Lo/aaD;

    .line 35
    invoke-interface {v1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getIsVideoAvailable()Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "searchQueryCompletion.isVideoAvailable"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5, v6}, Lo/aaD;->d(Z)Lo/aaD;

    .line 36
    new-instance v6, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;

    invoke-direct {v6, v1, v0, p0, p2}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$TaskDescription;-><init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-interface {v5, v6}, Lo/aaD;->b(Landroid/view/View$OnClickListener;)Lo/aaD;

    .line 39
    new-instance v6, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$ActionBar;

    invoke-direct {v6, v1, v0, p0, p2}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1$ActionBar;-><init>(Lcom/netflix/model/leafs/SearchCollectionEntity;ILcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-interface {v5, v6}, Lo/aaD;->d(Landroid/view/View$OnClickListener;)Lo/aaD;

    .line 53
    invoke-virtual {v4, v3}, Lo/aaC;->a(Lo/OfPrimitive;)V

    move v0, v2

    goto :goto_0

    .line 58
    :cond_1
    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/Bs;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController$buildModels$1;->d(Lo/Bs;Ljava/lang/String;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
