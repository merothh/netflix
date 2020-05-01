.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->d(Lo/GY;)V
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

.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;Lo/GY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->b:Lo/GY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 13

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 250
    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    .line 251
    sget-object v3, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 252
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;

    iget-object v5, v4, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    .line 253
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$FragmentManager;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object v7

    .line 255
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->b:Lo/GY;

    check-cast v4, Lo/GY$ActionBar$Application;

    invoke-virtual {v4}, Lo/GY$ActionBar$Application;->b()I

    move-result v9

    .line 256
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->b:Lo/GY;

    check-cast v4, Lo/GY$ActionBar$Application;

    invoke-virtual {v4}, Lo/GY$ActionBar$Application;->e()I

    move-result v10

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v6, p1

    move-object v8, p2

    .line 252
    invoke-static/range {v5 .. v12}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lo/GK;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;IIJ)Lo/afI;

    move-result-object p1

    check-cast p1, Lcom/netflix/cl/model/TrackingInfo;

    .line 250
    invoke-direct {v2, v3, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 249
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Ljava/lang/Long;)V

    .line 261
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    check-cast p2, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$onViewCreated$5$2;->b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
