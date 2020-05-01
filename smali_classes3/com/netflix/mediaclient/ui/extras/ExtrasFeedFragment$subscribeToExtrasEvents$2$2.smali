.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;->a(Lo/GY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/zG;",
        "Lo/agg;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

.field final synthetic c:Lo/GY;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;Lo/GY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/zG;Lo/agg;)Z
    .locals 9

    const-string v0, "browseManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;

    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2$Activity;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;Lo/agg;Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v1, Lo/GY$Dialog;

    invoke-virtual {v1}, Lo/GY$Dialog;->b()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 650
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 651
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v2, Lo/GY$Dialog;

    invoke-virtual {v2}, Lo/GY$Dialog;->c()Ljava/lang/String;

    move-result-object v2

    .line 653
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v4, Lo/GY$Dialog;

    invoke-virtual {v4}, Lo/GY$Dialog;->a()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    .line 650
    invoke-virtual {v1, v2, v3, v4, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/AppView;)V

    .line 657
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v1, Lo/GY$Dialog;

    invoke-virtual {v1}, Lo/GY$Dialog;->c()Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-interface {p2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 661
    move-object v7, v0

    check-cast v7, Lo/zU;

    move-object v2, p1

    .line 656
    invoke-interface/range {v2 .. v7}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 667
    sget v1, Lo/GS$Fragment;->c:I

    .line 666
    invoke-static {v1, v2}, Lo/adk;->c(II)V

    .line 670
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 671
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v2, Lo/GY$Dialog;

    invoke-virtual {v2}, Lo/GY$Dialog;->c()Ljava/lang/String;

    move-result-object v2

    .line 673
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v4, Lo/GY$Dialog;

    invoke-virtual {v4}, Lo/GY$Dialog;->a()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    .line 670
    invoke-virtual {v1, v2, v3, v4, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/AppView;)V

    .line 677
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast v1, Lo/GY$Dialog;

    invoke-virtual {v1}, Lo/GY$Dialog;->c()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-interface {p2}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 679
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c:Lo/GY;

    check-cast p2, Lo/GY$Dialog;

    invoke-virtual {p2}, Lo/GY$Dialog;->a()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 682
    move-object v8, v0

    check-cast v8, Lo/zU;

    move-object v2, p1

    .line 676
    invoke-interface/range {v2 .. v8}, Lo/zG;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/zU;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lo/zG;

    check-cast p2, Lo/agg;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$subscribeToExtrasEvents$2$2;->c(Lo/zG;Lo/agg;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
