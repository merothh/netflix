.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$rebuildPlaylist$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GK;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
        "Ljava/util/List<",
        "+",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        ">;",
        "Lo/Bn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/GK;


# direct methods
.method public constructor <init>(Lo/GK;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$rebuildPlaylist$1;->b:Lo/GK;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)Lo/Bn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;)",
            "Lo/Bn;"
        }
    .end annotation

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$rebuildPlaylist$1;->b:Lo/GK;

    invoke-static {v0, p1, p2}, Lo/GK;->e(Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)Lo/Bn;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedViewModel$rebuildPlaylist$1;->a(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;)Lo/Bn;

    move-result-object p1

    return-object p1
.end method
