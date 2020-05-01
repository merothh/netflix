.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->d(Lo/GY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/GY;

.field final synthetic d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;Lo/GY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->b:Lo/GY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 293
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;

    iget-object v2, v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->d:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v4

    .line 296
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->b:Lo/GY;

    check-cast v1, Lo/GY$ActionBar$ActionBar;

    invoke-virtual {v1}, Lo/GY$ActionBar$ActionBar;->a()I

    move-result v6

    .line 297
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->b:Lo/GY;

    check-cast v1, Lo/GY$ActionBar$ActionBar;

    invoke-virtual {v1}, Lo/GY$ActionBar$ActionBar;->c()I

    move-result v7

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, p1

    move-object v5, p2

    .line 293
    invoke-static/range {v2 .. v9}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;IIJ)Lo/afI;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 290
    invoke-static {p2, v0, p1, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    .line 302
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    check-cast p2, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$8$1;->e(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
