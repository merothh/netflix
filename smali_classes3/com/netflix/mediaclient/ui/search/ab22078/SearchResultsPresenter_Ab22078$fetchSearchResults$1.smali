.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZK;->a(Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lo/ZU;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/ZK;


# direct methods
.method public constructor <init>(Lo/ZK;Lo/ZU;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    iput p3, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->b:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->d:Ljava/lang/String;

    iput p5, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->a:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/ZR;)V
    .locals 13

    .line 54
    instance-of v0, p1, Lo/ZR$ClipData;

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {v0}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-eqz v0, :cond_13

    .line 57
    move-object v0, p1

    check-cast v0, Lo/ZR$ClipData;

    invoke-virtual {v0}, Lo/ZR$ClipData;->a()Lo/Br;

    move-result-object v1

    invoke-interface {v1}, Lo/Br;->getSearchSections()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lo/ZR$ClipData;->a()Lo/Br;

    move-result-object v0

    invoke-interface {v0}, Lo/Br;->getRequestId()J

    move-result-wide v2

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {v0}, Lo/ZK;->a(Lo/ZK;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->u()V

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->b()V

    goto/16 :goto_7

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {v0}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 68
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v0}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->f()V

    goto/16 :goto_7

    .line 73
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    .line 234
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lo/akz;->c()V

    :cond_2
    check-cast v3, Lo/Bt;

    .line 74
    invoke-interface {v3}, Lo/Bt;->getSearchSectionSummary()Lcom/netflix/model/leafs/SearchSectionSummary;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    .line 75
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-virtual {v6, v7}, Lo/ZK;->e(Z)V

    .line 77
    :cond_3
    invoke-interface {v3}, Lo/Bt;->getSearchSectionSummary()Lcom/netflix/model/leafs/SearchSectionSummary;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 78
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v6}, Lcom/netflix/model/leafs/SearchSectionSummary;->getTotalSections()I

    move-result v8

    sub-int/2addr v8, v7

    iget v9, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->b:I

    add-int/2addr v9, v2

    if-ne v8, v9, :cond_4

    .line 80
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-virtual {v8, v7}, Lo/ZK;->e(Z)V

    .line 83
    :cond_4
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v8}, Lo/ZU;->a()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v6}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_5

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 84
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v8}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_6
    :goto_1
    invoke-interface {v3}, Lo/Bt;->getResultsVideoEntities()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lo/akz;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_7
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_d

    .line 89
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 90
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 91
    invoke-interface {v9}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 92
    iget-object v11, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v11}, Lo/ZU;->d()Ljava/util/Map;

    move-result-object v11

    const-string v12, "videoId"

    invoke-static {v10, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/model/leafs/SearchCollectionEntity;

    goto :goto_3

    .line 95
    :cond_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {v8}, Lcom/netflix/model/leafs/SearchSectionSummary;->getSectionId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 96
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v9}, Lo/ZU;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 97
    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v10, 0x1

    :goto_5
    const-string v11, "sectionId"

    if-eqz v10, :cond_c

    .line 98
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v7}, Lo/ZU;->a()Ljava/util/Map;

    move-result-object v7

    invoke-static {v8, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/util/List;

    aput-object v9, v10, v1

    aput-object v6, v10, v7

    .line 101
    invoke-static {v10}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lo/akz;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 102
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {v7}, Lo/ZU;->a()Ljava/util/Map;

    move-result-object v7

    invoke-static {v8, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_d
    :goto_6
    invoke-interface {v3}, Lo/Bt;->getResultsVideos()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lo/akz;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 108
    :cond_e
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    .line 110
    new-instance v6, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;

    invoke-direct {v6, v2, p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1$$special$$inlined$forEachIndexed$lambda$1;-><init>(ILcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;Ljava/util/List;)V

    check-cast v6, Lo/alN;

    .line 107
    invoke-static {v3, v4, v6}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move v2, v5

    goto/16 :goto_0

    .line 125
    :cond_f
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p1, v4}, Lo/ZU;->b(Ljava/lang/Integer;)V

    .line 126
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-static {p1, v0}, Lo/ZK;->d(Lo/ZK;Lo/ZU;)V

    .line 127
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/ZK;->c(Lo/ZK;Ljava/lang/String;)V

    .line 130
    iget p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->b:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->a:I

    if-eq p1, v0, :cond_10

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    add-int/lit8 p1, p1, 0x6

    invoke-static {v0, p1}, Lo/ZK;->e(Lo/ZK;I)V

    .line 135
    :cond_10
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Lo/ZU;)V

    .line 136
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->u()V

    goto :goto_7

    .line 142
    :cond_11
    instance-of v0, p1, Lo/ZR$ActionBar;

    if-eqz v0, :cond_12

    .line 143
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->o()V

    .line 144
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    goto :goto_7

    .line 146
    :cond_12
    instance-of v0, p1, Lo/ZR$Activity;

    if-eqz v0, :cond_13

    .line 147
    check-cast p1, Lo/ZR$Activity;

    invoke-virtual {p1}, Lo/ZR$Activity;->d()J

    move-result-wide v0

    .line 150
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->c:Lo/ZU;

    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->a(Lo/ZK;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_13

    .line 151
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->f()V

    .line 152
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e:Lo/ZK;

    invoke-static {p1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object p1

    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    :cond_13
    :goto_7
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$fetchSearchResults$1;->e(Lo/ZR;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
