.class Lcom/netflix/mediaclient/service/NetflixService$8;
.super Landroid/content/BroadcastReceiver;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$8;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$8;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$200(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NrdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NrdController;->setNetworkInterfaces()V

    .line 1685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$8;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$700(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/player/PlayerAgent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->handleConnectivityChange(Landroid/content/Intent;)V

    .line 1686
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$8;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$400(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->handleConnectivityChange(Landroid/content/Intent;)V

    .line 1687
    invoke-static {}, Lcom/netflix/mediaclient/service/net/DnsManager;->getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;->cacheFlush()V

    .line 1688
    return-void
.end method
