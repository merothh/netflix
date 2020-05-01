.class public final Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;->c(Ljava/lang/String;Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lo/of;


# direct methods
.method public constructor <init>(Lo/of;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;->b:Lo/of;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;->a:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;)V"
        }
    .end annotation

    const-string v0, "watchedEpisodes"

    .line 572
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 573
    invoke-static {p1}, Lo/akz;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BZ;

    .line 574
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SmartDownloadController.onDownloadCompleted received for a downloading episode. Will delete the associated watched episode."

    .line 575
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteWatchedEpisodeByPlayableId, will delete watched episode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartDownloadController"

    .line 576
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;->a:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;->b:Lo/of;

    invoke-virtual {p1}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/of;->a(Ljava/lang/String;)Z

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;->b:Lo/of;

    invoke-virtual {v0}, Lo/of;->j()Lo/BG;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/BG;->c(Lo/BZ;)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$deleteWatchedEpisodeByPlayableId$1;->c(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
