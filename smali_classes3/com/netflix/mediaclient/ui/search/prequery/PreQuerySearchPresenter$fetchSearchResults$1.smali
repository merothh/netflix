.class public final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZO;->e(Ljava/lang/String;J)V
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
.field final synthetic a:Lo/ZO;


# direct methods
.method public constructor <init>(Lo/ZO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ZR;)V
    .locals 10

    .line 82
    instance-of v0, p1, Lo/ZR$ComponentCallbacks;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lo/ZR$ComponentCallbacks;

    invoke-virtual {v1}, Lo/ZR$ComponentCallbacks;->c()Lo/Bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c(Lo/Bs;)V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->k()V

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 88
    :cond_0
    instance-of v0, p1, Lo/ZR$ComponentName;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    if-eqz v0, :cond_3

    .line 90
    check-cast p1, Lo/ZR$ComponentName;

    invoke-virtual {p1}, Lo/ZR$ComponentName;->b()Ljava/util/List;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    const/4 v4, 0x0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 95
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    .line 96
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    .line 97
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    const/4 v8, 0x0

    .line 92
    new-instance v9, Lo/ZU;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/ZU;-><init>(Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V

    invoke-static {v1, v9}, Lo/ZO;->e(Lo/ZO;Lo/ZU;)V

    if-eqz v0, :cond_1

    .line 100
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {v1}, Lo/ZO;->b(Lo/ZO;)Lo/ZU;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 103
    invoke-virtual {v1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {v0}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchUIView_19052;->a(Lo/ZU;)V

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-virtual {p1}, Lo/ZR$ComponentName;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ZO;->e(Ljava/util/List;)V

    .line 106
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lo/ZO;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "no sections"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->k()V

    .line 111
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b()V

    goto :goto_0

    .line 115
    :cond_2
    instance-of p1, p1, Lo/ZR$ActionBar;

    if-eqz p1, :cond_3

    .line 116
    invoke-static {}, Lo/ZO;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error happened"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->k()V

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->a:Lo/ZO;

    invoke-static {p1}, Lo/ZO;->c(Lo/ZO;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter$fetchSearchResults$1;->b(Lo/ZR;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
