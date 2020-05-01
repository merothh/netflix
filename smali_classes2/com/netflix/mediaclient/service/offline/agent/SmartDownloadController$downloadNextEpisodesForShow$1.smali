.class public final Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/util/List<",
        "+",
        "Lo/BZ;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic d:Lo/of;


# direct methods
.method public constructor <init>(Lo/of;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->d:Lo/of;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->b:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;)V"
        }
    .end annotation

    .line 376
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "SmartDownloadController"

    if-eqz v0, :cond_0

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Empty watchedEpisodes for showId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deleting the WatchedShow to not request empty shows"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->d:Lo/of;

    invoke-virtual {p1}, Lo/of;->j()Lo/BG;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/BG;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->d:Lo/of;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->a:Ljava/lang/String;

    const-string v3, "watchedEpisodes"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1}, Lo/of;->b(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BZ;

    .line 388
    invoke-virtual {v2}, Lo/BZ;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->d:Lo/of;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->b:Ljava/util/List;

    invoke-static {v3, v4, v0}, Lo/of;->a(Lo/of;Ljava/util/List;Ljava/lang/String;)Lo/AS;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/AS;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 395
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is going to enqueue episodeId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 398
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->d:Lo/of;

    .line 401
    invoke-static {v3, v2}, Lo/of;->d(Lo/of;Lo/BZ;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    .line 398
    invoke-virtual {v3, v2, v0, v4}, Lo/of;->e(Lo/BZ;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->d:Lo/of;

    invoke-virtual {p1}, Lo/of;->j()Lo/BG;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/BG;->c(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SmartDownloadController.downloadNextEpisodesForShow nextEpisodeId was null"

    .line 407
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    const-string p1, "nextEpisodeId was null so exiting the loop"

    .line 408
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$downloadNextEpisodesForShow$1;->b(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
