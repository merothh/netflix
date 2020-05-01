.class public final Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ra;->b(Lo/Ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/EQ;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Ra;


# direct methods
.method public constructor <init>(Lo/Ra;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->e:Lo/Ra;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/EQ;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->e:Lo/Ra;

    invoke-static {v0}, Lo/Ra;->i(Lo/Ra;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lo/EQ;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lo/akz;->c(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 143
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->e:Lo/Ra;

    invoke-virtual {p1}, Lo/Ra;->x()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->e:Lo/Ra;

    invoke-virtual {v0}, Lo/Ra;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->e:Lo/Ra;

    invoke-virtual {v2}, Lo/Ra;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/Ra;->a(Ljava/lang/String;Ljava/lang/String;)Lo/Sz;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->e:Lo/Ra;

    invoke-virtual {v1}, Lo/Ra;->E()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->setData(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lo/EQ;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;->c(Lo/EQ;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
