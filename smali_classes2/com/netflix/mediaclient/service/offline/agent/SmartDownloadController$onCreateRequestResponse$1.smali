.class public final Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
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
.field final synthetic e:Lo/of;


# direct methods
.method public constructor <init>(Lo/of;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;->e:Lo/of;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;)V"
        }
    .end annotation

    const-string v0, "watchedEpisodes"

    .line 501
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 502
    invoke-static {p1}, Lo/akz;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BZ;

    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1}, Lo/BZ;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateRequestResponse received DL_NOT_ENOUGH_FREE_SPACE, will delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and try again "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartDownloadController"

    .line 505
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;->e:Lo/of;

    invoke-virtual {p1}, Lo/BZ;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/of;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;->e:Lo/of;

    invoke-virtual {p1}, Lo/of;->i()Lo/nS;

    move-result-object p1

    .line 515
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 516
    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->r:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 513
    invoke-interface {p1, v0, v1, v2}, Lo/nS;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 518
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SmartDownloadController just deleted and retried a download in onCreateRequestResponse"

    .line 519
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/SmartDownloadController$onCreateRequestResponse$1;->b(Ljava/util/List;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
