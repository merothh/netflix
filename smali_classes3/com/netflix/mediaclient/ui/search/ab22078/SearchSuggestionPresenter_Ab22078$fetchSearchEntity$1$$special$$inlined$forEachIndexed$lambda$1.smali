.class final Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->b(Lo/ZR;)V
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
        "+",
        "Lo/Bx;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;

.field final synthetic e:I


# direct methods
.method constructor <init>(ILcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;Ljava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->e:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->b:Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->a:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ZU;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ZU;",
            "Ljava/util/List<",
            "+",
            "Lo/Bx;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videos"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sections[index]"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lo/ZU;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/ZU;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;->b(Lo/ZU;Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
