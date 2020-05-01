.class public final Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2$deleteSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RB;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/util/List<",
        "+",
        "Lo/QA<",
        "*>;>;",
        "Lo/nS;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/RB;


# direct methods
.method public constructor <init>(Lo/RB;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2$deleteSelected$1;->a:Lo/RB;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Lo/nS;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/QA<",
            "*>;>;",
            "Lo/nS;",
            ")V"
        }
    .end annotation

    const-string v0, "selectedItems"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    check-cast p1, Ljava/lang/Iterable;

    .line 258
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QA;

    .line 89
    instance-of v1, v0, Lo/Qy;

    if-eqz v1, :cond_1

    .line 90
    check-cast v0, Lo/Qy;

    invoke-virtual {v0}, Lo/Qy;->k()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 261
    check-cast v2, Lo/Qy$ActionBar;

    .line 90
    invoke-virtual {v2}, Lo/Qy$ActionBar;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 91
    invoke-interface {p2, v1}, Lo/nS;->d(Ljava/util/List;)V

    .line 92
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/util/List;)V

    goto :goto_2

    .line 93
    :cond_1
    instance-of v1, v0, Lo/QB;

    if-eqz v1, :cond_2

    .line 94
    check-cast v0, Lo/QB;

    invoke-virtual {v0}, Lo/QB;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lo/nS;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lo/QB;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_2
    instance-of v1, v0, Lo/Qu;

    if-eqz v1, :cond_4

    .line 97
    check-cast v0, Lo/Qu;

    invoke-virtual {v0}, Lo/Qu;->l()Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {v1}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_3

    .line 99
    invoke-virtual {v0}, Lo/Qu;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lo/nS;->d(Ljava/util/List;)V

    .line 100
    invoke-virtual {v0}, Lo/Qu;->o()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/util/List;)V

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v1}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_4
    instance-of v1, v0, Lo/Qt;

    if-eqz v1, :cond_5

    .line 107
    check-cast v0, Lo/Qt;

    invoke-virtual {v0}, Lo/Qt;->r()Lo/Tf;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {v0}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lo/nS;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    .line 113
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2$deleteSelected$1;->a:Lo/RB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RB;->a(Z)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/util/List;

    check-cast p2, Lo/nS;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2$deleteSelected$1;->b(Ljava/util/List;Lo/nS;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
