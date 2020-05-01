.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator$5;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/GK;",
        "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/HY;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/HY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->c:Lo/HY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 10

    const-string v0, "extrasFeedViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trailersFeedItemSummary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-interface {p2}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListId()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p1}, Lo/GK;->z()Lo/Bv;

    move-result-object v3

    .line 387
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->d:Ljava/lang/String;

    .line 388
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->e:Ljava/lang/String;

    .line 391
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->c:Lo/HY;

    invoke-virtual {p1}, Lo/HY;->M()I

    move-result v8

    .line 392
    sget-object v9, Lcom/netflix/cl/model/AppView;->replayButton:Lcom/netflix/cl/model/AppView;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 383
    invoke-static/range {v1 .. v9}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(ZLjava/lang/String;Lo/Bv;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Lo/GK;

    check-cast p2, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/player/PlayerViewHolders$PlayerViewHolder$17$1$3$1;->c(Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
