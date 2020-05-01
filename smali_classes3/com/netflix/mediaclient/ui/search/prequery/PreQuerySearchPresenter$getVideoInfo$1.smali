.class public final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZO;->e(Ljava/util/List;)V
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
.field final synthetic c:Lo/ZO;


# direct methods
.method public constructor <init>(Lo/ZO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/ZR;)V
    .locals 6

    .line 35
    instance-of v0, p1, Lo/ZR$ComponentCallbacks;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    if-eqz v0, :cond_2

    .line 41
    check-cast p1, Lo/ZR$ComponentCallbacks;

    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks;->c()Lo/Bs;

    move-result-object v0

    invoke-interface {v0}, Lo/Bs;->getSectionIndex()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks;->c()Lo/Bs;

    move-result-object v1

    invoke-interface {v1}, Lo/Bs;->getResultsVideoEntities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchCollectionEntity;

    .line 46
    invoke-interface {v2}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {v4}, Lo/ZO;->b(Lo/ZO;)Lo/ZU;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lo/ZU;->d()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "videoId"

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/SearchCollectionEntity;

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks;->c()Lo/Bs;

    move-result-object p1

    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {v1}, Lo/ZO;->b(Lo/ZO;)Lo/ZU;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1$2;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1$2;-><init>(I)V

    check-cast v2, Lo/alN;

    .line 52
    invoke-static {v1, p1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->b(Lo/ZO;)Lo/ZU;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->a(Lo/ZU;)V

    .line 64
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->k()V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    check-cast p1, Lo/ZR$ComponentCallbacks;

    invoke-virtual {p1}, Lo/ZR$ComponentCallbacks;->c()Lo/Bs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c(Lo/Bs;)V

    .line 67
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->c:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->k()V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$getVideoInfo$1;->d(Lo/ZR;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
