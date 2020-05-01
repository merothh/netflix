.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZJ;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/ZR;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/ZJ;


# direct methods
.method public constructor <init>(Lo/ZJ;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ZR;)V
    .locals 10

    .line 36
    instance-of v0, p1, Lo/ZR$ClipData;

    if-eqz v0, :cond_8

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {v0}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {v0}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    if-eqz v0, :cond_9

    .line 42
    check-cast p1, Lo/ZR$ClipData;

    invoke-virtual {p1}, Lo/ZR$ClipData;->a()Lo/Br;

    move-result-object p1

    invoke-interface {p1}, Lo/Br;->getSearchSections()Ljava/util/List;

    move-result-object p1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    const/4 v4, 0x0

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 51
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    .line 52
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    .line 53
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    const/4 v8, 0x0

    .line 48
    new-instance v9, Lo/ZU;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/ZU;-><init>(Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-static {v1, v9}, Lo/ZJ;->d(Lo/ZJ;Lo/ZU;)V

    .line 57
    check-cast p1, Ljava/lang/Iterable;

    const/4 v1, 0x0

    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lo/akz;->c()V

    :cond_1
    check-cast v2, Lo/Bt;

    .line 58
    invoke-interface {v2}, Lo/Bt;->getSearchSectionSummary()Lcom/netflix/model/leafs/SearchSectionSummary;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 59
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    invoke-interface {v2}, Lo/Bt;->getResultsVideoEntities()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 63
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 64
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 65
    invoke-interface {v5}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 66
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {v7}, Lo/ZJ;->e(Lo/ZJ;)Lo/ZU;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lo/ZU;->d()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "videoId"

    invoke-static {v6, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/SearchCollectionEntity;

    goto :goto_1

    .line 70
    :cond_4
    invoke-interface {v2}, Lo/Bt;->getResultsVideos()Ljava/util/List;

    move-result-object v2

    .line 72
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {v4}, Lo/ZJ;->e(Lo/ZJ;)Lo/ZU;

    move-result-object v4

    .line 74
    new-instance v5, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;

    invoke-direct {v5, v1, p0, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1$$special$$inlined$forEachIndexed$lambda$1;-><init>(ILcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;Ljava/util/ArrayList;)V

    check-cast v5, Lo/alN;

    .line 71
    invoke-static {v4, v2, v5}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    .line 83
    :cond_5
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->e(Lo/ZJ;)Lo/ZU;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 84
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {v0}, Lo/ZJ;->e(Lo/ZJ;)Lo/ZU;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e(Lo/ZU;)V

    .line 88
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->u()V

    goto :goto_3

    .line 45
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f()V

    goto :goto_3

    .line 93
    :cond_8
    instance-of p1, p1, Lo/ZR$ActionBar;

    if-eqz p1, :cond_9

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->u()V

    .line 95
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->d:Lo/ZJ;

    invoke-static {p1}, Lo/ZJ;->a(Lo/ZJ;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->b()V

    :cond_9
    :goto_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionPresenter_Ab22078$fetchSearchEntity$1;->b(Lo/ZR;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
