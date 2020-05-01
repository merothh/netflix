.class final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e(Lo/ZR;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/ZU;",
        "Ljava/util/List<",
        "Lo/Bx;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;


# direct methods
.method constructor <init>(ILcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;Ljava/util/List;)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;->d:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;->e:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;->b:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ZU;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ZU;",
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videos"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;->b:Ljava/util/List;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 115
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/List;

    aput-object v1, v2, v3

    aput-object p2, v2, v4

    .line 118
    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 119
    invoke-virtual {p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lo/ZU;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;->b(Lo/ZU;Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
